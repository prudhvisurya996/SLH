import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'address_details_widget.dart' show AddressDetailsWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddressDetailsModel extends FlutterFlowModel<AddressDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for regionAddTextField widget.
  FocusNode? regionAddTextFieldFocusNode;
  TextEditingController? regionAddTextFieldController;
  String? Function(BuildContext, String?)?
      regionAddTextFieldControllerValidator;
  String? _regionAddTextFieldControllerValidator(
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
  TextEditingController? platTextFieldController;
  String? Function(BuildContext, String?)? platTextFieldControllerValidator;
  String? _platTextFieldControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? streetAddTextFieldController;
  String? Function(BuildContext, String?)?
      streetAddTextFieldControllerValidator;
  String? _streetAddTextFieldControllerValidator(
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
  TextEditingController? landmarkAddTextFieldController;
  String? Function(BuildContext, String?)?
      landmarkAddTextFieldControllerValidator;
  // State field(s) for LocalityTextField widget.
  FocusNode? localityTextFieldFocusNode;
  TextEditingController? localityTextFieldController;
  String? Function(BuildContext, String?)? localityTextFieldControllerValidator;
  String? _localityTextFieldControllerValidator(
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
  TextEditingController? cityTextFieldController;
  String? Function(BuildContext, String?)? cityTextFieldControllerValidator;
  String? _cityTextFieldControllerValidator(BuildContext context, String? val) {
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
  TextEditingController? stateTextFieldController;
  String? Function(BuildContext, String?)? stateTextFieldControllerValidator;
  String? _stateTextFieldControllerValidator(
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
  TextEditingController? pincodeTextFieldController;
  String? Function(BuildContext, String?)? pincodeTextFieldControllerValidator;
  String? _pincodeTextFieldControllerValidator(
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
    regionAddTextFieldControllerValidator =
        _regionAddTextFieldControllerValidator;
    platTextFieldControllerValidator = _platTextFieldControllerValidator;
    streetAddTextFieldControllerValidator =
        _streetAddTextFieldControllerValidator;
    localityTextFieldControllerValidator =
        _localityTextFieldControllerValidator;
    cityTextFieldControllerValidator = _cityTextFieldControllerValidator;
    stateTextFieldControllerValidator = _stateTextFieldControllerValidator;
    pincodeTextFieldControllerValidator = _pincodeTextFieldControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    regionAddTextFieldFocusNode?.dispose();
    regionAddTextFieldController?.dispose();

    platTextFieldFocusNode?.dispose();
    platTextFieldController?.dispose();

    streetAddTextFieldFocusNode?.dispose();
    streetAddTextFieldController?.dispose();

    landmarkAddTextFieldFocusNode?.dispose();
    landmarkAddTextFieldController?.dispose();

    localityTextFieldFocusNode?.dispose();
    localityTextFieldController?.dispose();

    cityTextFieldFocusNode?.dispose();
    cityTextFieldController?.dispose();

    stateTextFieldFocusNode?.dispose();
    stateTextFieldController?.dispose();

    pincodeTextFieldFocusNode?.dispose();
    pincodeTextFieldController?.dispose();
  }
}
