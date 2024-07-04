import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_login_component/phone_login_component_widget.dart';
import '/luxary_homes/external_host_journey/property_hosting/submit_confirm/submit_confirm_widget.dart';
import '/luxary_homes/external_host_journey/property_hosting/web/w_document_upload/w_document_upload_widget.dart';
import '/luxary_homes/external_host_journey/property_hosting/web/w_request_submit/w_request_submit_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'w_document_upload_page_widget.dart' show WDocumentUploadPageWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WDocumentUploadPageModel
    extends FlutterFlowModel<WDocumentUploadPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CommonTopBar component.
  late CommonTopBarModel commonTopBarModel;
  // Model for w_document_upload component.
  late WDocumentUploadModel wDocumentUploadModel;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenRespExHostProperty;
  // Stores action output result for [Backend Call - API (Ex Host Property)] action in Button widget.
  ApiCallResponse? exHostPropertyResp;
  // Stores action output result for [Backend Call - API (Ex Host Property Second Half)] action in Button widget.
  ApiCallResponse? exHostSecondAPICall;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    wDocumentUploadModel = createModel(context, () => WDocumentUploadModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    wDocumentUploadModel.dispose();
  }
}
