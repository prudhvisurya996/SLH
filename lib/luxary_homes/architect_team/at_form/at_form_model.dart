import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/architect_team/at_property_success/at_property_success_widget.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/property_inspector/pi_property_success/pi_property_success_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'at_form_widget.dart' show AtFormWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class AtFormModel extends FlutterFlowModel<AtFormWidget> {
  ///  Local state fields for this page.

  int? noOfBedRooms = 0;

  int? noOfBathRooms = 0;

  int? otherRooms = 0;

  List<String> electricalSystemRenovation = [];
  void addToElectricalSystemRenovation(String item) =>
      electricalSystemRenovation.add(item);
  void removeFromElectricalSystemRenovation(String item) =>
      electricalSystemRenovation.remove(item);
  void removeAtIndexFromElectricalSystemRenovation(int index) =>
      electricalSystemRenovation.removeAt(index);
  void insertAtIndexInElectricalSystemRenovation(int index, String item) =>
      electricalSystemRenovation.insert(index, item);
  void updateElectricalSystemRenovationAtIndex(
          int index, Function(String) updateFn) =>
      electricalSystemRenovation[index] =
          updateFn(electricalSystemRenovation[index]);

  List<String> plumbingSystemRenovation = [];
  void addToPlumbingSystemRenovation(String item) =>
      plumbingSystemRenovation.add(item);
  void removeFromPlumbingSystemRenovation(String item) =>
      plumbingSystemRenovation.remove(item);
  void removeAtIndexFromPlumbingSystemRenovation(int index) =>
      plumbingSystemRenovation.removeAt(index);
  void insertAtIndexInPlumbingSystemRenovation(int index, String item) =>
      plumbingSystemRenovation.insert(index, item);
  void updatePlumbingSystemRenovationAtIndex(
          int index, Function(String) updateFn) =>
      plumbingSystemRenovation[index] =
          updateFn(plumbingSystemRenovation[index]);

  List<String> hvacRenovation = [];
  void addToHvacRenovation(String item) => hvacRenovation.add(item);
  void removeFromHvacRenovation(String item) => hvacRenovation.remove(item);
  void removeAtIndexFromHvacRenovation(int index) =>
      hvacRenovation.removeAt(index);
  void insertAtIndexInHvacRenovation(int index, String item) =>
      hvacRenovation.insert(index, item);
  void updateHvacRenovationAtIndex(int index, Function(String) updateFn) =>
      hvacRenovation[index] = updateFn(hvacRenovation[index]);

  List<String> floaringRenovation = [];
  void addToFloaringRenovation(String item) => floaringRenovation.add(item);
  void removeFromFloaringRenovation(String item) =>
      floaringRenovation.remove(item);
  void removeAtIndexFromFloaringRenovation(int index) =>
      floaringRenovation.removeAt(index);
  void insertAtIndexInFloaringRenovation(int index, String item) =>
      floaringRenovation.insert(index, item);
  void updateFloaringRenovationAtIndex(int index, Function(String) updateFn) =>
      floaringRenovation[index] = updateFn(floaringRenovation[index]);

  List<String> ceilingRenovation = [];
  void addToCeilingRenovation(String item) => ceilingRenovation.add(item);
  void removeFromCeilingRenovation(String item) =>
      ceilingRenovation.remove(item);
  void removeAtIndexFromCeilingRenovation(int index) =>
      ceilingRenovation.removeAt(index);
  void insertAtIndexInCeilingRenovation(int index, String item) =>
      ceilingRenovation.insert(index, item);
  void updateCeilingRenovationAtIndex(int index, Function(String) updateFn) =>
      ceilingRenovation[index] = updateFn(ceilingRenovation[index]);

  List<String> furnishingRenovation = [];
  void addToFurnishingRenovation(String item) => furnishingRenovation.add(item);
  void removeFromFurnishingRenovation(String item) =>
      furnishingRenovation.remove(item);
  void removeAtIndexFromFurnishingRenovation(int index) =>
      furnishingRenovation.removeAt(index);
  void insertAtIndexInFurnishingRenovation(int index, String item) =>
      furnishingRenovation.insert(index, item);
  void updateFurnishingRenovationAtIndex(
          int index, Function(String) updateFn) =>
      furnishingRenovation[index] = updateFn(furnishingRenovation[index]);

  List<String> costSavingMeasures = [];
  void addToCostSavingMeasures(String item) => costSavingMeasures.add(item);
  void removeFromCostSavingMeasures(String item) =>
      costSavingMeasures.remove(item);
  void removeAtIndexFromCostSavingMeasures(int index) =>
      costSavingMeasures.removeAt(index);
  void insertAtIndexInCostSavingMeasures(int index, String item) =>
      costSavingMeasures.insert(index, item);
  void updateCostSavingMeasuresAtIndex(int index, Function(String) updateFn) =>
      costSavingMeasures[index] = updateFn(costSavingMeasures[index]);

  List<String> spacialLayout = [];
  void addToSpacialLayout(String item) => spacialLayout.add(item);
  void removeFromSpacialLayout(String item) => spacialLayout.remove(item);
  void removeAtIndexFromSpacialLayout(int index) =>
      spacialLayout.removeAt(index);
  void insertAtIndexInSpacialLayout(int index, String item) =>
      spacialLayout.insert(index, item);
  void updateSpacialLayoutAtIndex(int index, Function(String) updateFn) =>
      spacialLayout[index] = updateFn(spacialLayout[index]);

  FFUploadedFile? propertyPlanDocId;

  String? propertyPlanDocName;

  FFUploadedFile? architectPlanDocId;

  String? architectPlanDocName;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for common_top_bar component.
  late CommonTopBarModel commonTopBarModel;
  // Model for new_top_bar component.
  late NewTopBarModel newTopBarModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for years widget.
  FocusNode? yearsFocusNode;
  TextEditingController? yearsTextController;
  String? Function(BuildContext, String?)? yearsTextControllerValidator;
  String? _yearsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for months widget.
  FocusNode? monthsFocusNode;
  TextEditingController? monthsTextController;
  String? Function(BuildContext, String?)? monthsTextControllerValidator;
  String? _monthsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Custom Action - filePicker] action in PropertyPlanDocID widget.
  FFUploadedFile? propertyplanDocPicker;
  // State field(s) for exteriorDesign widget.
  FormFieldController<String>? exteriorDesignValueController;
  // State field(s) for interiorDesign widget.
  FormFieldController<String>? interiorDesignValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for SafetyforSlipResistance widget.
  FormFieldController<String>? safetyforSlipResistanceValueController;
  // State field(s) for FireExists widget.
  FormFieldController<String>? fireExistsValueController;
  // State field(s) for LivingComfort widget.
  FormFieldController<String>? livingComfortValueController;
  // State field(s) for PestandInsectControl widget.
  FormFieldController<String>? pestandInsectControlValueController;
  // State field(s) for LightVentilation widget.
  FormFieldController<String>? lightVentilationValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for flowofSpaces widget.
  FormFieldController<String>? flowofSpacesValueController;
  // State field(s) for specify_RoomName widget.
  FocusNode? specifyRoomNameFocusNode;
  TextEditingController? specifyRoomNameTextController;
  String? Function(BuildContext, String?)?
      specifyRoomNameTextControllerValidator;
  // State field(s) for specify_RoomSize widget.
  FocusNode? specifyRoomSizeFocusNode;
  TextEditingController? specifyRoomSizeTextController;
  String? Function(BuildContext, String?)?
      specifyRoomSizeTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for InnovationandCreativityoptions widget.
  FormFieldController<String>? innovationandCreativityoptionsValueController;
  // State field(s) for InnovationandCreativity widget.
  FocusNode? innovationandCreativityFocusNode;
  TextEditingController? innovationandCreativityTextController;
  String? Function(BuildContext, String?)?
      innovationandCreativityTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController5;

  // State field(s) for foundation widget.
  FormFieldController<String>? foundationValueController;
  // State field(s) for framing widget.
  FormFieldController<String>? framingValueController;
  // State field(s) for loadbearingelements widget.
  FormFieldController<String>? loadbearingelementsValueController;
  // State field(s) for StructuralIntegritycmnts widget.
  FocusNode? structuralIntegritycmntsFocusNode;
  TextEditingController? structuralIntegritycmntsTextController;
  String? Function(BuildContext, String?)?
      structuralIntegritycmntsTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController6;

  // State field(s) for energyEfficiency widget.
  FormFieldController<String>? energyEfficiencyValueController;
  // State field(s) for UseofSustainableMaterial widget.
  FormFieldController<String>? useofSustainableMaterialValueController;
  // State field(s) for GreenBuildingPractices widget.
  FormFieldController<String>? greenBuildingPracticesValueController;
  // State field(s) for SustainabilityandEnvironmentalImpactcmnts widget.
  FocusNode? sustainabilityandEnvironmentalImpactcmntsFocusNode;
  TextEditingController?
      sustainabilityandEnvironmentalImpactcmntsTextController;
  String? Function(BuildContext, String?)?
      sustainabilityandEnvironmentalImpactcmntsTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController7;

  // State field(s) for LongevityofMaterials widget.
  FormFieldController<String>? longevityofMaterialsValueController;
  // State field(s) for EaseofMaintenance widget.
  FormFieldController<String>? easeofMaintenanceValueController;
  // State field(s) for MaintenanceandDurabilitycmnt widget.
  FocusNode? maintenanceandDurabilitycmntFocusNode;
  TextEditingController? maintenanceandDurabilitycmntTextController;
  String? Function(BuildContext, String?)?
      maintenanceandDurabilitycmntTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController8;

  // State field(s) for CompliancewithBuildingCodes widget.
  FormFieldController<String>? compliancewithBuildingCodesValueController;
  // State field(s) for AccessibilityforPeoplewithDisabilities widget.
  FormFieldController<String>?
      accessibilityforPeoplewithDisabilitiesValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController9;

  // State field(s) for wormanShip widget.
  FormFieldController<String>? wormanShipValueController;
  // State field(s) for MaterialQuality widget.
  FormFieldController<String>? materialQualityValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController10;

  // State field(s) for electricalSystems widget.
  FormFieldController<String>? electricalSystemsValueController;
  // State field(s) for plumbingSystem widget.
  FormFieldController<String>? plumbingSystemValueController;
  // State field(s) for HVACSystem widget.
  FormFieldController<String>? hVACSystemValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController11;

  // State field(s) for electrical_renovation widget.
  FocusNode? electricalRenovationFocusNode;
  TextEditingController? electricalRenovationTextController;
  String? Function(BuildContext, String?)?
      electricalRenovationTextControllerValidator;
  // State field(s) for electrical_price widget.
  FocusNode? electricalPriceFocusNode;
  TextEditingController? electricalPriceTextController;
  String? Function(BuildContext, String?)?
      electricalPriceTextControllerValidator;
  // State field(s) for plumbing_renovation widget.
  FocusNode? plumbingRenovationFocusNode;
  TextEditingController? plumbingRenovationTextController;
  String? Function(BuildContext, String?)?
      plumbingRenovationTextControllerValidator;
  // State field(s) for plumbing_price widget.
  FocusNode? plumbingPriceFocusNode;
  TextEditingController? plumbingPriceTextController;
  String? Function(BuildContext, String?)? plumbingPriceTextControllerValidator;
  // State field(s) for hvac_renovation widget.
  FocusNode? hvacRenovationFocusNode1;
  TextEditingController? hvacRenovationTextController1;
  String? Function(BuildContext, String?)?
      hvacRenovationTextController1Validator;
  // State field(s) for hvac_price widget.
  FocusNode? hvacPriceFocusNode1;
  TextEditingController? hvacPriceTextController1;
  String? Function(BuildContext, String?)? hvacPriceTextController1Validator;
  // State field(s) for flooring_Renovation widget.
  FocusNode? flooringRenovationFocusNode;
  TextEditingController? flooringRenovationTextController;
  String? Function(BuildContext, String?)?
      flooringRenovationTextControllerValidator;
  // State field(s) for flooring_price widget.
  FocusNode? flooringPriceFocusNode;
  TextEditingController? flooringPriceTextController;
  String? Function(BuildContext, String?)? flooringPriceTextControllerValidator;
  // State field(s) for ceiling_renovation widget.
  FocusNode? ceilingRenovationFocusNode;
  TextEditingController? ceilingRenovationTextController;
  String? Function(BuildContext, String?)?
      ceilingRenovationTextControllerValidator;
  // State field(s) for ceiling_price widget.
  FocusNode? ceilingPriceFocusNode;
  TextEditingController? ceilingPriceTextController;
  String? Function(BuildContext, String?)? ceilingPriceTextControllerValidator;
  // State field(s) for furnishing_renovation widget.
  FocusNode? furnishingRenovationFocusNode;
  TextEditingController? furnishingRenovationTextController;
  String? Function(BuildContext, String?)?
      furnishingRenovationTextControllerValidator;
  // State field(s) for furnishing_price widget.
  FocusNode? furnishingPriceFocusNode;
  TextEditingController? furnishingPriceTextController;
  String? Function(BuildContext, String?)?
      furnishingPriceTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController12;

  // State field(s) for ArchitecturalPlancmnts widget.
  FocusNode? architecturalPlancmntsFocusNode;
  TextEditingController? architecturalPlancmntsTextController;
  String? Function(BuildContext, String?)?
      architecturalPlancmntsTextControllerValidator;
  // Stores action output result for [Custom Action - filePicker] action in ArchitecturalPlanuploadfile widget.
  FFUploadedFile? architectPlanFilePicker;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController13;

  // State field(s) for RenovationTimelineandBudgetcmnts widget.
  FocusNode? renovationTimelineandBudgetcmntsFocusNode;
  TextEditingController? renovationTimelineandBudgetcmntsTextController;
  String? Function(BuildContext, String?)?
      renovationTimelineandBudgetcmntsTextControllerValidator;
  // State field(s) for costSaving_Area widget.
  FocusNode? costSavingAreaFocusNode;
  TextEditingController? costSavingAreaTextController;
  String? Function(BuildContext, String?)?
      costSavingAreaTextControllerValidator;
  // State field(s) for costSaving_ammount widget.
  FocusNode? costSavingAmmountFocusNode;
  TextEditingController? costSavingAmmountTextController;
  String? Function(BuildContext, String?)?
      costSavingAmmountTextControllerValidator;
  // State field(s) for Cost-savingmeasurescmnts widget.
  FocusNode? costSavingmeasurescmntsFocusNode;
  TextEditingController? costSavingmeasurescmntsTextController;
  String? Function(BuildContext, String?)?
      costSavingmeasurescmntsTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController14;

  // State field(s) for OwnerApproval widget.
  FormFieldController<String>? ownerApprovalValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController15;

  // State field(s) for overallRating widget.
  FormFieldController<String>? overallRatingValueController;
  // State field(s) for OA_Comments widget.
  FocusNode? oACommentsFocusNode;
  TextEditingController? oACommentsTextController;
  String? Function(BuildContext, String?)? oACommentsTextControllerValidator;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? atFeedbackRTrespMobile;
  // Stores action output result for [Backend Call - API (PI AT Submit Feedback)] action in Button widget.
  ApiCallResponse? architectFeedbackRespMobile;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController16;

  // State field(s) for yearsweb widget.
  FocusNode? yearswebFocusNode;
  TextEditingController? yearswebTextController;
  String? Function(BuildContext, String?)? yearswebTextControllerValidator;
  String? _yearswebTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for monthsweb widget.
  FocusNode? monthswebFocusNode;
  TextEditingController? monthswebTextController;
  String? Function(BuildContext, String?)? monthswebTextControllerValidator;
  String? _monthswebTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Custom Action - filePicker] action in PropertyPlanDocID widget.
  FFUploadedFile? propertyplanDocPickerWeb;
  // State field(s) for exteriorDesignweb widget.
  FormFieldController<String>? exteriorDesignwebValueController;
  // State field(s) for interiorDesignweb widget.
  FormFieldController<String>? interiorDesignwebValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController17;

  // State field(s) for SafetyforSlipResistanceweb widget.
  FormFieldController<String>? safetyforSlipResistancewebValueController;
  // State field(s) for FireExistsweb widget.
  FormFieldController<String>? fireExistswebValueController;
  // State field(s) for LivingComfortweb widget.
  FormFieldController<String>? livingComfortwebValueController;
  // State field(s) for PestandInsectControlweb widget.
  FormFieldController<String>? pestandInsectControlwebValueController;
  // State field(s) for LightVentilationweb widget.
  FormFieldController<String>? lightVentilationwebValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController18;

  // State field(s) for flowofSpacesweb widget.
  FormFieldController<String>? flowofSpaceswebValueController;
  // State field(s) for specify_RoomNameweb widget.
  FocusNode? specifyRoomNamewebFocusNode;
  TextEditingController? specifyRoomNamewebTextController;
  String? Function(BuildContext, String?)?
      specifyRoomNamewebTextControllerValidator;
  // State field(s) for specify_RoomSizeweb widget.
  FocusNode? specifyRoomSizewebFocusNode;
  TextEditingController? specifyRoomSizewebTextController;
  String? Function(BuildContext, String?)?
      specifyRoomSizewebTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController19;

  // State field(s) for InnovationandCreativityoptionsweb widget.
  FormFieldController<String>? innovationandCreativityoptionswebValueController;
  // State field(s) for InnovationandCreativity_web widget.
  FocusNode? innovationandCreativityWebFocusNode;
  TextEditingController? innovationandCreativityWebTextController;
  String? Function(BuildContext, String?)?
      innovationandCreativityWebTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController20;

  // State field(s) for foundationweb widget.
  FormFieldController<String>? foundationwebValueController;
  // State field(s) for framingweb widget.
  FormFieldController<String>? framingwebValueController;
  // State field(s) for loadbearingelementsweb widget.
  FormFieldController<String>? loadbearingelementswebValueController;
  // State field(s) for StructuralIntegritycmnts_web widget.
  FocusNode? structuralIntegritycmntsWebFocusNode;
  TextEditingController? structuralIntegritycmntsWebTextController;
  String? Function(BuildContext, String?)?
      structuralIntegritycmntsWebTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController21;

  // State field(s) for energyEfficiencyweb widget.
  FormFieldController<String>? energyEfficiencywebValueController;
  // State field(s) for UseofSustainableMaterialweb widget.
  FormFieldController<String>? useofSustainableMaterialwebValueController;
  // State field(s) for GreenBuildingPracticesweb widget.
  FormFieldController<String>? greenBuildingPracticeswebValueController;
  // State field(s) for SustainabilityandEnvironmentalImpactcmnts_web widget.
  FocusNode? sustainabilityandEnvironmentalImpactcmntsWebFocusNode;
  TextEditingController?
      sustainabilityandEnvironmentalImpactcmntsWebTextController;
  String? Function(BuildContext, String?)?
      sustainabilityandEnvironmentalImpactcmntsWebTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController22;

  // State field(s) for LongevityofMaterialsweb widget.
  FormFieldController<String>? longevityofMaterialswebValueController;
  // State field(s) for EaseofMaintenanceweb widget.
  FormFieldController<String>? easeofMaintenancewebValueController;
  // State field(s) for MaintenanceandDurabilitycmnt_web widget.
  FocusNode? maintenanceandDurabilitycmntWebFocusNode;
  TextEditingController? maintenanceandDurabilitycmntWebTextController;
  String? Function(BuildContext, String?)?
      maintenanceandDurabilitycmntWebTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController23;

  // State field(s) for CompliancewithBuildingCodesweb widget.
  FormFieldController<String>? compliancewithBuildingCodeswebValueController;
  // State field(s) for AccessibilityforPeoplewithDisabilitiesebw widget.
  FormFieldController<String>?
      accessibilityforPeoplewithDisabilitiesebwValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController24;

  // State field(s) for wormanShipweb widget.
  FormFieldController<String>? wormanShipwebValueController;
  // State field(s) for MaterialQualityweb widget.
  FormFieldController<String>? materialQualitywebValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController25;

  // State field(s) for electricalSystemsweb widget.
  FormFieldController<String>? electricalSystemswebValueController;
  // State field(s) for plumbingSystemweb widget.
  FormFieldController<String>? plumbingSystemwebValueController;
  // State field(s) for HVACSystemweb widget.
  FormFieldController<String>? hVACSystemwebValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController26;

  // State field(s) for electrical_renovation_web widget.
  FocusNode? electricalRenovationWebFocusNode;
  TextEditingController? electricalRenovationWebTextController;
  String? Function(BuildContext, String?)?
      electricalRenovationWebTextControllerValidator;
  // State field(s) for electrical_price_web widget.
  FocusNode? electricalPriceWebFocusNode;
  TextEditingController? electricalPriceWebTextController;
  String? Function(BuildContext, String?)?
      electricalPriceWebTextControllerValidator;
  // State field(s) for plumbing_renovation_web widget.
  FocusNode? plumbingRenovationWebFocusNode;
  TextEditingController? plumbingRenovationWebTextController;
  String? Function(BuildContext, String?)?
      plumbingRenovationWebTextControllerValidator;
  // State field(s) for plumbing_price_web widget.
  FocusNode? plumbingPriceWebFocusNode;
  TextEditingController? plumbingPriceWebTextController;
  String? Function(BuildContext, String?)?
      plumbingPriceWebTextControllerValidator;
  // State field(s) for hvac_renovation widget.
  FocusNode? hvacRenovationFocusNode2;
  TextEditingController? hvacRenovationTextController2;
  String? Function(BuildContext, String?)?
      hvacRenovationTextController2Validator;
  // State field(s) for hvac_price widget.
  FocusNode? hvacPriceFocusNode2;
  TextEditingController? hvacPriceTextController2;
  String? Function(BuildContext, String?)? hvacPriceTextController2Validator;
  // State field(s) for flooring_Renovation_web widget.
  FocusNode? flooringRenovationWebFocusNode;
  TextEditingController? flooringRenovationWebTextController;
  String? Function(BuildContext, String?)?
      flooringRenovationWebTextControllerValidator;
  // State field(s) for flooring_price_web widget.
  FocusNode? flooringPriceWebFocusNode;
  TextEditingController? flooringPriceWebTextController;
  String? Function(BuildContext, String?)?
      flooringPriceWebTextControllerValidator;
  // State field(s) for ceiling_renovation_web widget.
  FocusNode? ceilingRenovationWebFocusNode;
  TextEditingController? ceilingRenovationWebTextController;
  String? Function(BuildContext, String?)?
      ceilingRenovationWebTextControllerValidator;
  // State field(s) for ceiling_price_web widget.
  FocusNode? ceilingPriceWebFocusNode;
  TextEditingController? ceilingPriceWebTextController;
  String? Function(BuildContext, String?)?
      ceilingPriceWebTextControllerValidator;
  // State field(s) for furnishing_renovation_web widget.
  FocusNode? furnishingRenovationWebFocusNode;
  TextEditingController? furnishingRenovationWebTextController;
  String? Function(BuildContext, String?)?
      furnishingRenovationWebTextControllerValidator;
  // State field(s) for furnishing_price_web widget.
  FocusNode? furnishingPriceWebFocusNode;
  TextEditingController? furnishingPriceWebTextController;
  String? Function(BuildContext, String?)?
      furnishingPriceWebTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController27;

  // State field(s) for ArchitecturalPlancmnts_web widget.
  FocusNode? architecturalPlancmntsWebFocusNode;
  TextEditingController? architecturalPlancmntsWebTextController;
  String? Function(BuildContext, String?)?
      architecturalPlancmntsWebTextControllerValidator;
  // Stores action output result for [Custom Action - filePicker] action in ArchitecturalPlanuploadfile widget.
  FFUploadedFile? architectPlanFilePickerWeb;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController28;

  // State field(s) for RenovationTimelineandBudgetcmnts_web widget.
  FocusNode? renovationTimelineandBudgetcmntsWebFocusNode;
  TextEditingController? renovationTimelineandBudgetcmntsWebTextController;
  String? Function(BuildContext, String?)?
      renovationTimelineandBudgetcmntsWebTextControllerValidator;
  // State field(s) for costSaving_AreaWeb widget.
  FocusNode? costSavingAreaWebFocusNode;
  TextEditingController? costSavingAreaWebTextController;
  String? Function(BuildContext, String?)?
      costSavingAreaWebTextControllerValidator;
  // State field(s) for costSaving_amountWeb widget.
  FocusNode? costSavingAmountWebFocusNode;
  TextEditingController? costSavingAmountWebTextController;
  String? Function(BuildContext, String?)?
      costSavingAmountWebTextControllerValidator;
  // State field(s) for Cost-savingmeasurescmnts_web widget.
  FocusNode? costSavingmeasurescmntsWebFocusNode;
  TextEditingController? costSavingmeasurescmntsWebTextController;
  String? Function(BuildContext, String?)?
      costSavingmeasurescmntsWebTextControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController29;

  // State field(s) for OwnerApprovalweb widget.
  FormFieldController<String>? ownerApprovalwebValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController30;

  // State field(s) for overallRatingweb widget.
  FormFieldController<String>? overallRatingwebValueController;
  // State field(s) for OA_Comments_web widget.
  FocusNode? oACommentsWebFocusNode;
  TextEditingController? oACommentsWebTextController;
  String? Function(BuildContext, String?)? oACommentsWebTextControllerValidator;
  String? _oACommentsWebTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? atFeedbackRTresponseWeb;
  // Stores action output result for [Backend Call - API (PI AT Submit Feedback)] action in Button widget.
  ApiCallResponse? architectFeedbackRespWeb;
  // Model for login_form component.
  late LoginFormModel loginFormModel;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    newTopBarModel = createModel(context, () => NewTopBarModel());
    yearsTextControllerValidator = _yearsTextControllerValidator;
    monthsTextControllerValidator = _monthsTextControllerValidator;
    yearswebTextControllerValidator = _yearswebTextControllerValidator;
    monthswebTextControllerValidator = _monthswebTextControllerValidator;
    oACommentsWebTextControllerValidator =
        _oACommentsWebTextControllerValidator;
    loginFormModel = createModel(context, () => LoginFormModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    newTopBarModel.dispose();
    expandableExpandableController1.dispose();
    yearsFocusNode?.dispose();
    yearsTextController?.dispose();

    monthsFocusNode?.dispose();
    monthsTextController?.dispose();

    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    specifyRoomNameFocusNode?.dispose();
    specifyRoomNameTextController?.dispose();

    specifyRoomSizeFocusNode?.dispose();
    specifyRoomSizeTextController?.dispose();

    expandableExpandableController4.dispose();
    innovationandCreativityFocusNode?.dispose();
    innovationandCreativityTextController?.dispose();

    expandableExpandableController5.dispose();
    structuralIntegritycmntsFocusNode?.dispose();
    structuralIntegritycmntsTextController?.dispose();

    expandableExpandableController6.dispose();
    sustainabilityandEnvironmentalImpactcmntsFocusNode?.dispose();
    sustainabilityandEnvironmentalImpactcmntsTextController?.dispose();

    expandableExpandableController7.dispose();
    maintenanceandDurabilitycmntFocusNode?.dispose();
    maintenanceandDurabilitycmntTextController?.dispose();

    expandableExpandableController8.dispose();
    expandableExpandableController9.dispose();
    expandableExpandableController10.dispose();
    expandableExpandableController11.dispose();
    electricalRenovationFocusNode?.dispose();
    electricalRenovationTextController?.dispose();

    electricalPriceFocusNode?.dispose();
    electricalPriceTextController?.dispose();

    plumbingRenovationFocusNode?.dispose();
    plumbingRenovationTextController?.dispose();

    plumbingPriceFocusNode?.dispose();
    plumbingPriceTextController?.dispose();

    hvacRenovationFocusNode1?.dispose();
    hvacRenovationTextController1?.dispose();

    hvacPriceFocusNode1?.dispose();
    hvacPriceTextController1?.dispose();

    flooringRenovationFocusNode?.dispose();
    flooringRenovationTextController?.dispose();

    flooringPriceFocusNode?.dispose();
    flooringPriceTextController?.dispose();

    ceilingRenovationFocusNode?.dispose();
    ceilingRenovationTextController?.dispose();

    ceilingPriceFocusNode?.dispose();
    ceilingPriceTextController?.dispose();

    furnishingRenovationFocusNode?.dispose();
    furnishingRenovationTextController?.dispose();

    furnishingPriceFocusNode?.dispose();
    furnishingPriceTextController?.dispose();

    expandableExpandableController12.dispose();
    architecturalPlancmntsFocusNode?.dispose();
    architecturalPlancmntsTextController?.dispose();

    expandableExpandableController13.dispose();
    renovationTimelineandBudgetcmntsFocusNode?.dispose();
    renovationTimelineandBudgetcmntsTextController?.dispose();

    costSavingAreaFocusNode?.dispose();
    costSavingAreaTextController?.dispose();

    costSavingAmmountFocusNode?.dispose();
    costSavingAmmountTextController?.dispose();

    costSavingmeasurescmntsFocusNode?.dispose();
    costSavingmeasurescmntsTextController?.dispose();

    expandableExpandableController14.dispose();
    expandableExpandableController15.dispose();
    oACommentsFocusNode?.dispose();
    oACommentsTextController?.dispose();

    expandableExpandableController16.dispose();
    yearswebFocusNode?.dispose();
    yearswebTextController?.dispose();

    monthswebFocusNode?.dispose();
    monthswebTextController?.dispose();

    expandableExpandableController17.dispose();
    expandableExpandableController18.dispose();
    specifyRoomNamewebFocusNode?.dispose();
    specifyRoomNamewebTextController?.dispose();

    specifyRoomSizewebFocusNode?.dispose();
    specifyRoomSizewebTextController?.dispose();

    expandableExpandableController19.dispose();
    innovationandCreativityWebFocusNode?.dispose();
    innovationandCreativityWebTextController?.dispose();

    expandableExpandableController20.dispose();
    structuralIntegritycmntsWebFocusNode?.dispose();
    structuralIntegritycmntsWebTextController?.dispose();

    expandableExpandableController21.dispose();
    sustainabilityandEnvironmentalImpactcmntsWebFocusNode?.dispose();
    sustainabilityandEnvironmentalImpactcmntsWebTextController?.dispose();

    expandableExpandableController22.dispose();
    maintenanceandDurabilitycmntWebFocusNode?.dispose();
    maintenanceandDurabilitycmntWebTextController?.dispose();

    expandableExpandableController23.dispose();
    expandableExpandableController24.dispose();
    expandableExpandableController25.dispose();
    expandableExpandableController26.dispose();
    electricalRenovationWebFocusNode?.dispose();
    electricalRenovationWebTextController?.dispose();

    electricalPriceWebFocusNode?.dispose();
    electricalPriceWebTextController?.dispose();

    plumbingRenovationWebFocusNode?.dispose();
    plumbingRenovationWebTextController?.dispose();

    plumbingPriceWebFocusNode?.dispose();
    plumbingPriceWebTextController?.dispose();

    hvacRenovationFocusNode2?.dispose();
    hvacRenovationTextController2?.dispose();

    hvacPriceFocusNode2?.dispose();
    hvacPriceTextController2?.dispose();

    flooringRenovationWebFocusNode?.dispose();
    flooringRenovationWebTextController?.dispose();

    flooringPriceWebFocusNode?.dispose();
    flooringPriceWebTextController?.dispose();

    ceilingRenovationWebFocusNode?.dispose();
    ceilingRenovationWebTextController?.dispose();

    ceilingPriceWebFocusNode?.dispose();
    ceilingPriceWebTextController?.dispose();

    furnishingRenovationWebFocusNode?.dispose();
    furnishingRenovationWebTextController?.dispose();

    furnishingPriceWebFocusNode?.dispose();
    furnishingPriceWebTextController?.dispose();

    expandableExpandableController27.dispose();
    architecturalPlancmntsWebFocusNode?.dispose();
    architecturalPlancmntsWebTextController?.dispose();

    expandableExpandableController28.dispose();
    renovationTimelineandBudgetcmntsWebFocusNode?.dispose();
    renovationTimelineandBudgetcmntsWebTextController?.dispose();

    costSavingAreaWebFocusNode?.dispose();
    costSavingAreaWebTextController?.dispose();

    costSavingAmountWebFocusNode?.dispose();
    costSavingAmountWebTextController?.dispose();

    costSavingmeasurescmntsWebFocusNode?.dispose();
    costSavingmeasurescmntsWebTextController?.dispose();

    expandableExpandableController29.dispose();
    expandableExpandableController30.dispose();
    oACommentsWebFocusNode?.dispose();
    oACommentsWebTextController?.dispose();

    loginFormModel.dispose();
  }

  /// Additional helper methods.
  String? get exteriorDesignValue => exteriorDesignValueController?.value;
  String? get interiorDesignValue => interiorDesignValueController?.value;
  String? get safetyforSlipResistanceValue =>
      safetyforSlipResistanceValueController?.value;
  String? get fireExistsValue => fireExistsValueController?.value;
  String? get livingComfortValue => livingComfortValueController?.value;
  String? get pestandInsectControlValue =>
      pestandInsectControlValueController?.value;
  String? get lightVentilationValue => lightVentilationValueController?.value;
  String? get flowofSpacesValue => flowofSpacesValueController?.value;
  String? get innovationandCreativityoptionsValue =>
      innovationandCreativityoptionsValueController?.value;
  String? get foundationValue => foundationValueController?.value;
  String? get framingValue => framingValueController?.value;
  String? get loadbearingelementsValue =>
      loadbearingelementsValueController?.value;
  String? get energyEfficiencyValue => energyEfficiencyValueController?.value;
  String? get useofSustainableMaterialValue =>
      useofSustainableMaterialValueController?.value;
  String? get greenBuildingPracticesValue =>
      greenBuildingPracticesValueController?.value;
  String? get longevityofMaterialsValue =>
      longevityofMaterialsValueController?.value;
  String? get easeofMaintenanceValue => easeofMaintenanceValueController?.value;
  String? get compliancewithBuildingCodesValue =>
      compliancewithBuildingCodesValueController?.value;
  String? get accessibilityforPeoplewithDisabilitiesValue =>
      accessibilityforPeoplewithDisabilitiesValueController?.value;
  String? get wormanShipValue => wormanShipValueController?.value;
  String? get materialQualityValue => materialQualityValueController?.value;
  String? get electricalSystemsValue => electricalSystemsValueController?.value;
  String? get plumbingSystemValue => plumbingSystemValueController?.value;
  String? get hVACSystemValue => hVACSystemValueController?.value;
  String? get ownerApprovalValue => ownerApprovalValueController?.value;
  String? get overallRatingValue => overallRatingValueController?.value;
  String? get exteriorDesignwebValue => exteriorDesignwebValueController?.value;
  String? get interiorDesignwebValue => interiorDesignwebValueController?.value;
  String? get safetyforSlipResistancewebValue =>
      safetyforSlipResistancewebValueController?.value;
  String? get fireExistswebValue => fireExistswebValueController?.value;
  String? get livingComfortwebValue => livingComfortwebValueController?.value;
  String? get pestandInsectControlwebValue =>
      pestandInsectControlwebValueController?.value;
  String? get lightVentilationwebValue =>
      lightVentilationwebValueController?.value;
  String? get flowofSpaceswebValue => flowofSpaceswebValueController?.value;
  String? get innovationandCreativityoptionswebValue =>
      innovationandCreativityoptionswebValueController?.value;
  String? get foundationwebValue => foundationwebValueController?.value;
  String? get framingwebValue => framingwebValueController?.value;
  String? get loadbearingelementswebValue =>
      loadbearingelementswebValueController?.value;
  String? get energyEfficiencywebValue =>
      energyEfficiencywebValueController?.value;
  String? get useofSustainableMaterialwebValue =>
      useofSustainableMaterialwebValueController?.value;
  String? get greenBuildingPracticeswebValue =>
      greenBuildingPracticeswebValueController?.value;
  String? get longevityofMaterialswebValue =>
      longevityofMaterialswebValueController?.value;
  String? get easeofMaintenancewebValue =>
      easeofMaintenancewebValueController?.value;
  String? get compliancewithBuildingCodeswebValue =>
      compliancewithBuildingCodeswebValueController?.value;
  String? get accessibilityforPeoplewithDisabilitiesebwValue =>
      accessibilityforPeoplewithDisabilitiesebwValueController?.value;
  String? get wormanShipwebValue => wormanShipwebValueController?.value;
  String? get materialQualitywebValue =>
      materialQualitywebValueController?.value;
  String? get electricalSystemswebValue =>
      electricalSystemswebValueController?.value;
  String? get plumbingSystemwebValue => plumbingSystemwebValueController?.value;
  String? get hVACSystemwebValue => hVACSystemwebValueController?.value;
  String? get ownerApprovalwebValue => ownerApprovalwebValueController?.value;
  String? get overallRatingwebValue => overallRatingwebValueController?.value;
}
