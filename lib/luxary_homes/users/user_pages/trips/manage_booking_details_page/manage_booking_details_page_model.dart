import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_login_component/phone_login_component_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import '/luxary_homes/users/user_pages/reviews_ratings/feed_back_comp/feed_back_comp_widget.dart';
import '/luxary_homes/users/user_pages/trips/cancellation_trips/reason_for_cancellation_comp/reason_for_cancellation_comp_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'manage_booking_details_page_widget.dart'
    show ManageBookingDetailsPageWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ManageBookingDetailsPageModel
    extends FlutterFlowModel<ManageBookingDetailsPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CommonTopBar component.
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
  // Model for WebBottomCopyWrite component.
  late WebBottomCopyWriteModel webBottomCopyWriteModel;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenRespCRMobile;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenRespFeedbackMobile;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    webBottomCopyWriteModel =
        createModel(context, () => WebBottomCopyWriteModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    webBottomCopyWriteModel.dispose();
  }
}
