import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/profile/profile_for_web/profile_for_web_widget.dart';
import 'menu_for_web_widget.dart' show MenuForWebWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuForWebModel extends FlutterFlowModel<MenuForWebWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Row widget.
  ApiCallResponse? logoutRefreshTokenResp1;
  // Stores action output result for [Backend Call - API (LogOut)] action in Row widget.
  ApiCallResponse? logoutAPIRespMenu;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
