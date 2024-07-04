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

import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class PriceRange extends StatefulWidget {
  const PriceRange({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _PriceRangeState createState() => _PriceRangeState();
}

class _PriceRangeState extends State<PriceRange> {
  SfRangeValues _values = SfRangeValues(400, 600);
  var list = [
    1,
    2,
    3,
    4,
    5,
    6,
    6,
    5,
    4,
    3,
    2,
    1,
    4,
    5,
    8,
    9,
    2,
    0,
    3,
    9,
    5,
    6,
    8,
    9,
    4,
    3,
    6,
    7,
    5
  ];
  @override
  Widget build(BuildContext context) {
    return SfRangeSelector(
      activeColor: Color(0xff5246ED),
      min: 100,
      max: 999,
      initialValues: _values,
      stepSize: 1,
      interval: 1,
      onChanged: (value) {
        _values = value;

        setState(() {
          FFAppState().startPrice = _values.start;
          FFAppState().endPrice = _values.end;
        });
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
        child: SfSparkBarChart(
          data: list,
          color: Color(0xff5246ED),
        ),
      ),
    );
  }
}
