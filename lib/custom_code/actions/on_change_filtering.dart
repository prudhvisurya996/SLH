// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<String>> onChangeFiltering(
  List<String>? items,
  String? query,
) async {
  // Add your function code here!
  List<String> filteredItems = [];
  if (query!.length != 0) {
    filteredItems = await items!
        .where((item) => item.toLowerCase().startsWith(query.toLowerCase()))
        .toList();
  }

  return filteredItems;
}
