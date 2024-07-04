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

// import 'dart:js_interop';

import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:syncfusion_flutter_core/core.dart';
import 'package:flutter/services.dart';

class PriceRangeComponent extends StatefulWidget {
  const PriceRangeComponent({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _PriceRangeComponentState createState() => _PriceRangeComponentState();
}

class _PriceRangeComponentState extends State<PriceRangeComponent> {
  int startPrice = FFAppState().startPrice;
  int endPrice = FFAppState().endPrice;
  int maxValue = 10000000;
  int minValue = 100;
  late SfRangeValues _values = SfRangeValues(startPrice, endPrice);
  var list = [1, 2, 3, 4, 5, 6, 6, 5, 4, 3, 2, 1, 4, 5, 8, 9, 2, 0, 3, 9];
  int? value;
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  late RangeController _rangeController;

  @override
  void initState() {
    // TODO: implement initState

    _controller1.text = startPrice.toString();
    _controller2.text = endPrice.toString();
    _rangeController = RangeController(start: startPrice, end: endPrice);
    super.initState();
  }

  @override
  void dispose() {
    _rangeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 354,
      decoration: BoxDecoration(
        color: Color(0xffBBD1EA),
        boxShadow: [
          BoxShadow(
            blurRadius: 4,
            color: Color(0x4D000000),
            offset: Offset(0, 2),
            spreadRadius: 0,
          )
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12, 16, 12, 16),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Price Range',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff000D3E)),
                      ),
                      Text(
                        '21 of 32 Apartments',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff000D3E)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                      width: double.infinity,
                      height: 101,
                      child: Container(
                        height: 400,
                        child: SfRangeSelector(
                          activeColor: Color(0xff5246ED),
                          min: minValue,
                          max: maxValue,
                          controller: _rangeController,
                          initialValues: _values,
                          stepSize: 1,
                          showLabels: true,
                          onChanged: (value) {
                            FFAppState().update(() {
                              _values = value;
                              print(_values.start);
                              _controller1.text = _values.start.toString();
                              _controller2.text = _values.end.toString();
                              FFAppState().startPrice = _values.start;

                              FFAppState().endPrice = _values.end;
                              print(_controller1.text);
                              print(_controller2.text);

                              print("SF Onchange Value : $value");
                            });

                            setState(() {});
                          },
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                            child: SfSparkBarChart(
                              data: list,
                              color: Color(0xff5246ED),
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 9, 12, 0),
            child: Text(
              'Minimum Price',
              style: TextStyle(fontSize: 14, color: Color(0xff000D3E)),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 0),
            child: Container(
              width: double.infinity,
              height: 44,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                child: TextFormField(
                  controller: _controller1,
                  obscureText: false,
                  decoration: InputDecoration(
                    prefixText: "₹",
                  ),
                  style: TextStyle(fontSize: 12, color: Color(0xff000D3E)),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  onChanged: (textValue1) {
                    if (int.tryParse(textValue1)! >= minValue &&
                        int.tryParse(textValue1)! < _rangeController.end &&
                        int.tryParse(textValue1) != null) {
                      FFAppState().update(() {
                        startPrice = int.parse(textValue1);
                        _rangeController.start = double.parse(textValue1);
                        print(startPrice);
                      });
                      setState(() {});
                    } else {
                      FFAppState().update(() {
                        startPrice = minValue;
                      });
                      setState(() {});
                    }
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 9, 12, 0),
            child: Text(
              'Maximum Price',
              style: TextStyle(fontSize: 14, color: Color(0xff000D3E)),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 0),
            child: Container(
              width: double.infinity,
              height: 44,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                child: TextFormField(
                  controller: _controller2,
                  obscureText: false,
                  decoration: InputDecoration(
                    prefixText: "₹",
                  ),
                  style: TextStyle(fontSize: 12, color: Color(0xff000D3E)),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  onChanged: (textValue2) {
                    if (int.tryParse(textValue2)! <= maxValue &&
                        int.tryParse(textValue2)! > _rangeController.start &&
                        int.tryParse(textValue2) != null) {
                      FFAppState().update(() {
                        endPrice = int.parse(textValue2);
                        _rangeController.end = double.parse(textValue2);
                        print(startPrice);
                      });
                      setState(() {});
                    } else {
                      FFAppState().update(() {
                        startPrice = (minValue / 2).round();
                      });
                      setState(() {});
                    }
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
