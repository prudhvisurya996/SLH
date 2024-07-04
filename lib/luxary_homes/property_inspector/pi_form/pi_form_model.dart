import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/property_inspector/pi_additional_comments/pi_additional_comments_widget.dart';
import '/luxary_homes/property_inspector/pi_amenities/pi_amenities_widget.dart';
import '/luxary_homes/property_inspector/pi_business_compliances/pi_business_compliances_widget.dart';
import '/luxary_homes/property_inspector/pi_document_verification/pi_document_verification_widget.dart';
import '/luxary_homes/property_inspector/pi_exterior_inspection/pi_exterior_inspection_widget.dart';
import '/luxary_homes/property_inspector/pi_interior_inspection/pi_interior_inspection_widget.dart';
import '/luxary_homes/property_inspector/pi_property_information/pi_property_information_widget.dart';
import '/luxary_homes/property_inspector/pi_property_success/pi_property_success_widget.dart';
import '/luxary_homes/property_inspector/pi_safety_and_compliance/pi_safety_and_compliance_widget.dart';
import '/luxary_homes/property_inspector/pi_upload_images/pi_upload_images_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'pi_form_widget.dart' show PiFormWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PiFormModel extends FlutterFlowModel<PiFormWidget> {
  ///  Local state fields for this page.

  List<String> hvhjv = [];
  void addToHvhjv(String item) => hvhjv.add(item);
  void removeFromHvhjv(String item) => hvhjv.remove(item);
  void removeAtIndexFromHvhjv(int index) => hvhjv.removeAt(index);
  void insertAtIndexInHvhjv(int index, String item) =>
      hvhjv.insert(index, item);
  void updateHvhjvAtIndex(int index, Function(String) updateFn) =>
      hvhjv[index] = updateFn(hvhjv[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for common_top_bar component.
  late CommonTopBarModel commonTopBarModel;
  // Model for pi_property_information component.
  late PiPropertyInformationModel piPropertyInformationModel1;
  // Model for pi_document_verification component.
  late PiDocumentVerificationModel piDocumentVerificationModel1;
  // Model for pi_exterior_inspection component.
  late PiExteriorInspectionModel piExteriorInspectionModel1;
  // Model for pi_interior_inspection component.
  late PiInteriorInspectionModel piInteriorInspectionModel1;
  // Model for pi_safety_and_compliance component.
  late PiSafetyAndComplianceModel piSafetyAndComplianceModel1;
  // Model for pi_amenities component.
  late PiAmenitiesModel piAmenitiesModel1;
  // Model for pi_business_compliances component.
  late PiBusinessCompliancesModel piBusinessCompliancesModel1;
  // Model for pi_upload_images component.
  late PiUploadImagesModel piUploadImagesModel1;
  // Model for pi_additional_comments component.
  late PiAdditionalCommentsModel piAdditionalCommentsModel;
  // Model for pi_property_information component.
  late PiPropertyInformationModel piPropertyInformationModel2;
  // Model for pi_document_verification component.
  late PiDocumentVerificationModel piDocumentVerificationModel2;
  // Model for pi_exterior_inspection component.
  late PiExteriorInspectionModel piExteriorInspectionModel2;
  // Model for pi_interior_inspection component.
  late PiInteriorInspectionModel piInteriorInspectionModel2;
  // Model for pi_safety_and_compliance component.
  late PiSafetyAndComplianceModel piSafetyAndComplianceModel2;
  // Model for pi_amenities component.
  late PiAmenitiesModel piAmenitiesModel2;
  // Model for pi_business_compliances component.
  late PiBusinessCompliancesModel piBusinessCompliancesModel2;
  // Model for pi_upload_images component.
  late PiUploadImagesModel piUploadImagesModel2;
  // State field(s) for AdditionalComments widget.
  FocusNode? additionalCommentsFocusNode;
  TextEditingController? additionalCommentsTextController;
  String? Function(BuildContext, String?)?
      additionalCommentsTextControllerValidator;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? feedbackRTrespMobile;
  // Stores action output result for [Backend Call - API (PI AT Submit Feedback)] action in Button widget.
  ApiCallResponse? piSubmitFormFeedbackRespMobile;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? feedbackRTresponse;
  // Stores action output result for [Backend Call - API (PI AT Submit Feedback)] action in Button widget.
  ApiCallResponse? piSubmitFormFeedbackRes;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    piPropertyInformationModel1 =
        createModel(context, () => PiPropertyInformationModel());
    piDocumentVerificationModel1 =
        createModel(context, () => PiDocumentVerificationModel());
    piExteriorInspectionModel1 =
        createModel(context, () => PiExteriorInspectionModel());
    piInteriorInspectionModel1 =
        createModel(context, () => PiInteriorInspectionModel());
    piSafetyAndComplianceModel1 =
        createModel(context, () => PiSafetyAndComplianceModel());
    piAmenitiesModel1 = createModel(context, () => PiAmenitiesModel());
    piBusinessCompliancesModel1 =
        createModel(context, () => PiBusinessCompliancesModel());
    piUploadImagesModel1 = createModel(context, () => PiUploadImagesModel());
    piAdditionalCommentsModel =
        createModel(context, () => PiAdditionalCommentsModel());
    piPropertyInformationModel2 =
        createModel(context, () => PiPropertyInformationModel());
    piDocumentVerificationModel2 =
        createModel(context, () => PiDocumentVerificationModel());
    piExteriorInspectionModel2 =
        createModel(context, () => PiExteriorInspectionModel());
    piInteriorInspectionModel2 =
        createModel(context, () => PiInteriorInspectionModel());
    piSafetyAndComplianceModel2 =
        createModel(context, () => PiSafetyAndComplianceModel());
    piAmenitiesModel2 = createModel(context, () => PiAmenitiesModel());
    piBusinessCompliancesModel2 =
        createModel(context, () => PiBusinessCompliancesModel());
    piUploadImagesModel2 = createModel(context, () => PiUploadImagesModel());
    piPropertyInformationModel1.propertySizeSqftTextControllerValidator =
        _formTextFieldValidator21;
    piBusinessCompliancesModel1.localMarketRentPriceTextControllerValidator =
        _formTextFieldValidator22;
    piPropertyInformationModel2.propertySizeFieldTextControllerValidator =
        _formTextFieldValidator11;
    piBusinessCompliancesModel2.localmarketrentpriceTextControllerValidator =
        _formTextFieldValidator12;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    piPropertyInformationModel1.dispose();
    piDocumentVerificationModel1.dispose();
    piExteriorInspectionModel1.dispose();
    piInteriorInspectionModel1.dispose();
    piSafetyAndComplianceModel1.dispose();
    piAmenitiesModel1.dispose();
    piBusinessCompliancesModel1.dispose();
    piUploadImagesModel1.dispose();
    piAdditionalCommentsModel.dispose();
    piPropertyInformationModel2.dispose();
    piDocumentVerificationModel2.dispose();
    piExteriorInspectionModel2.dispose();
    piInteriorInspectionModel2.dispose();
    piSafetyAndComplianceModel2.dispose();
    piAmenitiesModel2.dispose();
    piBusinessCompliancesModel2.dispose();
    piUploadImagesModel2.dispose();
    additionalCommentsFocusNode?.dispose();
    additionalCommentsTextController?.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator21(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  String? _formTextFieldValidator22(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  String? _formTextFieldValidator11(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  String? _formTextFieldValidator12(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }
}
