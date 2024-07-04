import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'change_password_form_widget.dart' show ChangePasswordFormWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChangePasswordFormModel
    extends FlutterFlowModel<ChangePasswordFormWidget> {
  ///  Local state fields for this component.

  bool showConfirmPasswordError = false;

  bool showResponseError = false;

  bool showOldPasswordError = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for passwordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  String? _passwordTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Current password is required.';
    }

    return null;
  }

  // State field(s) for newPasswordTextField widget.
  FocusNode? newPasswordTextFieldFocusNode;
  TextEditingController? newPasswordTextFieldTextController;
  late bool newPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      newPasswordTextFieldTextControllerValidator;
  String? _newPasswordTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'New password is required.';
    }

    if (val.length < 8) {
      return 'Minimum 8 characters required.';
    }

    if (!RegExp(
            '^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\\\$&*~]).{8,}\$')
        .hasMatch(val)) {
      return ' One upper, lower, numeric, special character.';
    }
    return null;
  }

  // State field(s) for confirmNewPasswordTextField widget.
  FocusNode? confirmNewPasswordTextFieldFocusNode;
  TextEditingController? confirmNewPasswordTextFieldTextController;
  late bool confirmNewPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmNewPasswordTextFieldTextControllerValidator;
  String? _confirmNewPasswordTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm new password is required.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshOutput;
  // Stores action output result for [Backend Call - API (Update Password API)] action in Button widget.
  ApiCallResponse? changePasswordOutput;

  @override
  void initState(BuildContext context) {
    passwordTextFieldVisibility = false;
    passwordTextFieldTextControllerValidator =
        _passwordTextFieldTextControllerValidator;
    newPasswordTextFieldVisibility = false;
    newPasswordTextFieldTextControllerValidator =
        _newPasswordTextFieldTextControllerValidator;
    confirmNewPasswordTextFieldVisibility = false;
    confirmNewPasswordTextFieldTextControllerValidator =
        _confirmNewPasswordTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();

    newPasswordTextFieldFocusNode?.dispose();
    newPasswordTextFieldTextController?.dispose();

    confirmNewPasswordTextFieldFocusNode?.dispose();
    confirmNewPasswordTextFieldTextController?.dispose();
  }
}
