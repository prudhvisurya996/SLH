// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

import 'package:flutter/scheduler.dart';

import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class SyncDatePicker extends StatefulWidget {
  const SyncDatePicker({
    Key? key,
    this.width,
    this.height,
    this.isMultiView,
    this.initialSelectedDates,
    this.onChangeAction,
    this.propBookedDates,
    this.isModifyAllowed,
    this.availableFromDate,
    this.partiallyBookedDates,
  }) : super(key: key);

  final double? width;
  final double? height;
  final bool? isMultiView;
  final List<DateTime>? initialSelectedDates;
  final Future<dynamic> Function()? onChangeAction;
  final String? propBookedDates;
  final bool? isModifyAllowed;
  final String? partiallyBookedDates;
  final DateTime? availableFromDate;

  @override
  _SyncDatePickerState createState() => _SyncDatePickerState();
}

class _SyncDatePickerState extends State<SyncDatePicker> {
  List<DateTime> _blackoutDates = <DateTime>[];
  List<DateTime> combinedBlackoutDates = [];
  DateTime? _minDate;
  final DateRangePickerController _dateController = DateRangePickerController();
  DateTime? availableFrom;
  List<DateTime> bookedDates = [];
  List<DateTime> partialbookedDates = [];
  List<DateTime> combinedpartialbookedDates = [];
  List<DateTime> _partialblackoutDates = <DateTime>[];

  @override
  void initState() {
    super.initState();
    // Set the minimum date to the current date

    initDataLoad();
  }

  List<DateTime> getRangeOfSelectedDates(DateTime startDate, DateTime endDate) {
    List<DateTime> datesInRange = [];

    // Iterate through each day from start to end date
    for (DateTime date = startDate;
        date.isBefore(endDate) || date.isAtSameMomentAs(endDate);
        date = date.add(const Duration(days: 1))) {
      datesInRange.add(date);
    }
    print('Dates in Range: $datesInRange');

    return datesInRange;
  }

