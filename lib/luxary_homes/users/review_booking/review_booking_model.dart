import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/users/booking_cancellation_policy/booking_cancellation_policy_widget.dart';
import '/luxary_homes/users/payment_confirmed/payment_confirmed_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:styled_divider/styled_divider.dart';
import 'review_booking_widget.dart' show ReviewBookingWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReviewBookingModel extends FlutterFlowModel<ReviewBookingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for common_top_bar component.
  late CommonTopBarModel commonTopBarModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? payNowRefreshTokenMobile;
  // Stores action output result for [Backend Call - API (Initiate Booking)] action in Button widget.
  ApiCallResponse? initiateBookingRespMobile;
  // Stores action output result for [Custom Action - razorpayPayment] action in Button widget.
  dynamic? rzpRespCopy;
  // Stores action output result for [Backend Call - API (COMPLETE BOOKING)] action in Button widget.
  ApiCallResponse? apiResult6p5Mobile;
  // Stores action output result for [Backend Call - API (COMPLETE BOOKING)] action in Button widget.
  ApiCallResponse? mobileFailureResp;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenResp;
  // Stores action output result for [Backend Call - API (Initiate Booking)] action in Button widget.
  ApiCallResponse? initiateBookingResp;
  // Stores action output result for [Custom Action - razorpayPayment] action in Button widget.
  dynamic? rzpResp;
  // Stores action output result for [Backend Call - API (COMPLETE BOOKING)] action in Button widget.
  ApiCallResponse? apiResult6p5;
  // Stores action output result for [Backend Call - API (COMPLETE BOOKING)] action in Button widget.
  ApiCallResponse? webFailureRespCopy;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? requestToBookRefreshTokenResp;
  // Stores action output result for [Backend Call - API (LogOut)] action in Button widget.
  ApiCallResponse? logoutAPIRespRequestToBook;
  // Model for web_copy_write component.
  late WebCopyWriteModel webCopyWriteModel;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    webCopyWriteModel = createModel(context, () => WebCopyWriteModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    expandableExpandableController.dispose();
    webCopyWriteModel.dispose();
  }
}
