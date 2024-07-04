import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/androidand_ios/nav_bar/nav_bar_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import 'empty_dashboard_widget.dart' show EmptyDashboardWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EmptyDashboardModel extends FlutterFlowModel<EmptyDashboardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for nav_bar component.
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
