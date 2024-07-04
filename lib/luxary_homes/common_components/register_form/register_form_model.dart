import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/common_components/register_success/register_success_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'register_form_widget.dart' show RegisterFormWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegisterFormModel extends FlutterFlowModel<RegisterFormWidget> {
  ///  Local state fields for this component.

  bool showBirthdayError = false;

  bool showRegisterApiError = false;

  List<String> postalCodeLocalities = [];
  void addToPostalCodeLocalities(String item) => postalCodeLocalities.add(item);
  void removeFromPostalCodeLocalities(String item) =>
      postalCodeLocalities.remove(item);
  void removeAtIndexFromPostalCodeLocalities(int index) =>
      postalCodeLocalities.removeAt(index);
  void insertAtIndexInPostalCodeLocalities(int index, String item) =>
      postalCodeLocalities.insert(index, item);
  void updatePostalCodeLocalitiesAtIndex(
          int index, Function(String) updateFn) =>
      postalCodeLocalities[index] = updateFn(postalCodeLocalities[index]);

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

    if (!RegExp('^[^\\s\\d][A-Za-z\\s]*\$').hasMatch(val)) {
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

    if (!RegExp('^[^\\s\\d][A-Za-z\\s]*\$').hasMatch(val)) {
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

  // State field(s) for pincode_field widget.
  FocusNode? pincodeFieldFocusNode;
  TextEditingController? pincodeFieldTextController;
  String? Function(BuildContext, String?)? pincodeFieldTextControllerValidator;
  String? _pincodeFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (getDataFromPinCode)] action in pincode_field widget.
  ApiCallResponse? pincodeResponseSignUp;
  // State field(s) for country_field widget.
  FocusNode? countryFieldFocusNode;
  TextEditingController? countryFieldTextController;
  String? Function(BuildContext, String?)? countryFieldTextControllerValidator;
  // State field(s) for State_field widget.
  FocusNode? stateFieldFocusNode;
  TextEditingController? stateFieldTextController;
  String? Function(BuildContext, String?)? stateFieldTextControllerValidator;
  // State field(s) for CityTown_field widget.
  FocusNode? cityTownFieldFocusNode;
  TextEditingController? cityTownFieldTextController;
  String? Function(BuildContext, String?)? cityTownFieldTextControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Locality_field widget.
  FocusNode? localityFieldFocusNode;
  TextEditingController? localityFieldTextController;
  String? Function(BuildContext, String?)? localityFieldTextControllerValidator;
  // State field(s) for Street_field widget.
  FocusNode? streetFieldFocusNode;
  TextEditingController? streetFieldTextController;
  String? Function(BuildContext, String?)? streetFieldTextControllerValidator;
  String? _streetFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Registration API)] action in Button widget.
  ApiCallResponse? registerOutput;

  @override
  void initState(BuildContext context) {
    firstNameTextFieldTextControllerValidator =
        _firstNameTextFieldTextControllerValidator;
    lastNameTextFieldTextControllerValidator =
        _lastNameTextFieldTextControllerValidator;
    mobileNumberTextFieldTextControllerValidator =
        _mobileNumberTextFieldTextControllerValidator;
    emailTextFieldTextControllerValidator =
        _emailTextFieldTextControllerValidator;
    pincodeFieldTextControllerValidator = _pincodeFieldTextControllerValidator;
    streetFieldTextControllerValidator = _streetFieldTextControllerValidator;
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

    pincodeFieldFocusNode?.dispose();
    pincodeFieldTextController?.dispose();

    countryFieldFocusNode?.dispose();
    countryFieldTextController?.dispose();

    stateFieldFocusNode?.dispose();
    stateFieldTextController?.dispose();

    cityTownFieldFocusNode?.dispose();
    cityTownFieldTextController?.dispose();

    localityFieldFocusNode?.dispose();
    localityFieldTextController?.dispose();

    streetFieldFocusNode?.dispose();
    streetFieldTextController?.dispose();
  }
}
