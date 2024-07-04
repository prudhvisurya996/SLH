import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/forgot_password_form_component/forgot_password_form_component_widget.dart';
import 'forgot_password_component_widget.dart'
    show ForgotPasswordComponentWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPasswordComponentModel
    extends FlutterFlowModel<ForgotPasswordComponentWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ForgotPasswordFormComponent component.
  late ForgotPasswordFormComponentModel forgotPasswordFormComponentModel1;
  // Model for ForgotPasswordFormComponent component.
  late ForgotPasswordFormComponentModel forgotPasswordFormComponentModel2;

  @override
  void initState(BuildContext context) {
    forgotPasswordFormComponentModel1 =
        createModel(context, () => ForgotPasswordFormComponentModel());
    forgotPasswordFormComponentModel2 =
        createModel(context, () => ForgotPasswordFormComponentModel());
  }

  @override
  void dispose() {
    forgotPasswordFormComponentModel1.dispose();
    forgotPasswordFormComponentModel2.dispose();
  }
}
