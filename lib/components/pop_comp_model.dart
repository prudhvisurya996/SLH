import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/cancellation_reason/cancellation_reason_widget.dart';
import 'pop_comp_widget.dart' show PopCompWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PopCompModel extends FlutterFlowModel<PopCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Container widget.
  ApiCallResponse? refreshTokenRespCRWeb;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Container widget.
  ApiCallResponse? cancelBookingRequestResponse;
  // Stores action output result for [Backend Call - API (LogOut)] action in Container widget.
  ApiCallResponse? logoutAPIRespCancelBooking;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
