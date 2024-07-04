import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'w_property_hosting_widget.dart' show WPropertyHostingWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WPropertyHostingModel extends FlutterFlowModel<WPropertyHostingWidget> {
  ///  Local state fields for this component.

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

  int index = 0;

  List<String> localities = [];
  void addToLocalities(String item) => localities.add(item);
  void removeFromLocalities(String item) => localities.remove(item);
  void removeAtIndexFromLocalities(int index) => localities.removeAt(index);
  void insertAtIndexInLocalities(int index, String item) =>
      localities.insert(index, item);
  void updateLocalitiesAtIndex(int index, Function(String) updateFn) =>
      localities[index] = updateFn(localities[index]);

  bool? pinTFchange = false;

  bool error = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for PropertyTitle widget.
  FocusNode? propertyTitleFocusNode;
  TextEditingController? propertyTitleTextController;
  String? Function(BuildContext, String?)? propertyTitleTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for PricePerMonth widget.
  FocusNode? pricePerMonthFocusNode;
  TextEditingController? pricePerMonthTextController;
  String? Function(BuildContext, String?)? pricePerMonthTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for propertydescription widget.
  FocusNode? propertydescriptionFocusNode;
  TextEditingController? propertydescriptionTextController;
  String? Function(BuildContext, String?)?
      propertydescriptionTextControllerValidator;
  // State field(s) for pincode widget.
  FocusNode? pincodeFocusNode;
  TextEditingController? pincodeTextController;
  String? Function(BuildContext, String?)? pincodeTextControllerValidator;
  // Stores action output result for [Backend Call - API (getDataFromPinCode)] action in pincode widget.
  ApiCallResponse? pincodeResponseWeb;
  // State field(s) for country widget.
  FocusNode? countryFocusNode;
  TextEditingController? countryTextController;
  String? Function(BuildContext, String?)? countryTextControllerValidator;
  // State field(s) for state widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateTextController;
  String? Function(BuildContext, String?)? stateTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for locality_DropDown widget.
  String? localityDropDownValue;
  FormFieldController<String>? localityDropDownValueController;
  // State field(s) for locality_Field widget.
  final localityFieldKey = GlobalKey();
  FocusNode? localityFieldFocusNode;
  TextEditingController? localityFieldTextController;
  String? localityFieldSelectedOption;
  String? Function(BuildContext, String?)? localityFieldTextControllerValidator;
  // State field(s) for FlatHouseVillanumber widget.
  FocusNode? flatHouseVillanumberFocusNode;
  TextEditingController? flatHouseVillanumberTextController;
  String? Function(BuildContext, String?)?
      flatHouseVillanumberTextControllerValidator;
  // State field(s) for streetAddress widget.
  FocusNode? streetAddressFocusNode;
  TextEditingController? streetAddressTextController;
  String? Function(BuildContext, String?)? streetAddressTextControllerValidator;
  // State field(s) for landmark widget.
  FocusNode? landmarkFocusNode;
  TextEditingController? landmarkTextController;
  String? Function(BuildContext, String?)? landmarkTextControllerValidator;
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    propertyTitleFocusNode?.dispose();
    propertyTitleTextController?.dispose();

    pricePerMonthFocusNode?.dispose();
    pricePerMonthTextController?.dispose();

    propertydescriptionFocusNode?.dispose();
    propertydescriptionTextController?.dispose();

    pincodeFocusNode?.dispose();
    pincodeTextController?.dispose();

    countryFocusNode?.dispose();
    countryTextController?.dispose();

    stateFocusNode?.dispose();
    stateTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    localityFieldFocusNode?.dispose();

    flatHouseVillanumberFocusNode?.dispose();
    flatHouseVillanumberTextController?.dispose();

    streetAddressFocusNode?.dispose();
    streetAddressTextController?.dispose();

    landmarkFocusNode?.dispose();
    landmarkTextController?.dispose();
  }
}
