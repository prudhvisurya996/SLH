import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for login_form component.
  late LoginFormModel loginFormModel1;
  // Model for login_form component.
  late LoginFormModel loginFormModel2;

  @override
  void initState(BuildContext context) {
    loginFormModel1 = createModel(context, () => LoginFormModel());
    loginFormModel2 = createModel(context, () => LoginFormModel());
  }

  @override
  void dispose() {
    loginFormModel1.dispose();
    loginFormModel2.dispose();
  }
}
