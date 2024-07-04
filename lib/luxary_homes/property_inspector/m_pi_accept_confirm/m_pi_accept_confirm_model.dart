import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/property_inspector/pi_property_success/pi_property_success_widget.dart';
import 'm_pi_accept_confirm_widget.dart' show MPiAcceptConfirmWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MPiAcceptConfirmModel extends FlutterFlowModel<MPiAcceptConfirmWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshRespPIdetailView;
  // Stores action output result for [Backend Call - API (PI Status Update)] action in Button widget.
  ApiCallResponse? piStatusUpdateRespMobile;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
