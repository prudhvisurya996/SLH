import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'in_submit_confirm_widget.dart' show InSubmitConfirmWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InSubmitConfirmModel extends FlutterFlowModel<InSubmitConfirmWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenOutput;
  // Stores action output result for [Backend Call - API (Upload Host Property)] action in Button widget.
  ApiCallResponse? apiResult1zo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
