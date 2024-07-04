import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'contact_us_form_component_widget.dart'
    show ContactUsFormComponentWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContactUsFormComponentModel
    extends FlutterFlowModel<ContactUsFormComponentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for FullNameTextField widget.
  FocusNode? fullNameTextFieldFocusNode;
  TextEditingController? fullNameTextFieldTextController;
  String? Function(BuildContext, String?)?
      fullNameTextFieldTextControllerValidator;
  // State field(s) for EmailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // State field(s) for MobileNumberTextField widget.
  FocusNode? mobileNumberTextFieldFocusNode;
  TextEditingController? mobileNumberTextFieldTextController;
  String? Function(BuildContext, String?)?
      mobileNumberTextFieldTextControllerValidator;
  // State field(s) for TitleTextField widget.
  FocusNode? titleTextFieldFocusNode;
  TextEditingController? titleTextFieldTextController;
  String? Function(BuildContext, String?)?
      titleTextFieldTextControllerValidator;
  String? _titleTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Title is required';
    }

    if (!RegExp('^[a-zA-Z][a-zA-Z0-9 -_]*\$').hasMatch(val)) {
      return 'Invalid format';
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
      return 'Description is required.';
    }

    if (!RegExp('^[a-zA-Z.][a-zA-Z0-9 ._-]*\$').hasMatch(val)) {
      return 'Invalid format';
    }
    return null;
  }

  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshOutput;
  // Stores action output result for [Backend Call - API (Contact Us API)] action in Button widget.
  ApiCallResponse? contactusOutput;

  @override
  void initState(BuildContext context) {
    titleTextFieldTextControllerValidator =
        _titleTextFieldTextControllerValidator;
    descriptionTextFieldTextControllerValidator =
        _descriptionTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    fullNameTextFieldFocusNode?.dispose();
    fullNameTextFieldTextController?.dispose();

    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    mobileNumberTextFieldFocusNode?.dispose();
    mobileNumberTextFieldTextController?.dispose();

    titleTextFieldFocusNode?.dispose();
    titleTextFieldTextController?.dispose();

    descriptionTextFieldFocusNode?.dispose();
    descriptionTextFieldTextController?.dispose();
  }
}
