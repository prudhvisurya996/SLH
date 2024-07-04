// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future hostBackRoute(
  BuildContext context,
  String? currentRoute,
) async {
  // Add your function code here!
  String route = currentRoute!;

  if (route != null && route != "") {
    int currentRouteIndex = FFAppState().ManageRoutesList.indexOf(route);
    if (currentRouteIndex > 0) {
      context.pushReplacementNamed(
          FFAppState().ManageRoutesList[currentRouteIndex - 1]);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'No more pages are there',
            style: TextStyle(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
          ),
          duration: Duration(milliseconds: 2000),
          backgroundColor: FlutterFlowTheme.of(context).secondary,
        ),
      );
    }
  }
}
