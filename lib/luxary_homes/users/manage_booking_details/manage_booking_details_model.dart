import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/users/cancellation_reason/cancellation_reason_widget.dart';
import '/luxary_homes/users/feedback/feedback_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'manage_booking_details_widget.dart' show ManageBookingDetailsWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ManageBookingDetailsModel
    extends FlutterFlowModel<ManageBookingDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for new_top_bar component.
  late NewTopBarModel newTopBarModel;
  // Model for common_top_bar component.
  late CommonTopBarModel commonTopBarModel;
  // Stores action output result for [Backend Call - API (Property Details)] action in Text widget.
  ApiCallResponse? propertyDetailsAPIRespo;
  // Stores action output result for [Backend Call - API (Property Details)] action in Text widget.
  ApiCallResponse? propertyDetailsAPIResponseWeb;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenRespCRWeb;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? cancelBookingRequestResponse;
  // Stores action output result for [Backend Call - API (LogOut)] action in Button widget.
  ApiCallResponse? logoutAPIRespCancelBooking;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenRespFeedbackWeb;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? shareReviewRequestResponse;
  // Stores action output result for [Backend Call - API (LogOut)] action in Button widget.
  ApiCallResponse? logoutAPIRespShareReview;
  // Model for web_copy_write component.
  late WebCopyWriteModel webCopyWriteModel;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenRespCRMobile;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenRespFeedbackMobile;

  @override
  void initState(BuildContext context) {
    newTopBarModel = createModel(context, () => NewTopBarModel());
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    webCopyWriteModel = createModel(context, () => WebCopyWriteModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    newTopBarModel.dispose();
    commonTopBarModel.dispose();
    webCopyWriteModel.dispose();
  }
}
