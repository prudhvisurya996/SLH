import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/internal_host_journey/in_web_host_comp/in_web_host_comp_widget.dart';
import '/luxary_homes/profile/change_password/change_password_widget.dart';
import '/luxary_homes/profile/contact_us/contact_us_widget.dart';
import '/luxary_homes/profile/menu_for_web/menu_for_web_widget.dart';
import '/luxary_homes/profile/personal_info/personal_info_widget.dart';
import 'profile_for_web_widget.dart' show ProfileForWebWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileForWebModel extends FlutterFlowModel<ProfileForWebWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Row widget.
  ApiCallResponse? logoutRefreshTokenResp2;
  // Stores action output result for [Backend Call - API (LogOut)] action in Row widget.
  ApiCallResponse? logoutAPIRespWeb;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
