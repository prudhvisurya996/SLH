// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_sign_in/google_sign_in.dart';

Future<bool?> googleSignInAction(String? clientId) async {
  bool isLoggedIn = false;

  final googlesignIn = GoogleSignIn(clientId: clientId!, scopes: ['email']);

  try {
    GoogleSignInAccount? user = await googlesignIn.signIn();

    if (user != null) {
      print('user not null');
      final GoogleSignInAuthentication googleAuth = await user.authentication;
      isLoggedIn = true;
    } else {
      print('user null');
      isLoggedIn = false;
    }
  } catch (e) {
    print('error : $e');
    isLoggedIn = false;
  }

  return isLoggedIn;
}
