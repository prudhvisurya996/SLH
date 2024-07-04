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

class OnWillPop extends StatefulWidget {
  const OnWillPop({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _OnWillPopState createState() => _OnWillPopState();
}

class _OnWillPopState extends State<OnWillPop> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        print("Back Navigation from flutterflow");
        return false;
      },
      child: Container(),
    );
  }
}
