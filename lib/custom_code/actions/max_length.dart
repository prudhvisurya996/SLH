// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<int> maxLength(String? value) async {
  // Add your function code here!
  // bool maximumLength = false;
  // if (value!.length == 10) {
  //   maximumLength = true;
  // } else {
  //   maximumLength = false;
  // }
  // print(value.length);
  // return maximumLength;

  int maximumLength = 0;
  if (value!.length != 0) {
    maximumLength = value.length;
  }
  return maximumLength;
}
