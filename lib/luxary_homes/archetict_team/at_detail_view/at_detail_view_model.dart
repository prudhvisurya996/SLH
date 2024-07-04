import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/archetict_team/at_property_success/at_property_success_widget.dart';
import '/luxary_homes/archetict_team/at_reject/at_reject_widget.dart';
import '/luxary_homes/archetict_team/m_at_accept_confirm/m_at_accept_confirm_widget.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/external_host_journey/ex_host_details/ex_host_details_widget.dart';
import '/luxary_homes/property_inspector/pi_property_success/pi_property_success_widget.dart';
import '/luxary_homes/property_inspector/pi_reject/pi_reject_widget.dart';
import '/luxary_homes/users/m_image_pop_up/m_image_pop_up_widget.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'at_detail_view_widget.dart' show AtDetailViewWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AtDetailViewModel extends FlutterFlowModel<AtDetailViewWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? file1;

  String? fileURL;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for common_top_bar component.
  late CommonTopBarModel commonTopBarModel;
  // Model for ex_host_details component.
  late ExHostDetailsModel exHostDetailsModel;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshRespForPI;
  // Stores action output result for [Backend Call - API (PI Status Update)] action in Button widget.
  ApiCallResponse? piStatusUpdateResp;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshRespForPIStarted;
  // Stores action output result for [Backend Call - API (PI Status Update)] action in Button widget.
  ApiCallResponse? piStatusUpdateRespStarted;
  // State field(s) for CRTextField widget.
  FocusNode? cRTextFieldFocusNode;
  TextEditingController? cRTextFieldTextController;
  String? Function(BuildContext, String?)? cRTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshRespForATStartedMobile;
  // Stores action output result for [Backend Call - API (AT Status Update)] action in Button widget.
  ApiCallResponse? atStatusUpdateRespStartedMobile;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    exHostDetailsModel = createModel(context, () => ExHostDetailsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    exHostDetailsModel.dispose();
    cRTextFieldFocusNode?.dispose();
    cRTextFieldTextController?.dispose();
  }
}
