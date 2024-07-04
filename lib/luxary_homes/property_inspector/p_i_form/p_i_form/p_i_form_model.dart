import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_login_component/phone_login_component_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/interior_inspection/interior_inspection_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/p_i_form_components/additional_comments_notes/additional_comments_notes_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/p_i_form_components/amenities_pi/amenities_pi_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/p_i_form_components/business_compliances/business_compliances_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/p_i_form_components/doc_verification/doc_verification_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/p_i_form_components/exterior_inspection/exterior_inspection_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/p_i_form_components/property_information/property_information_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/p_i_form_components/safetyand_compliance/safetyand_compliance_widget.dart';
import '/luxary_homes/property_inspector/p_i_form/p_i_form_components/upload_images/upload_images_widget.dart';
import '/luxary_homes/property_inspector/pi_property_success/pi_property_success_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'p_i_form_widget.dart' show PIFormWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PIFormModel extends FlutterFlowModel<PIFormWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CommonTopBar component.
  late CommonTopBarModel commonTopBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for PropertyInformation component.
  late PropertyInformationModel propertyInformationModel;
  // Model for doc_verification component.
  late DocVerificationModel docVerificationModel;
  // Model for exterior_inspection component.
  late ExteriorInspectionModel exteriorInspectionModel;
  // Model for interior_inspection component.
  late InteriorInspectionModel interiorInspectionModel;
  // Model for SafetyandCompliance component.
  late SafetyandComplianceModel safetyandComplianceModel;
  // Model for amenities_pi component.
  late AmenitiesPiModel amenitiesPiModel;
  // Model for BusinessCompliances component.
  late BusinessCompliancesModel businessCompliancesModel;
  // Model for AdditionalComments_Notes component.
  late AdditionalCommentsNotesModel additionalCommentsNotesModel;
  // Model for UploadImages component.
  late UploadImagesModel uploadImagesModel;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? feedbackRTresponse;
  // Stores action output result for [Backend Call - API (PI Submit Feedback)] action in Button widget.
  ApiCallResponse? piSubmitFormFeedbackResp;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    propertyInformationModel =
        createModel(context, () => PropertyInformationModel());
    docVerificationModel = createModel(context, () => DocVerificationModel());
    exteriorInspectionModel =
        createModel(context, () => ExteriorInspectionModel());
    interiorInspectionModel =
        createModel(context, () => InteriorInspectionModel());
    safetyandComplianceModel =
        createModel(context, () => SafetyandComplianceModel());
    amenitiesPiModel = createModel(context, () => AmenitiesPiModel());
    businessCompliancesModel =
        createModel(context, () => BusinessCompliancesModel());
    additionalCommentsNotesModel =
        createModel(context, () => AdditionalCommentsNotesModel());
    uploadImagesModel = createModel(context, () => UploadImagesModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    propertyInformationModel.dispose();
    docVerificationModel.dispose();
    exteriorInspectionModel.dispose();
    interiorInspectionModel.dispose();
    safetyandComplianceModel.dispose();
    amenitiesPiModel.dispose();
    businessCompliancesModel.dispose();
    additionalCommentsNotesModel.dispose();
    uploadImagesModel.dispose();
  }
}
