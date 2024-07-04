import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/users/payment_confirmed/payment_confirmed_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'new_review_card_widget.dart' show NewReviewCardWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewReviewCardModel extends FlutterFlowModel<NewReviewCardWidget> {
  ///  Local state fields for this component.

  int? roomsCount;

  bool? isEntirePropertyBooking;

  int? guestCount;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenBookingResp;
  // Stores action output result for [Backend Call - API (Initiate Booking)] action in Button widget.
  ApiCallResponse? initiateBookingResp;
  // Stores action output result for [Custom Action - razorpayPayment] action in Button widget.
  dynamic? rzpResp;
  // Stores action output result for [Backend Call - API (COMPLETE BOOKING)] action in Button widget.
  ApiCallResponse? completeBookingResp;
  // Stores action output result for [Backend Call - API (COMPLETE BOOKING)] action in Button widget.
  ApiCallResponse? paymentFailureResp;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? requestToBookRefreshTokenResp;
  // Stores action output result for [Backend Call - API (LogOut)] action in Button widget.
  ApiCallResponse? logoutAPIRespRequestToBook;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
