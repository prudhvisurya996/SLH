// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future hostForwardRoute(
  BuildContext context,
  String? currentRoute,
) async {
  // Add your function code here!
  String route = currentRoute!;

  int currentRouteIndex = FFAppState().ManageRoutesList.indexOf(route);

  print(
      "Debug check route index : $currentRouteIndex ${FFAppState().ManageRoutesList.length}");

  if (currentRouteIndex <= FFAppState().ManageRoutesList.length - 1) {
    print(
        "Debug Before check route index : $currentRouteIndex ${FFAppState().ManageRoutesList[currentRouteIndex + 1]}");
    context.pushReplacementNamed(
        FFAppState().ManageRoutesList[currentRouteIndex + 1]);
    print(
        "Debug After check route index : $currentRouteIndex ${FFAppState().ManageRoutesList[currentRouteIndex + 1]}");
  }
}
