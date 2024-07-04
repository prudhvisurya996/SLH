import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import 'new_contact_us_widget.dart' show NewContactUsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class NewContactUsModel extends FlutterFlowModel<NewContactUsWidget> {
  ///  Local state fields for this component.

  bool? captcha = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for FullNameTextField widget.
  FocusNode? fullNameTextFieldFocusNode;
  TextEditingController? fullNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      fullNameTextFieldTextControllerValidator;
  String? _fullNameTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for MobileTextField widget.
  FocusNode? mobileTextFieldFocusNode;
  TextEditingController? mobileTextFieldTextController;
  String? Function(BuildContext, String?)?
      mobileTextFieldTextControllerValidator;
  String? _mobileTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  String? _emailTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for TitleTextField widget.
  FocusNode? titleTextFieldFocusNode;
  TextEditingController? titleTextFieldTextController;
  String? Function(BuildContext, String?)?
      titleTextFieldTextControllerValidator;
  String? _titleTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DescriptionTextField widget.
  FocusNode? descriptionTextFieldFocusNode;
  TextEditingController? descriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      descriptionTextFieldTextControllerValidator;
  String? _descriptionTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? contactUsRefreshTokenOutput;
  // Stores action output result for [Backend Call - API (Contact Us API)] action in Button widget.
  ApiCallResponse? contactusOutput;

  @override
  void initState(BuildContext context) {
    fullNameTextFieldTextControllerValidator =
        _fullNameTextFieldTextControllerValidator;
    mobileTextFieldTextControllerValidator =
        _mobileTextFieldTextControllerValidator;
    emailTextFieldTextControllerValidator =
        _emailTextFieldTextControllerValidator;
    titleTextFieldTextControllerValidator =
        _titleTextFieldTextControllerValidator;
    descriptionTextFieldTextControllerValidator =
        _descriptionTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    fullNameTextFieldFocusNode?.dispose();
    fullNameTextFieldTextController?.dispose();

    mobileTextFieldFocusNode?.dispose();
    mobileTextFieldTextController?.dispose();

    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    titleTextFieldFocusNode?.dispose();
    titleTextFieldTextController?.dispose();

    descriptionTextFieldFocusNode?.dispose();
    descriptionTextFieldTextController?.dispose();
  }
}
