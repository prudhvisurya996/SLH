import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/users/modify_booking_submit/modify_booking_submit_widget.dart';
import 'modify_booking_confirm_form_widget.dart'
    show ModifyBookingConfirmFormWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ModifyBookingConfirmFormModel
    extends FlutterFlowModel<ModifyBookingConfirmFormWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? modifyBookingRefreshTokenResp;
  // Stores action output result for [Backend Call - API (Modify Booking Details)] action in Button widget.
  ApiCallResponse? modifyBookingApiResp;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
