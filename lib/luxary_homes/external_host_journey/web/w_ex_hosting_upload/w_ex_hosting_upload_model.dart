import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/external_host_journey/ex_upload_submit/ex_upload_submit_widget.dart';
import '/luxary_homes/external_host_journey/web/w_ex_hosting_upload_form/w_ex_hosting_upload_form_widget.dart';
import '/luxary_homes/external_host_journey/web/w_ex_submit/w_ex_submit_widget.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'w_ex_hosting_upload_widget.dart' show WExHostingUploadWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WExHostingUploadModel extends FlutterFlowModel<WExHostingUploadWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for common_top_bar component.
  late CommonTopBarModel commonTopBarModel;
  // Model for w_ex_hosting_upload_form component.
  late WExHostingUploadFormModel wExHostingUploadFormModel;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenRespExHostProperty;
  // Stores action output result for [Backend Call - API (Ex Host Property)] action in Button widget.
  ApiCallResponse? exHostPropertyResp;
  // Stores action output result for [Backend Call - API (Ex Host Property Second Half)] action in Button widget.
  ApiCallResponse? exHostSecondAPICall;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    wExHostingUploadFormModel =
        createModel(context, () => WExHostingUploadFormModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    wExHostingUploadFormModel.dispose();
  }
}
