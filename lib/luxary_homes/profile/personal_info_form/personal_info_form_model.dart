import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'personal_info_form_widget.dart' show PersonalInfoFormWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PersonalInfoFormModel extends FlutterFlowModel<PersonalInfoFormWidget> {
  ///  Local state fields for this component.

  bool showResponseError = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for FirstNameTextField widget.
  FocusNode? firstNameTextFieldFocusNode;
  TextEditingController? firstNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      firstNameTextFieldTextControllerValidator;
  String? _firstNameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'First name  is required.';
    }

    if (val.length < 3) {
      return 'Required minimum 3 characters.';
    }

    if (!RegExp('[^\\s\\d][A-Za-z\\s]*\$').hasMatch(val)) {
      return 'Enter valid name.';
    }
    return null;
  }

  // State field(s) for LastNameTextField widget.
  FocusNode? lastNameTextFieldFocusNode;
  TextEditingController? lastNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      lastNameTextFieldTextControllerValidator;
  String? _lastNameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Last name is required.';
    }

    if (val.length < 3) {
      return 'Required minimum 3 characters.';
    }

    if (!RegExp('[^\\s\\d][A-Za-z\\s]*\$').hasMatch(val)) {
      return 'Enter valid name.';
    }
    return null;
  }

  DateTime? datePicked;
  // State field(s) for MobileNumberTextField widget.
  FocusNode? mobileNumberTextFieldFocusNode;
  TextEditingController? mobileNumberTextFieldTextController;
  String? Function(BuildContext, String?)?
      mobileNumberTextFieldTextControllerValidator;
  String? _mobileNumberTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Mobile number is required.';
    }

    if (val.length < 10) {
      return 'Mobile number should have 10 digits.';
    }

    return null;
  }

  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshOutput;
  // Stores action output result for [Backend Call - API (Update User API)] action in Button widget.
  ApiCallResponse? updateUserOutput;

  @override
  void initState(BuildContext context) {
    firstNameTextFieldTextControllerValidator =
        _firstNameTextFieldTextControllerValidator;
    lastNameTextFieldTextControllerValidator =
        _lastNameTextFieldTextControllerValidator;
    mobileNumberTextFieldTextControllerValidator =
        _mobileNumberTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    firstNameTextFieldFocusNode?.dispose();
    firstNameTextFieldTextController?.dispose();

    lastNameTextFieldFocusNode?.dispose();
    lastNameTextFieldTextController?.dispose();

    mobileNumberTextFieldFocusNode?.dispose();
    mobileNumberTextFieldTextController?.dispose();

    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();
  }
}
