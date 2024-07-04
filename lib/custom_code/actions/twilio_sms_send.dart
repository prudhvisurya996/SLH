// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:twilio_flutter/twilio_flutter.dart';

Future<bool> twilioSmsSend(
  String phoneNo,
  String messages,
) async {
  try {
    var twilioFlutter = TwilioFlutter(
        accountSid: 'ACe1aefab79df1c2edf50d56fa8488bfa3',
        authToken: '801e37ef1bf16e8a78e4784220c894b1',
        twilioNumber: '+16592562561');

    await twilioFlutter.sendSMS(toNumber: phoneNo, messageBody: messages);

    return true;
  } catch (e) {
    return false;
  }
}
