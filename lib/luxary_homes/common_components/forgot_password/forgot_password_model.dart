import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/forgot_password_form/forgot_password_form_widget.dart';
import 'forgot_password_widget.dart' show ForgotPasswordWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPasswordModel extends FlutterFlowModel<ForgotPasswordWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for forgot_password_form component.
  late ForgotPasswordFormModel forgotPasswordFormModel1;
  // Model for forgot_password_form component.
  late ForgotPasswordFormModel forgotPasswordFormModel2;

  @override
  void initState(BuildContext context) {
    forgotPasswordFormModel1 =
        createModel(context, () => ForgotPasswordFormModel());
    forgotPasswordFormModel2 =
        createModel(context, () => ForgotPasswordFormModel());
  }

  @override
  void dispose() {
    forgotPasswordFormModel1.dispose();
    forgotPasswordFormModel2.dispose();
  }
}
