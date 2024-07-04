import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/phone_login_component/phone_login_component_widget.dart';
import '/luxary_homes/profile/change_password_components/change_password_component/change_password_component_widget.dart';
import '/luxary_homes/profile/help_components/contact_us_component/contact_us_component_widget.dart';
import '/luxary_homes/profile/personal_information_components/personal_information_component/personal_information_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'menu_widget.dart' show MenuWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuModel extends FlutterFlowModel<MenuWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in logout widget.
  ApiCallResponse? logoutRefreshTokenResp3;
  // Stores action output result for [Backend Call - API (LogOut)] action in logout widget.
  ApiCallResponse? logoutAPIRespMobile;
  // Model for NavBar component.
  late NavBarModel navBarModel;

  @override
  void initState(BuildContext context) {
    navBarModel = createModel(context, () => NavBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navBarModel.dispose();
  }
}
