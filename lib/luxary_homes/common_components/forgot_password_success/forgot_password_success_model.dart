import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/forgot_password_success_form/forgot_password_success_form_widget.dart';
import 'forgot_password_success_widget.dart' show ForgotPasswordSuccessWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPasswordSuccessModel
    extends FlutterFlowModel<ForgotPasswordSuccessWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for forgot_password_success_form component.
  late ForgotPasswordSuccessFormModel forgotPasswordSuccessFormModel1;
  // Model for forgot_password_success_form component.
  late ForgotPasswordSuccessFormModel forgotPasswordSuccessFormModel2;

  @override
  void initState(BuildContext context) {
    forgotPasswordSuccessFormModel1 =
        createModel(context, () => ForgotPasswordSuccessFormModel());
    forgotPasswordSuccessFormModel2 =
        createModel(context, () => ForgotPasswordSuccessFormModel());
  }

  @override
  void dispose() {
    forgotPasswordSuccessFormModel1.dispose();
    forgotPasswordSuccessFormModel2.dispose();
  }
}
