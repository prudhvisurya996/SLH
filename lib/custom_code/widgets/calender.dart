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

import 'package:provider/provider.dart';

import 'package:calendar_date_picker2/calendar_date_picker2.dart';

class Calender extends StatefulWidget {
  const Calender({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _CalenderState createState() => _CalenderState();
}

class _CalenderState extends State<Calender> {
  List<DateTime?> _rangeDatePickerValueWithDefaultValue = [];

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      height: 400,
      child: CalendarDatePicker2WithActionButtons(
        config: CalendarDatePicker2WithActionButtonsConfig(
          calendarType: CalendarDatePicker2Type.range,
          selectedRangeHighlightColor: Color(0xff5246ED).withOpacity(0.2),
          selectedDayHighlightColor: Color(0xff5246ED),
          centerAlignModePicker: true,
          customModePickerIcon: SizedBox(),
          lastMonthIcon: Container(
            height: 72,
            width: 72,
            decoration: BoxDecoration(
              //color: Colors.orange,
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xffBBD1EA)),
            ),
            child: Icon(Icons.arrow_back_ios_outlined,
                color: Color(0xff5246ED), size: 14.0),
          ),
          nextMonthIcon: Container(
            height: 72,
            width: 72,
            decoration: BoxDecoration(
              //color: Colors.orange,
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xffBBD1EA)),
            ),
            child: Icon(
              Icons.arrow_forward_ios_outlined,
              color: Color(0xff5246ED),
              size: 14.0,
            ),
          ),
          weekdayLabelTextStyle: TextStyle(
            fontSize: 18,
            color: Color(0xffBBD1EA),
          ),
          dayTextStyle: TextStyle(
            fontSize: 14,
          ),
          cancelButton: Container(),
          // okButton: Container(),
        ),
        value: _rangeDatePickerValueWithDefaultValue,
        onValueChanged: (dates) => setState(() {
          _rangeDatePickerValueWithDefaultValue = dates;
          print(_rangeDatePickerValueWithDefaultValue);
          List<DateTime> nonNullableDates =
              _rangeDatePickerValueWithDefaultValue
                  .where((date) => date != null)
                  .cast<DateTime>()
                  .toList();
          Duration difference =
              nonNullableDates[1].difference(nonNullableDates[0]);
          int days = difference.inDays;
          print('Difference: ${days.toString()}');
          FFAppState().update(() {
            FFAppState().selectedDateRange = nonNullableDates;
            FFAppState().nightsForStay = days;
          });
        }),
      ),
    );
  }
}
