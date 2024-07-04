import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/profile/change_password/change_password_widget.dart';
import '/luxary_homes/profile/contact_us/contact_us_widget.dart';
import '/luxary_homes/profile/personal_info/personal_info_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'menu_for_mobile_widget.dart' show MenuForMobileWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuForMobileModel extends FlutterFlowModel<MenuForMobileWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (Refresh Token API)] action in logout widget.
  ApiCallResponse? logoutRefreshTokenResp3;
  // Stores action output result for [Backend Call - API (LogOut)] action in logout widget.
  ApiCallResponse? logoutAPIRespMobile;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
