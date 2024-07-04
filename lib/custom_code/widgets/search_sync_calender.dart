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

import 'package:flutter/scheduler.dart';

import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class SearchSyncCalender extends StatefulWidget {
  const SearchSyncCalender({
    Key? key,
    this.width,
    this.height,
    this.isMultiView,
    required this.onChangeAction,
    this.initDates,
  }) : super(key: key);

  final double? width;
  final double? height;
  final bool? isMultiView;
  final Future<dynamic> Function() onChangeAction;
  final List<DateTime>? initDates;

  @override
  _SearchSyncCalenderState createState() => _SearchSyncCalenderState();
}

class _SearchSyncCalenderState extends State<SearchSyncCalender> {
  List<DateTime> _blackoutDates = <DateTime>[];
  List<DateTime> combinedBlackoutDates = [];
  late DateTime _minDate;
  final DateRangePickerController _dateController = DateRangePickerController();

  @override
  void initState() {
    super.initState();
    // Set the minimum date to the current date
    _minDate = DateTime.now();
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
    if (args.value.startDate != null && args.value.endDate != null) {
      widget.onChangeAction();
      FFAppState().update(() {
        FFAppState().searchDates = [args.value.startDate, args.value.endDate];
      });
    }
  }

  List<DateTime> _getPreviousDates(DateTime currentDate) {
    List<DateTime> previousDates = [];
    DateTime currentDateWithoutTime =
        DateTime(currentDate.year, currentDate.month, currentDate.day);
    for (int i = 0; i < currentDateWithoutTime.day; i++) {
      previousDates.add(currentDateWithoutTime.subtract(Duration(days: i + 1)));
    }
    return previousDates;
  }

  void viewChanged(DateRangePickerViewChangedArgs args) {
    combinedBlackoutDates.addAll(_getPreviousDates(DateTime.now()));
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        _blackoutDates = List.from(combinedBlackoutDates);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    print("Blocked Date Are : $_blackoutDates");
    initDataLoad();
    return SfDateRangePicker(
      minDate: _minDate,
      enableMultiView: widget.isMultiView!,
      view: DateRangePickerView.month,
      startRangeSelectionColor: Color(0xff5246ED),
      endRangeSelectionColor: Color(0xff5246ED),
      rangeSelectionColor: Color(0xff5246ED).withOpacity(0.2),
      initialSelectedDate: FFAppState().searchDates.length > 0
          ? FFAppState().searchDates[0]
          : DateTime.now(),
      onSelectionChanged: _onSelectionChanged,
      enablePastDates: false,
      todayHighlightColor: Color(0xff5246ED).withOpacity(0.2),
      rangeTextStyle: TextStyle(fontSize: 14),
      selectionMode: DateRangePickerSelectionMode.range,
      headerStyle: DateRangePickerHeaderStyle(textAlign: TextAlign.center),
      selectionShape: DateRangePickerSelectionShape.circle,
      monthViewSettings: DateRangePickerMonthViewSettings(
          blackoutDates: _blackoutDates,
          viewHeaderStyle: DateRangePickerViewHeaderStyle(
              textStyle: TextStyle(color: Color(0xffBBD1EA)))),
      monthCellStyle: const DateRangePickerMonthCellStyle(
        blackoutDateTextStyle: TextStyle(
          color: Colors.grey,
          decoration: TextDecoration.lineThrough,
          decorationColor: Colors.grey,
          decorationThickness: 2.0,
        ),
      ),
      onViewChanged: viewChanged,
      controller: _dateController,
      // initialSelectedRange:  FFAppState().selectedDateRange[] ,
    );
  }

  initDataLoad() async {
    if (widget.initDates!.length > 0) {
      _dateController.selectedRange =
          PickerDateRange(widget.initDates![0], widget.initDates![1]);
      print(
          "search selected dates values not empty : ${FFAppState().searchDates}");
    } else {
      print("search selected dates values empty : ${FFAppState().searchDates}");
      _dateController.selectedRange = null;
    }
  }
}
