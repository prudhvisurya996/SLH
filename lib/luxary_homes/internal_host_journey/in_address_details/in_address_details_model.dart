import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'in_address_details_widget.dart' show InAddressDetailsWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InAddressDetailsModel extends FlutterFlowModel<InAddressDetailsWidget> {
  ///  Local state fields for this page.

  List<String> localities = [];
  void addToLocalities(String item) => localities.add(item);
  void removeFromLocalities(String item) => localities.remove(item);
  void removeAtIndexFromLocalities(int index) => localities.removeAt(index);
  void insertAtIndexInLocalities(int index, String item) =>
      localities.insert(index, item);
  void updateLocalitiesAtIndex(int index, Function(String) updateFn) =>
      localities[index] = updateFn(localities[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for PincodeTextField widget.
  FocusNode? pincodeTextFieldFocusNode;
  TextEditingController? pincodeTextFieldTextController;
  String? Function(BuildContext, String?)?
      pincodeTextFieldTextControllerValidator;
  String? _pincodeTextFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Pincode is required';
    }

    if (val.length < 6) {
      return 'Enter vaild zip';
    }
    if (val.length > 6) {
      return 'Enter valid zip';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (getDataFromPinCode)] action in PincodeTextField widget.
  ApiCallResponse? pincodeRespons;
  // State field(s) for state widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateTextController;
  String? Function(BuildContext, String?)? stateTextControllerValidator;
  String? _stateTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 50) {
      return 'More than 50 Characters Not Allowed ';
    }
    if (!RegExp('^[a-zA-Z][a-zA-Z ]*\$').hasMatch(val)) {
      return 'Invalid Format';
    }
    return null;
  }

  // State field(s) for locality_DropDown widget.
  String? localityDropDownValue;
  FormFieldController<String>? localityDropDownValueController;
  // State field(s) for locality_form widget.
  FocusNode? localityFormFocusNode;
  TextEditingController? localityFormTextController;
  String? Function(BuildContext, String?)? localityFormTextControllerValidator;
  String? _localityFormTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 50) {
      return 'More than 50 Characters Not Allowed ';
    }
    if (!RegExp('^[a-zA-Z0-9#][a-zA-Z0-9#:\\-/\\., ]*\$').hasMatch(val)) {
      return 'Invalid Format';
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
      return 'Invalid Format';
    }
    return null;
  }

  // State field(s) for country widget.
  FocusNode? countryFocusNode;
  TextEditingController? countryTextController;
  String? Function(BuildContext, String?)? countryTextControllerValidator;
  String? _countryTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length > 50) {
      return 'More than 50 Characters Not Allowed ';
    }
    if (!RegExp('^[a-zA-Z0-9#][a-zA-Z0-9# \\-/\\.]*\$').hasMatch(val)) {
      return 'Invalid Format';
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
      return 'Invalid Format';
    }
    return null;
  }

  // State field(s) for flatNo widget.
  FocusNode? flatNoFocusNode;
  TextEditingController? flatNoTextController;
  String? Function(BuildContext, String?)? flatNoTextControllerValidator;
  String? _flatNoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp('^[a-zA-Z0-9#][a-zA-Z0-9# \\-/\\., ]*\$').hasMatch(val)) {
      return 'Invalid Format';
    }
    return null;
  }

  // State field(s) for LandmarkAddTextField widget.
  FocusNode? landmarkAddTextFieldFocusNode;
  TextEditingController? landmarkAddTextFieldTextController;
  String? Function(BuildContext, String?)?
      landmarkAddTextFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    pincodeTextFieldTextControllerValidator =
        _pincodeTextFieldTextControllerValidator;
    stateTextControllerValidator = _stateTextControllerValidator;
    localityFormTextControllerValidator = _localityFormTextControllerValidator;
    streetAddTextFieldTextControllerValidator =
        _streetAddTextFieldTextControllerValidator;
    countryTextControllerValidator = _countryTextControllerValidator;
    cityTextFieldTextControllerValidator =
        _cityTextFieldTextControllerValidator;
    flatNoTextControllerValidator = _flatNoTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pincodeTextFieldFocusNode?.dispose();
    pincodeTextFieldTextController?.dispose();

    stateFocusNode?.dispose();
    stateTextController?.dispose();

    localityFormFocusNode?.dispose();
    localityFormTextController?.dispose();

    streetAddTextFieldFocusNode?.dispose();
    streetAddTextFieldTextController?.dispose();

    countryFocusNode?.dispose();
    countryTextController?.dispose();

    cityTextFieldFocusNode?.dispose();
    cityTextFieldTextController?.dispose();

    flatNoFocusNode?.dispose();
    flatNoTextController?.dispose();

    landmarkAddTextFieldFocusNode?.dispose();
    landmarkAddTextFieldTextController?.dispose();
  }
}
