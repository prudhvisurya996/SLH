import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/admin/approval_reason/reason_for_approval/reason_for_approval_widget.dart';
import '/luxary_homes/admin/reason_for_reject/reason_for_reject_comp/reason_for_reject_comp_widget.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/host_information/host_information/host_information_widget.dart';
import '/luxary_homes/users/user_components/property_components/house_rule_card/house_rule_card_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'pi_propert_details_widget.dart' show PiPropertDetailsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class PiPropertDetailsModel extends FlutterFlowModel<PiPropertDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CommonTopBar component.
  late CommonTopBarModel commonTopBarModel;
  // Model for HouseRuleCard component.
  late HouseRuleCardModel houseRuleCardModel1;
  // Model for HouseRuleCard component.
  late HouseRuleCardModel houseRuleCardModel2;
  // Model for HouseRuleCard component.
  late HouseRuleCardModel houseRuleCardModel3;
  // Model for HouseRuleCard component.
  late HouseRuleCardModel houseRuleCardModel4;
  // Model for HouseRuleCard component.
  late HouseRuleCardModel houseRuleCardModel5;
  // Model for hostInformation component.
  late HostInformationModel hostInformationModel;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenRespApprove;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenRespReject;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    houseRuleCardModel1 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel2 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel3 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel4 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel5 = createModel(context, () => HouseRuleCardModel());
    hostInformationModel = createModel(context, () => HostInformationModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    houseRuleCardModel1.dispose();
    houseRuleCardModel2.dispose();
    houseRuleCardModel3.dispose();
    houseRuleCardModel4.dispose();
    houseRuleCardModel5.dispose();
    hostInformationModel.dispose();
  }
}
