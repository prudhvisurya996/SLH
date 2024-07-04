import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/login_form_component/login_form_component_widget.dart';
import 'login_component_widget.dart' show LoginComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginComponentModel extends FlutterFlowModel<LoginComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for LoginFormComponent component.
  late LoginFormComponentModel loginFormComponentModel1;
  // Model for LoginFormComponent component.
  late LoginFormComponentModel loginFormComponentModel2;

  @override
  void initState(BuildContext context) {
    loginFormComponentModel1 =
        createModel(context, () => LoginFormComponentModel());
    loginFormComponentModel2 =
        createModel(context, () => LoginFormComponentModel());
  }

  @override
  void dispose() {
    loginFormComponentModel1.dispose();
    loginFormComponentModel2.dispose();
  }
}
