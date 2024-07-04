// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:country_picker/country_picker.dart';

Future<String> pickCountryCode(BuildContext context) async {
  var countryCode;
  showCountryPicker(
    context: context,
    //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
    exclude: <String>['KN', 'MF'],
    favorite: <String>['IN'],
    //Optional. Shows phone code before the country name.
    showPhoneCode: true,
    onSelect: (Country country) {
      print('Select country: ${country.displayName}');
      countryCode = country.displayName;
    },
    // Optional. Sets the theme for the country list picker.
    countryListTheme: CountryListThemeData(
      // Optional. Sets the border radius for the bottomsheet.
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40.0),
        topRight: Radius.circular(40.0),
      ),
      // Optional. Styles the search field.
      inputDecoration: InputDecoration(
        labelText: 'Search',
        hintText: 'Start typing to search',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color(0xFF8C98A8).withOpacity(0.2),
          ),
        ),
      ),
      // Optional. Styles the text in the search field
      searchTextStyle: TextStyle(
        color: Colors.blue,
        fontSize: 18,
      ),
    ),
  );
  return countryCode;
}
