import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/internal_host_journey/in_host_details/in_host_details_widget.dart';
import '/luxary_homes/portfolio_manager/approval_reason/approval_reason_widget.dart';
import '/luxary_homes/portfolio_manager/block_reason/block_reason_widget.dart';
import '/luxary_homes/portfolio_manager/reject_reason/reject_reason_widget.dart';
import '/luxary_homes/portfolio_manager/unblock_reason/unblock_reason_widget.dart';
import '/luxary_homes/users/house_rule_card/house_rule_card_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'in_host_detail_view_widget.dart' show InHostDetailViewWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InHostDetailViewModel extends FlutterFlowModel<InHostDetailViewWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel1;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel2;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel3;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel4;
  // Model for house_rule_card component.
  late HouseRuleCardModel houseRuleCardModel5;
  // Model for in_host_details component.
  late InHostDetailsModel inHostDetailsModel;
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
    inHostDetailsModel = createModel(context, () => InHostDetailsModel());
  }

  @override
  void dispose() {
    houseRuleCardModel1.dispose();
    houseRuleCardModel2.dispose();
    houseRuleCardModel3.dispose();
    houseRuleCardModel4.dispose();
    houseRuleCardModel5.dispose();
    inHostDetailsModel.dispose();
  }
}
