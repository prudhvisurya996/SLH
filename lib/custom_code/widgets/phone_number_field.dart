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

import 'package:intl_phone_field/intl_phone_field.dart';

class PhoneNumberField extends StatefulWidget {
  const PhoneNumberField({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _PhoneNumberFieldState createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
      focusNode: focusNode,
      decoration: InputDecoration(
        hintText: "00000-00000",
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xFF000D3E),
        ),
        border: InputBorder.none,
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFBBD1EA)),
            borderRadius: BorderRadius.circular(12)),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFBBD1EA)),
            borderRadius: BorderRadius.circular(12)),
        errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFD70000)),
            borderRadius: BorderRadius.circular(12)),
        counter: Offstage(),
      ),
      initialCountryCode: 'IN',
      showCountryFlag: false,
      showDropdownIcon: false,
      invalidNumberMessage: "",
      onChanged: (phone) {
        // phone.completeNumber;
        // print(phone.completeNumber);

        FFAppState().update(() {
          // setState(() => FFAppState().phoneNumberWithCountryCode = phone.completeNumber);

          String completePhoneNumber = phone.countryCode + " " + phone.number;
          setState(() =>
              FFAppState().phoneNumberWithCountryCode = completePhoneNumber);
        });
      },
    );
  }
}
