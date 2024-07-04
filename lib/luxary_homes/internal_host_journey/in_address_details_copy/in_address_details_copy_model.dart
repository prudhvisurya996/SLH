import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'in_address_details_copy_widget.dart' show InAddressDetailsCopyWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InAddressDetailsCopyModel
    extends FlutterFlowModel<InAddressDetailsCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for regionAddTextField widget.
  FocusNode? regionAddTextFieldFocusNode;
  TextEditingController? regionAddTextFieldTextController;
  String? Function(BuildContext, String?)?
      regionAddTextFieldTextControllerValidator;
  String? _regionAddTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 50) {
      return 'More than 50 Characters Not Allowed ';
    }
    if (!RegExp('^[a-zA-Z][a-zA-Z ]*\$').hasMatch(val)) {
      return 'Starting spaces are not allowed.';
    }
    return null;
  }

  // State field(s) for PlatTextField widget.
  FocusNode? platTextFieldFocusNode;
  TextEditingController? platTextFieldTextController;
  String? Function(BuildContext, String?)? platTextFieldTextControllerValidator;
  String? _platTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 50) {
      return 'More than 50 Characters Not Allowed ';
    }
    if (!RegExp('^[a-zA-Z0-9#][a-zA-Z0-9#:\\-/\\., ]*\$').hasMatch(val)) {
      return 'Starting spaces are not allowed.';
    }
    return null;
  }

  // State field(s) for StreetAddTextField widget.
  FocusNode? streetAddTextFieldFocusNode;
  TextEditingController? streetAddTextFieldTextController;
  String? Function(BuildContext, String?)?
      streetAddTextFieldTextControllerValidator;
  String? _streetAddTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 3) {
      return 'Please enter valid details';
    }
    if (val.length > 150) {
      return 'More than 150 Characters Not Allowed ';
    }
    if (!RegExp('^[a-zA-Z0-9#][a-zA-Z0-9# \\-/\\., ]*\$').hasMatch(val)) {
      return 'Starting spaces are not allowed.';
    }
    return null;
  }

  // State field(s) for LandmarkAddTextField widget.
  FocusNode? landmarkAddTextFieldFocusNode;
  TextEditingController? landmarkAddTextFieldTextController;
  String? Function(BuildContext, String?)?
      landmarkAddTextFieldTextControllerValidator;
  // State field(s) for LocalityTextField widget.
  FocusNode? localityTextFieldFocusNode;
  TextEditingController? localityTextFieldTextController;
  String? Function(BuildContext, String?)?
      localityTextFieldTextControllerValidator;
  String? _localityTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 50) {
      return 'More than 50 Characters Not Allowed ';
    }
    if (!RegExp('^[a-zA-Z0-9#][a-zA-Z0-9# \\-/\\.]*\$').hasMatch(val)) {
      return 'Starting spaces are not allowed.';
    }
    return null;
  }

  // State field(s) for CityTextField widget.
  FocusNode? cityTextFieldFocusNode;
  TextEditingController? cityTextFieldTextController;
  String? Function(BuildContext, String?)? cityTextFieldTextControllerValidator;
  String? _cityTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 50) {
      return 'More than 50 Characters Not Allowed ';
    }
    if (!RegExp('^[a-zA-Z][a-zA-Z\\s\\-\\\' ]*\$').hasMatch(val)) {
      return 'Starting spaces are not allowed.';
    }
    return null;
  }

  // State field(s) for StateTextField widget.
  FocusNode? stateTextFieldFocusNode;
  TextEditingController? stateTextFieldTextController;
  String? Function(BuildContext, String?)?
      stateTextFieldTextControllerValidator;
  String? _stateTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[a-zA-Z][a-zA-Z ]*\$').hasMatch(val)) {
      return 'Starting spaces are not allowed.';
    }
    return null;
  }

  // State field(s) for PincodeTextField widget.
  FocusNode? pincodeTextFieldFocusNode;
  TextEditingController? pincodeTextFieldTextController;
  String? Function(BuildContext, String?)?
      pincodeTextFieldTextControllerValidator;
  String? _pincodeTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Zip is required';
    }

    if (val.length < 6) {
      return 'Enter vaild zip';
    }
    if (val.length > 6) {
      return 'Enter valid zip';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    regionAddTextFieldTextControllerValidator =
        _regionAddTextFieldTextControllerValidator;
    platTextFieldTextControllerValidator =
        _platTextFieldTextControllerValidator;
    streetAddTextFieldTextControllerValidator =
        _streetAddTextFieldTextControllerValidator;
    localityTextFieldTextControllerValidator =
        _localityTextFieldTextControllerValidator;
    cityTextFieldTextControllerValidator =
        _cityTextFieldTextControllerValidator;
    stateTextFieldTextControllerValidator =
        _stateTextFieldTextControllerValidator;
    pincodeTextFieldTextControllerValidator =
        _pincodeTextFieldTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    regionAddTextFieldFocusNode?.dispose();
    regionAddTextFieldTextController?.dispose();

    platTextFieldFocusNode?.dispose();
    platTextFieldTextController?.dispose();

    streetAddTextFieldFocusNode?.dispose();
    streetAddTextFieldTextController?.dispose();

    landmarkAddTextFieldFocusNode?.dispose();
    landmarkAddTextFieldTextController?.dispose();

    localityTextFieldFocusNode?.dispose();
    localityTextFieldTextController?.dispose();

    cityTextFieldFocusNode?.dispose();
    cityTextFieldTextController?.dispose();

    stateTextFieldFocusNode?.dispose();
    stateTextFieldTextController?.dispose();

    pincodeTextFieldFocusNode?.dispose();
    pincodeTextFieldTextController?.dispose();
  }
}
