// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future hosterRouteManagement(
  BuildContext context,
  String? routerName,
) async {
  // Add your function code here!

  String summaryRoute = "apartmentSummary";

  String route = FFAppState().SavedRoute;

  if (route != null && route != "") {
    if (route == summaryRoute) {
      context.pushReplacementNamed('$route');
    } else {
      int currentRouteIndex = FFAppState().ManageRoutesList.indexOf(route);
      print("Debug 22: ${FFAppState().ManageRoutesList[currentRouteIndex]}");
      route = FFAppState().ManageRoutesList[currentRouteIndex];
      context.pushReplacementNamed('$route');
    }
  }
}
