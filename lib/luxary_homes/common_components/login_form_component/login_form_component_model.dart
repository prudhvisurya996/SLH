import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/forgot_password_component/forgot_password_component_widget.dart';
import '/luxary_homes/common_components/phone_login_component/phone_login_component_widget.dart';
import '/luxary_homes/common_components/register_component/register_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'login_form_component_widget.dart' show LoginFormComponentWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginFormComponentModel
    extends FlutterFlowModel<LoginFormComponentWidget> {
  ///  Local state fields for this component.

  bool showLoginApiError = false;

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
      return 'Invalid Email';
    }
    return null;
  }

  // State field(s) for PasswordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  String? _passwordTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Auth Token API)] action in PasswordTextField widget.
  ApiCallResponse? authTokenOutputCopy;
  // Stores action output result for [Backend Call - API (User Details API)] action in PasswordTextField widget.
  ApiCallResponse? userDetailsOuputCopy;
  // Stores action output result for [Backend Call - API (Auth Token API)] action in Button widget.
  ApiCallResponse? authTokenOutput;
  // Stores action output result for [Backend Call - API (User Details API)] action in Button widget.
  ApiCallResponse? userDetailsOuput;
  // Stores action output result for [Custom Action - googleSignInAction] action in Image widget.
  bool? responseForAndroid;
  // Stores action output result for [Custom Action - googleSignInAction] action in Image widget.
  bool? responseForWeb;

  @override
  void initState(BuildContext context) {
    emailTextFieldTextControllerValidator =
        _emailTextFieldTextControllerValidator;
    passwordTextFieldVisibility = false;
    passwordTextFieldTextControllerValidator =
        _passwordTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();
  }
}
