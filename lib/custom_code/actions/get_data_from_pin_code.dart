// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';

import 'package:http/http.dart' as http;

Future<List<String>> getDataFromPinCode(String? pinCode) async {
  // Add your function code here!
  // Add your function code here!

  List<String> detailsList = [];
  final url = "http://www.postalpincode.in/api/pincode/$pinCode";

  print('$url');

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);

      if (jsonResponse['Status'] == 'Error') {
        // return "Pin Code is not valid";
      } else {
        // Parse and display details if the PIN code is valid
        final postOfficeArray = jsonResponse['PostOffice'] as List;
        final obj = postOfficeArray[0];

        final district = obj['District'];
        final state = obj['State'];
        final country = obj['Country'];
        final locality = obj['Circle'];

        List<String> newList = [district, state, country, locality];

        // Create a map to return the values
        detailsList.addAll(newList);
        return detailsList;
      }
    }
  } catch (error) {
    print("Error: $error");
    //  return error;
  }
  return [];
}
