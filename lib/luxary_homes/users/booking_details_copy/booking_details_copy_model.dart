import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/users/payment_confirmed/payment_confirmed_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'booking_details_copy_widget.dart' show BookingDetailsCopyWidget;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BookingDetailsCopyModel
    extends FlutterFlowModel<BookingDetailsCopyWidget> {
  ///  Local state fields for this page.

  List<DateTime> selectedFromToDates = [];
  void addToSelectedFromToDates(DateTime item) => selectedFromToDates.add(item);
  void removeFromSelectedFromToDates(DateTime item) =>
      selectedFromToDates.remove(item);
  void removeAtIndexFromSelectedFromToDates(int index) =>
      selectedFromToDates.removeAt(index);
  void insertAtIndexInSelectedFromToDates(int index, DateTime item) =>
      selectedFromToDates.insert(index, item);
  void updateSelectedFromToDatesAtIndex(
          int index, Function(DateTime) updateFn) =>
      selectedFromToDates[index] = updateFn(selectedFromToDates[index]);

  bool? cancellationPolicy;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for new_top_bar component.
  late NewTopBarModel newTopBarModel;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? payNowRefreshTokenWeb;
  // Stores action output result for [Backend Call - API (Initiate Booking)] action in Button widget.
  ApiCallResponse? initiateBookingRespWeb;
  // Stores action output result for [Custom Action - razorpayPayment] action in Button widget.
  dynamic? rzpRespCopy;
  // Stores action output result for [Backend Call - API (COMPLETE BOOKING)] action in Button widget.
  ApiCallResponse? apiResult6p5Web;
  // Stores action output result for [Backend Call - API (COMPLETE BOOKING)] action in Button widget.
  ApiCallResponse? webPaymentFailureResp;
  // Model for web_copy_write component.
  late WebCopyWriteModel webCopyWriteModel;

  @override
  void initState(BuildContext context) {
    newTopBarModel = createModel(context, () => NewTopBarModel());
    webCopyWriteModel = createModel(context, () => WebCopyWriteModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    newTopBarModel.dispose();
    webCopyWriteModel.dispose();
  }
}
