import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/forgot_psw_success_component/forgot_psw_success_component_widget.dart';
import '/luxary_homes/common_components/login_component/login_component_widget.dart';
import 'forgot_password_form_component_widget.dart'
    show ForgotPasswordFormComponentWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ForgotPasswordFormComponentModel
    extends FlutterFlowModel<ForgotPasswordFormComponentWidget> {
  ///  Local state fields for this component.

  bool showForgotApiError = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  String? _emailTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required.';
    }

    if (!RegExp(
            '^[a-zA-Z0-9.a-zA-Z0-9.!#\$%&\'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\\.[a-zA-Z]+')
        .hasMatch(val)) {
      return 'Invalid email.';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (Forgot Password API)] action in Button widget.
  ApiCallResponse? forgotPswOutput;

  @override
  void initState(BuildContext context) {
    emailTextFieldTextControllerValidator =
        _emailTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();
  }
}
