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

import 'package:flutter_xlider/flutter_xlider.dart';

class RangePriceComponent extends StatefulWidget {
  const RangePriceComponent({
    Key? key,
    this.width,
    this.height,
    this.minAmount,
    this.maxAmount,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double? minAmount;
  final double? maxAmount;

  @override
  _RangePriceComponentState createState() => _RangePriceComponentState();
}

class _RangePriceComponentState extends State<RangePriceComponent> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterSlider(
      step: FlutterSliderStep(step: 100),
      tooltip: FlutterSliderTooltip(
        textStyle: const TextStyle(
          fontSize: 17,
          color: Color(0xff000D3E),
        ),
        boxStyle: FlutterSliderTooltipBox(
          decoration: BoxDecoration(
            color: const Color(0xffBBD1EA),
          ),
        ),
      ),
      rightHandler: FlutterSliderHandler(
        child: Stack(
          children: [
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: const Color(0xffffffff),
              ),
            ),
            Center(
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: const Color(0xff5246ED),
                ),
              ),
            ),
          ],
        ),
      ),
      handler: FlutterSliderHandler(
        child: Stack(
          children: [
            Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: const Color(0xffffffff),
              ),
            ),
            Center(
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: const Color(0xff5246ED),
                ),
              ),
            ),
          ],
        ),
      ),
      values: [FFAppState().priceMin, FFAppState().priceMax],
      trackBar: FlutterSliderTrackBar(
        activeTrackBarHeight: 5,
        inactiveTrackBarHeight: 5,
        activeTrackBar: BoxDecoration(
          color: const Color(0xff5246ED),
        ),
        inactiveTrackBar: BoxDecoration(
          color: const Color(0xffBBD1EA),
        ),
        activeDisabledTrackBarColor: const Color(0xff5246ED),
        inactiveDisabledTrackBarColor: const Color(0xffBBD1EA),
      ),
      handlerHeight: 30,
      handlerWidth: 30,
      rangeSlider: true,
      axis: Axis.horizontal,
      min: widget.minAmount,
      max: widget.maxAmount,
      onDragging: (handlerIndex, lowerValue, upperValue) {
        FFAppState().update(() {
          FFAppState().priceMin = lowerValue;
          FFAppState().priceMax = upperValue;
        });

        setState(() {});
      },
    );
  }
}
