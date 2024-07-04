import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_login_component/phone_login_component_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/host_information/ex_hostdetails/ex_hostdetails_widget.dart';
import '/luxary_homes/property_inspector/pi_property_success/pi_property_success_widget.dart';
import '/luxary_homes/property_inspector/review_reject_pi/review_reject_pi_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'pi_propert_details_widget.dart' show PiPropertDetailsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PiPropertDetailsModel extends FlutterFlowModel<PiPropertDetailsWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? file1;

  String? fileURL;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CommonTopBar component.
  late CommonTopBarModel commonTopBarModel;
  // Model for ExHostdetails component.
  late ExHostdetailsModel exHostdetailsModel;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshRespForPI;
  // Stores action output result for [Backend Call - API (PI Status Update)] action in Button widget.
  ApiCallResponse? piStatusUpdateResp;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshRespForPIStarted;
  // Stores action output result for [Backend Call - API (PI Status Update)] action in Button widget.
  ApiCallResponse? piStatusUpdateRespStarted;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    exHostdetailsModel = createModel(context, () => ExHostdetailsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    exHostdetailsModel.dispose();
  }
}
