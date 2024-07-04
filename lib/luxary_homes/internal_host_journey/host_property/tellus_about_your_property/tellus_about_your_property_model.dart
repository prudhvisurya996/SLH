import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'tellus_about_your_property_widget.dart'
    show TellusAboutYourPropertyWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class TellusAboutYourPropertyModel
    extends FlutterFlowModel<TellusAboutYourPropertyWidget> {
  ///  Local state fields for this page.

  bool isLoading = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for MobileTitleTextField widget.
  FocusNode? mobileTitleTextFieldFocusNode;
  TextEditingController? mobileTitleTextFieldTextController;
  String? Function(BuildContext, String?)?
      mobileTitleTextFieldTextControllerValidator;
  String? _mobileTitleTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    if (!RegExp('^[a-zA-Z][a-zA-Z0-9 \'-]*\$').hasMatch(val)) {
      return 'Invalid format';
    }
    return null;
  }

  // State field(s) for MobileDescriptionTextField widget.
  FocusNode? mobileDescriptionTextFieldFocusNode;
  TextEditingController? mobileDescriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      mobileDescriptionTextFieldTextControllerValidator;
  String? _mobileDescriptionTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 5) {
      return 'Requires at least 5 characters.';
    }

    if (!RegExp('^[a-zA-Z.][a-zA-Z0-9 ._-]*\$').hasMatch(val)) {
      return 'Invalid format';
    }
    return null;
  }

  // State field(s) for WebTitleTextField widget.
  FocusNode? webTitleTextFieldFocusNode;
  TextEditingController? webTitleTextFieldTextController;
  String? Function(BuildContext, String?)?
      webTitleTextFieldTextControllerValidator;
  String? _webTitleTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    if (!RegExp('^[a-zA-Z][a-zA-Z0-9 \'-]*\$').hasMatch(val)) {
      return 'Invalid Format';
    }
    return null;
  }

  // State field(s) for WebDescriptionTextField widget.
  FocusNode? webDescriptionTextFieldFocusNode;
  TextEditingController? webDescriptionTextFieldTextController;
  String? Function(BuildContext, String?)?
      webDescriptionTextFieldTextControllerValidator;
  String? _webDescriptionTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    if (!RegExp('^[a-zA-Z.][a-zA-Z0-9 ._-]*\$').hasMatch(val)) {
      return 'Invalid Format';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    mobileTitleTextFieldTextControllerValidator =
        _mobileTitleTextFieldTextControllerValidator;
    mobileDescriptionTextFieldTextControllerValidator =
        _mobileDescriptionTextFieldTextControllerValidator;
    webTitleTextFieldTextControllerValidator =
        _webTitleTextFieldTextControllerValidator;
    webDescriptionTextFieldTextControllerValidator =
        _webDescriptionTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mobileTitleTextFieldFocusNode?.dispose();
    mobileTitleTextFieldTextController?.dispose();

    mobileDescriptionTextFieldFocusNode?.dispose();
    mobileDescriptionTextFieldTextController?.dispose();

    webTitleTextFieldFocusNode?.dispose();
    webTitleTextFieldTextController?.dispose();

    webDescriptionTextFieldFocusNode?.dispose();
    webDescriptionTextFieldTextController?.dispose();
  }
}
