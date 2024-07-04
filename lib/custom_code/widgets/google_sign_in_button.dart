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

import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInButton extends StatefulWidget {
  const GoogleSignInButton({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<GoogleSignInButton> createState() => _GoogleSignInButtonState();
}

class _GoogleSignInButtonState extends State<GoogleSignInButton> {
  static final _googlesignIn = GoogleSignIn(
    scopes: ['email'],
    clientId:
        '893782189869-3v5oafna7fqft6eu1du3fodjbah7oe0f.apps.googleusercontent.com',
  );
  Future _SignIn() async {
    try {
      print('internal Action triggered');
      await _googlesignIn.signIn();
      GoogleSignInAccount? user = _googlesignIn.currentUser;
    } catch (e) {
      print('Error Signing in: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text('SignIn With Google'),
        onPressed: () async {
          print('Action triggered');
          await _SignIn();
        },
      ),
    );
  }
}