  /// The method for [DateRangePickerSelectionChanged] callback, which will be
  /// called whenever a selection changed on the date picker widget.
  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
    if (args.value.startDate != null && args.value.endDate == null) {
      Future.delayed(const Duration(seconds: 2));
      toastAction(context, 'information', Color(0xffF9CF58),
          'Please Select the Checkout Date as well!');
    } else if (args.value.startDate != null && args.value.endDate != null) {
      Duration difference = args.value.endDate.difference(args.value.startDate);
      int days = difference.inDays;

      DateTime onTapStartDate = args.value.startDate;
      DateTime onTapEndDate = args.value.endDate;
      FFAppState().update(() {
        FFAppState().selectedDateRange = [
          args.value.startDate,
          args.value.endDate
        ];
        widget.onChangeAction!();
        FFAppState().nightsForStay = days;
      });

      //===============================================

      List<DateTime> onTapSelectedDates =
          getRangeOfSelectedDates(onTapStartDate, onTapEndDate);
      List<DateTime> partialBookedDateList = [];
      List<int> partialBookedRooms = [];

      print('onTapSelectedDates: $onTapSelectedDates');
      if (widget.partiallyBookedDates != null &&
          widget.partiallyBookedDates!.isNotEmpty &&
          widget.partiallyBookedDates!.length > 3) {
        var decode = json.decode(widget.partiallyBookedDates!);
        print("Booked DatesAndRooms : $decode");
        List<String> partialBookedDateRangesBy$ =
            decode.whereType<String>().toList();

        // Check for partial booked dates

        // for (DateTime date in selectedDateRange) {
        for (String rangeStr in partialBookedDateRangesBy$) {
          List<String> parts = rangeStr.split('\$');
          String datePart = parts[0];
          String delimiter = parts[1];

          if (datePart.contains(':')) {
            List<String> dateParts = datePart.split(':');
            DateTime partialStartDate = DateTime.parse(dateParts[0]);
            DateTime partialEndDate = DateTime.parse(dateParts[1]);
            for (DateTime partialDate = partialStartDate;
                partialDate.isBefore(partialEndDate.add(Duration(days: 1)));
                partialDate = partialDate.add(Duration(days: 1))) {
              partialBookedDateList.add(partialDate);
            }
          } else {
            partialBookedDateList.add(DateTime.parse(datePart));
          }

          // If selected date range contains any partial booked date

          if (partialBookedDateList
              .any((partialDate) => onTapSelectedDates.contains(partialDate))) {
            partialBookedRooms.add(int.parse(delimiter));

            print("PartialBookedRooms: $partialBookedRooms");
          }

          // Update the app state with the partial booked delimiters
          if (partialBookedRooms.isNotEmpty) {
            FFAppState().update(() {
              FFAppState().propertyBookingDetails.noOfBedrooms =
                  FFAppState().BookingDetailsPage.partiallyAvailableRooms =
                      partialBookedRooms.reduce((a, b) => a < b ? a : b);
            });
          } else {
            FFAppState().update(() {
              FFAppState().propertyBookingDetails.noOfBedrooms =
                  FFAppState().BookingDetailsPage.bedRoomCount;
            });
          }
        }
      }
      //==================================================
    }
  }

  void viewChanged(DateRangePickerViewChangedArgs args) {
    combinedBlackoutDates.addAll(bookedDates);

    combinedpartialbookedDates.addAll(partialbookedDates);

    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _blackoutDates = List.from(combinedBlackoutDates);
      _partialblackoutDates = List.from(combinedpartialbookedDates);

      print("view blockedData :${_blackoutDates}");
      print("view partialData :${_partialblackoutDates}");
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    // widget.rebuildValue! > 0 ? setState(() {}) : null;
    // widget.rebuildValue! > 0
    //     ? print("called setstate")
    //     : print("called null value");
    initDataLoad();
    return SfDateRangePicker(
      minDate: _minDate,
      controller: _dateController,
      enableMultiView: widget.isMultiView!,
      view: DateRangePickerView.month,
      startRangeSelectionColor: Color(0xff5246ED),
      endRangeSelectionColor: Color(0xff5246ED),
      rangeSelectionColor: Color(0xff5246ED).withOpacity(0.2),
      initialSelectedDate: FFAppState().selectedDateRange.length > 0
          ? FFAppState().selectedDateRange[0]
          : DateTime.now(),
      onSelectionChanged: _onSelectionChanged,
      enablePastDates: false,
      todayHighlightColor: Color(0xff5246ED).withOpacity(0.2),
      rangeTextStyle: TextStyle(fontSize: 14),
      selectionMode: DateRangePickerSelectionMode.range,
      headerStyle: DateRangePickerHeaderStyle(textAlign: TextAlign.center),
      selectionShape: DateRangePickerSelectionShape.circle,
      initialSelectedRange: _dateController.selectedRange,
      monthViewSettings: DateRangePickerMonthViewSettings(
          blackoutDates: _blackoutDates,
          specialDates: _partialblackoutDates,
          viewHeaderStyle: DateRangePickerViewHeaderStyle(
              textStyle: TextStyle(color: Color(0xffBBD1EA)))),
      monthCellStyle: const DateRangePickerMonthCellStyle(
        blackoutDateTextStyle: TextStyle(
          color: Colors.red,
          decoration: TextDecoration.lineThrough,
          decorationColor: Colors.red,
          decorationThickness: 4.0,
        ),
        specialDatesTextStyle:
            // TextStyle(color: Color.fromARGB(255, 235, 223, 110)),
            TextStyle(color: Colors.purple),
      ),
      onViewChanged: viewChanged,
    );
  }

  initDataLoad() async {
    // _minDate = widget.availableFromDate!;
    _minDate = widget.availableFromDate!.isAfter(DateTime.now())
        ? widget.availableFromDate!
        : DateTime.now();
    blockedDates();
    partiallyBookedDates();
    print("Avaiable Data : ${_minDate}");

    if (widget.initialSelectedDates!.length > 0) {
      print('Selected Dates : ${FFAppState().selectedDateRange}');

      setState(() {
        _dateController.selectedRange = PickerDateRange(
            widget.initialSelectedDates![0], widget.initialSelectedDates![1]);
      });
    } else {
      print(
          'Selected Dates else case Intiail: ${FFAppState().selectedDateRange}');

      setState(() {
        _dateController.selectedRange = null;
      });
    }
    // setState(() {});
  }

  void blockedDates() {
    String bkedDates = widget.propBookedDates!;
    if (bkedDates != "" && bkedDates != null && bkedDates.length > 3) {
      var decode = json.decode(widget.propBookedDates!);
      // print("Booked Dates : $decode");
      List<String> listData = decode.whereType<String>().toList();

      List<DateTime> blockDates = [];

      for (int index = 0; index < listData.length; index++) {
        if (listData[index].contains(':')) {
          List datesBatch = listData[index].split(':');

          List<DateTime> dates = [];
          DateTime fromDate = DateTime.parse(datesBatch[0]);
          DateTime toDate = DateTime.parse(datesBatch[1]);

          for (DateTime date = fromDate;
              date.isBefore(toDate.add(Duration(days: 1)));
              date = date.add(Duration(days: 1))) {
            dates.add(date);
          }

          //   dates = generateDatesBetween(fromDate, toDate);
          blockDates.addAll(dates);
        } else {
          String datesBatch1 = listData[index];
          DateTime fromDate = DateTime.parse(datesBatch1);
          blockDates.add(fromDate);
        }
      }
      setState(() {
        bookedDates = blockDates;
      });
      print("All Blocked Dates : $blockDates");
    }
  }

  List<DateTime> generateDatesBetween(DateTime f, DateTime t) {
    List<DateTime> dates = [];

    // Add one day to the fromDate in each iteration until it reaches the toDate
    for (DateTime date = f;
        !date.isAfter(t);
        date = date.add(Duration(days: 1))) {
      print(date);
      dates.add(date);
    }

    return dates;
  }

  void partiallyBookedDates() {
    String? partiallyBkedDates = widget.partiallyBookedDates!;

    List<DateTime> partialDates = [];

    if (partiallyBkedDates != null &&
        partiallyBkedDates.isNotEmpty &&
        partiallyBkedDates.length > 3) {
      var decode = json.decode(partiallyBkedDates);
      print("Booked DatesAndRooms : $decode");
      List<String> separatedDateRanges = decode.whereType<String>().toList();
      // Process each date range
      for (String rangeStr in separatedDateRanges) {
        List<String> parts = rangeStr.split('\$');
        String datePart = parts[0];
        // String delimiter = parts[1];

        // Check if it is a single date or a date range
        if (datePart.contains(':')) {
          // It's a date range
          List<String> dateParts = datePart.split(':');
          DateTime startDate = DateTime.parse(dateParts[0]);

          DateTime endDate = DateTime.parse(dateParts[1]);

          // Generate all dates in the range
          for (DateTime date = startDate;
              date.isBefore(endDate.add(Duration(days: 1)));
              date = date.add(Duration(days: 1))) {
            partialDates.add(date);
          }
        } else {
          // It's a single date
          partialDates.add(DateTime.parse(datePart));
        }
      }
    }

    setState(() {
      partialbookedDates = partialDates;
    });
    print('Partially Booked dates : $partialbookedDates');
  }
}
