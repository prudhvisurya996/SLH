import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/admin/approval_reason/reason_for_approval/reason_for_approval_widget.dart';
import '/luxary_homes/admin/block_reason/reason_for_block/reason_for_block_widget.dart';
import '/luxary_homes/admin/reason_for_reject/reason_for_reject_comp/reason_for_reject_comp_widget.dart';
import '/luxary_homes/admin/un_block_reason/reason_for_un_block/reason_for_un_block_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/host_information/host_information/host_information_widget.dart';
import '/luxary_homes/users/user_components/property_components/house_rule_card/house_rule_card_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'property_listing_view_widget.dart' show PropertyListingViewWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PropertyListingViewModel
    extends FlutterFlowModel<PropertyListingViewWidget> {
  ///  State fields for stateful widgets in this component.

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
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenRespBlock;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenRespApproved;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenRespUnblock;

  @override
  void initState(BuildContext context) {
    houseRuleCardModel1 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel2 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel3 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel4 = createModel(context, () => HouseRuleCardModel());
    houseRuleCardModel5 = createModel(context, () => HouseRuleCardModel());
    hostInformationModel = createModel(context, () => HostInformationModel());
  }

  @override
  void dispose() {
    houseRuleCardModel1.dispose();
    houseRuleCardModel2.dispose();
    houseRuleCardModel3.dispose();
    houseRuleCardModel4.dispose();
    houseRuleCardModel5.dispose();
    hostInformationModel.dispose();
  }
}
