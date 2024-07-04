import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'm_property_hosting_widget.dart' show MPropertyHostingWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MPropertyHostingModel extends FlutterFlowModel<MPropertyHostingWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> uploadPictures = [];
  void addToUploadPictures(FFUploadedFile item) => uploadPictures.add(item);
  void removeFromUploadPictures(FFUploadedFile item) =>
      uploadPictures.remove(item);
  void removeAtIndexFromUploadPictures(int index) =>
      uploadPictures.removeAt(index);
  void insertAtIndexInUploadPictures(int index, FFUploadedFile item) =>
      uploadPictures.insert(index, item);
  void updateUploadPicturesAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      uploadPictures[index] = updateFn(uploadPictures[index]);

  int? index = 0;

  List<String> localities = [];
  void addToLocalities(String item) => localities.add(item);
  void removeFromLocalities(String item) => localities.remove(item);
  void removeAtIndexFromLocalities(int index) => localities.removeAt(index);
  void insertAtIndexInLocalities(int index, String item) =>
      localities.insert(index, item);
  void updateLocalitiesAtIndex(int index, Function(String) updateFn) =>
      localities[index] = updateFn(localities[index]);

  bool error = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for CommonTopBar component.
  late CommonTopBarModel commonTopBarModel;
  // State field(s) for propertyTitle widget.
  FocusNode? propertyTitleFocusNode;
  TextEditingController? propertyTitleTextController;
  String? Function(BuildContext, String?)? propertyTitleTextControllerValidator;
  String? _propertyTitleTextControllerValidator(
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

  // State field(s) for propertPricing widget.
  FocusNode? propertPricingFocusNode;
  TextEditingController? propertPricingTextController;
  String? Function(BuildContext, String?)?
      propertPricingTextControllerValidator;
  String? _propertPricingTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Price is required';
    }

    if (!RegExp('^([5-9]\\d{2}|[1-9]\\d{3}|[1-9]\\d{4})\$').hasMatch(val)) {
      return 'Price min 500 and max 99999.';
    }
    return null;
  }

  DateTime? datePicked1;
  DateTime? datePicked2;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Description is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    if (!RegExp('^[a-zA-Z.][a-zA-Z0-9 ._-]*\$').hasMatch(val)) {
      return 'Invalid Format';
    }
    return null;
  }

  // State field(s) for firstName widget.
  FocusNode? firstNameFocusNode;
  TextEditingController? firstNameTextController;
  String? Function(BuildContext, String?)? firstNameTextControllerValidator;
  // State field(s) for lastName widget.
  FocusNode? lastNameFocusNode;
  TextEditingController? lastNameTextController;
  String? Function(BuildContext, String?)? lastNameTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for mobileNo widget.
  FocusNode? mobileNoFocusNode;
  TextEditingController? mobileNoTextController;
  String? Function(BuildContext, String?)? mobileNoTextControllerValidator;
  // State field(s) for birthday widget.
  FocusNode? birthdayFocusNode;
  TextEditingController? birthdayTextController;
  String? Function(BuildContext, String?)? birthdayTextControllerValidator;
  // State field(s) for pinCode widget.
  FocusNode? pinCodeFocusNode;
  TextEditingController? pinCodeTextController;
  String? Function(BuildContext, String?)? pinCodeTextControllerValidator;
  String? _pinCodeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 5) {
      return 'Minimum 5 characters are allowed.';
    }
    if (val.length > 10) {
      return 'Maximum 10 characters are allowed.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (getDataFromPinCode)] action in pinCode widget.
  ApiCallResponse? pincodeResponseMobile;
  // State field(s) for country widget.
  FocusNode? countryFocusNode;
  TextEditingController? countryTextController;
  String? Function(BuildContext, String?)? countryTextControllerValidator;
  String? _countryTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for state widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateTextController;
  String? Function(BuildContext, String?)? stateTextControllerValidator;
  String? _stateTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  String? _cityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for locality_dropdown widget.
  String? localityDropdownValue;
  FormFieldController<String>? localityDropdownValueController;
  // State field(s) for locality_field widget.
  FocusNode? localityFieldFocusNode;
  TextEditingController? localityFieldTextController;
  String? Function(BuildContext, String?)? localityFieldTextControllerValidator;
  // State field(s) for flat widget.
  FocusNode? flatFocusNode;
  TextEditingController? flatTextController;
  String? Function(BuildContext, String?)? flatTextControllerValidator;
  String? _flatTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for street widget.
  FocusNode? streetFocusNode;
  TextEditingController? streetTextController;
  String? Function(BuildContext, String?)? streetTextControllerValidator;
  String? _streetTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for landMark widget.
  FocusNode? landMarkFocusNode;
  TextEditingController? landMarkTextController;
  String? Function(BuildContext, String?)? landMarkTextControllerValidator;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    propertyTitleTextControllerValidator =
        _propertyTitleTextControllerValidator;
    propertPricingTextControllerValidator =
        _propertPricingTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
    pinCodeTextControllerValidator = _pinCodeTextControllerValidator;
    countryTextControllerValidator = _countryTextControllerValidator;
    stateTextControllerValidator = _stateTextControllerValidator;
    cityTextControllerValidator = _cityTextControllerValidator;
    flatTextControllerValidator = _flatTextControllerValidator;
    streetTextControllerValidator = _streetTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    propertyTitleFocusNode?.dispose();
    propertyTitleTextController?.dispose();

    propertPricingFocusNode?.dispose();
    propertPricingTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    firstNameFocusNode?.dispose();
    firstNameTextController?.dispose();

    lastNameFocusNode?.dispose();
    lastNameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    mobileNoFocusNode?.dispose();
    mobileNoTextController?.dispose();

    birthdayFocusNode?.dispose();
    birthdayTextController?.dispose();

    pinCodeFocusNode?.dispose();
    pinCodeTextController?.dispose();

    countryFocusNode?.dispose();
    countryTextController?.dispose();

    stateFocusNode?.dispose();
    stateTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    localityFieldFocusNode?.dispose();
    localityFieldTextController?.dispose();

    flatFocusNode?.dispose();
    flatTextController?.dispose();

    streetFocusNode?.dispose();
    streetTextController?.dispose();

    landMarkFocusNode?.dispose();
    landMarkTextController?.dispose();
  }
}
