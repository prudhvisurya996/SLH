import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/common_components/architect_team/at_property_success/at_property_success_widget.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
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
  FocusNode? innovationandCreativityFocusNode1;
  TextEditingController? innovationandCreativityTextController1;
  String? Function(BuildContext, String?)?
      innovationandCreativityTextController1Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController5;

  // State field(s) for foundation widget.
  FormFieldController<String>? foundationValueController;
  // State field(s) for framing widget.
  FormFieldController<String>? framingValueController;
  // State field(s) for loadbearingelements widget.
  FormFieldController<String>? loadbearingelementsValueController;
  // State field(s) for StructuralIntegritycmnts widget.
  FocusNode? structuralIntegritycmntsFocusNode1;
  TextEditingController? structuralIntegritycmntsTextController1;
  String? Function(BuildContext, String?)?
      structuralIntegritycmntsTextController1Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController6;

  // State field(s) for energyEfficiency widget.
  FormFieldController<String>? energyEfficiencyValueController;
  // State field(s) for UseofSustainableMaterial widget.
  FormFieldController<String>? useofSustainableMaterialValueController;
  // State field(s) for GreenBuildingPractices widget.
  FormFieldController<String>? greenBuildingPracticesValueController;
  // State field(s) for SustainabilityandEnvironmentalImpactcmnts widget.
  FocusNode? sustainabilityandEnvironmentalImpactcmntsFocusNode1;
  TextEditingController?
      sustainabilityandEnvironmentalImpactcmntsTextController1;
  String? Function(BuildContext, String?)?
      sustainabilityandEnvironmentalImpactcmntsTextController1Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController7;

  // State field(s) for LongevityofMaterials widget.
  FormFieldController<String>? longevityofMaterialsValueController;
  // State field(s) for EaseofMaintenance widget.
  FormFieldController<String>? easeofMaintenanceValueController;
  // State field(s) for MaintenanceandDurabilitycmnt widget.
  FocusNode? maintenanceandDurabilitycmntFocusNode1;
  TextEditingController? maintenanceandDurabilitycmntTextController1;
  String? Function(BuildContext, String?)?
      maintenanceandDurabilitycmntTextController1Validator;
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
  FocusNode? electricalRenovationFocusNode1;
  TextEditingController? electricalRenovationTextController1;
  String? Function(BuildContext, String?)?
      electricalRenovationTextController1Validator;
  // State field(s) for electrical_price widget.
  FocusNode? electricalPriceFocusNode1;
  TextEditingController? electricalPriceTextController1;
  String? Function(BuildContext, String?)?
      electricalPriceTextController1Validator;
  // State field(s) for plumbing_renovation widget.
  FocusNode? plumbingRenovationFocusNode1;
  TextEditingController? plumbingRenovationTextController1;
  String? Function(BuildContext, String?)?
      plumbingRenovationTextController1Validator;
  // State field(s) for plumbing_price widget.
  FocusNode? plumbingPriceFocusNode1;
  TextEditingController? plumbingPriceTextController1;
  String? Function(BuildContext, String?)?
      plumbingPriceTextController1Validator;
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
  FocusNode? flooringRenovationFocusNode1;
  TextEditingController? flooringRenovationTextController1;
  String? Function(BuildContext, String?)?
      flooringRenovationTextController1Validator;
  // State field(s) for flooring_price widget.
  FocusNode? flooringPriceFocusNode1;
  TextEditingController? flooringPriceTextController1;
  String? Function(BuildContext, String?)?
      flooringPriceTextController1Validator;
  // State field(s) for ceiling_renovation widget.
  FocusNode? ceilingRenovationFocusNode1;
  TextEditingController? ceilingRenovationTextController1;
  String? Function(BuildContext, String?)?
      ceilingRenovationTextController1Validator;
  // State field(s) for ceiling_price widget.
  FocusNode? ceilingPriceFocusNode1;
  TextEditingController? ceilingPriceTextController1;
  String? Function(BuildContext, String?)? ceilingPriceTextController1Validator;
  // State field(s) for furnishing_renovation widget.
  FocusNode? furnishingRenovationFocusNode1;
  TextEditingController? furnishingRenovationTextController1;
  String? Function(BuildContext, String?)?
      furnishingRenovationTextController1Validator;
  // State field(s) for furnishing_price widget.
  FocusNode? furnishingPriceFocusNode1;
  TextEditingController? furnishingPriceTextController1;
  String? Function(BuildContext, String?)?
      furnishingPriceTextController1Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController12;

  // State field(s) for ArchitecturalPlancmnts widget.
  FocusNode? architecturalPlancmntsFocusNode1;
  TextEditingController? architecturalPlancmntsTextController1;
  String? Function(BuildContext, String?)?
      architecturalPlancmntsTextController1Validator;
  // Stores action output result for [Custom Action - filePicker] action in ArchitecturalPlanuploadfile widget.
  FFUploadedFile? architectPlanFilePicker;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController13;

  // State field(s) for RenovationTimelineandBudgetcmnts widget.
  FocusNode? renovationTimelineandBudgetcmntsFocusNode1;
  TextEditingController? renovationTimelineandBudgetcmntsTextController1;
  String? Function(BuildContext, String?)?
      renovationTimelineandBudgetcmntsTextController1Validator;
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
  FocusNode? costSavingmeasurescmntsFocusNode1;
  TextEditingController? costSavingmeasurescmntsTextController1;
  String? Function(BuildContext, String?)?
      costSavingmeasurescmntsTextController1Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController14;

  // State field(s) for OwnerApproval widget.
  FormFieldController<String>? ownerApprovalValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController15;

  // State field(s) for overallRating widget.
  FormFieldController<String>? overallRatingValueController;
  // State field(s) for OA_Comments widget.
  FocusNode? oACommentsFocusNode1;
  TextEditingController? oACommentsTextController1;
  String? Function(BuildContext, String?)? oACommentsTextController1Validator;
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
  // State field(s) for monthsweb widget.
  FocusNode? monthswebFocusNode;
  TextEditingController? monthswebTextController;
  String? Function(BuildContext, String?)? monthswebTextControllerValidator;
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
  // State field(s) for InnovationandCreativity widget.
  FocusNode? innovationandCreativityFocusNode2;
  TextEditingController? innovationandCreativityTextController2;
  String? Function(BuildContext, String?)?
      innovationandCreativityTextController2Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController20;

  // State field(s) for foundationweb widget.
  FormFieldController<String>? foundationwebValueController;
  // State field(s) for framingweb widget.
  FormFieldController<String>? framingwebValueController;
  // State field(s) for loadbearingelementsweb widget.
  FormFieldController<String>? loadbearingelementswebValueController;
  // State field(s) for StructuralIntegritycmnts widget.
  FocusNode? structuralIntegritycmntsFocusNode2;
  TextEditingController? structuralIntegritycmntsTextController2;
  String? Function(BuildContext, String?)?
      structuralIntegritycmntsTextController2Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController21;

  // State field(s) for energyEfficiencyweb widget.
  FormFieldController<String>? energyEfficiencywebValueController;
  // State field(s) for UseofSustainableMaterialweb widget.
  FormFieldController<String>? useofSustainableMaterialwebValueController;
  // State field(s) for GreenBuildingPracticesweb widget.
  FormFieldController<String>? greenBuildingPracticeswebValueController;
  // State field(s) for SustainabilityandEnvironmentalImpactcmnts widget.
  FocusNode? sustainabilityandEnvironmentalImpactcmntsFocusNode2;
  TextEditingController?
      sustainabilityandEnvironmentalImpactcmntsTextController2;
  String? Function(BuildContext, String?)?
      sustainabilityandEnvironmentalImpactcmntsTextController2Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController22;

  // State field(s) for LongevityofMaterialsweb widget.
  FormFieldController<String>? longevityofMaterialswebValueController;
  // State field(s) for EaseofMaintenanceweb widget.
  FormFieldController<String>? easeofMaintenancewebValueController;
  // State field(s) for MaintenanceandDurabilitycmnt widget.
  FocusNode? maintenanceandDurabilitycmntFocusNode2;
  TextEditingController? maintenanceandDurabilitycmntTextController2;
  String? Function(BuildContext, String?)?
      maintenanceandDurabilitycmntTextController2Validator;
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

  // State field(s) for electrical_renovation widget.
  FocusNode? electricalRenovationFocusNode2;
  TextEditingController? electricalRenovationTextController2;
  String? Function(BuildContext, String?)?
      electricalRenovationTextController2Validator;
  // State field(s) for electrical_price widget.
  FocusNode? electricalPriceFocusNode2;
  TextEditingController? electricalPriceTextController2;
  String? Function(BuildContext, String?)?
      electricalPriceTextController2Validator;
  // State field(s) for plumbing_renovation widget.
  FocusNode? plumbingRenovationFocusNode2;
  TextEditingController? plumbingRenovationTextController2;
  String? Function(BuildContext, String?)?
      plumbingRenovationTextController2Validator;
  // State field(s) for plumbing_price widget.
  FocusNode? plumbingPriceFocusNode2;
  TextEditingController? plumbingPriceTextController2;
  String? Function(BuildContext, String?)?
      plumbingPriceTextController2Validator;
  // State field(s) for hvac_renovation widget.
  FocusNode? hvacRenovationFocusNode2;
  TextEditingController? hvacRenovationTextController2;
  String? Function(BuildContext, String?)?
      hvacRenovationTextController2Validator;
  // State field(s) for hvac_price widget.
  FocusNode? hvacPriceFocusNode2;
  TextEditingController? hvacPriceTextController2;
  String? Function(BuildContext, String?)? hvacPriceTextController2Validator;
  // State field(s) for flooring_Renovation widget.
  FocusNode? flooringRenovationFocusNode2;
  TextEditingController? flooringRenovationTextController2;
  String? Function(BuildContext, String?)?
      flooringRenovationTextController2Validator;
  // State field(s) for flooring_price widget.
  FocusNode? flooringPriceFocusNode2;
  TextEditingController? flooringPriceTextController2;
  String? Function(BuildContext, String?)?
      flooringPriceTextController2Validator;
  // State field(s) for ceiling_renovation widget.
  FocusNode? ceilingRenovationFocusNode2;
  TextEditingController? ceilingRenovationTextController2;
  String? Function(BuildContext, String?)?
      ceilingRenovationTextController2Validator;
  // State field(s) for ceiling_price widget.
  FocusNode? ceilingPriceFocusNode2;
  TextEditingController? ceilingPriceTextController2;
  String? Function(BuildContext, String?)? ceilingPriceTextController2Validator;
  // State field(s) for furnishing_renovation widget.
  FocusNode? furnishingRenovationFocusNode2;
  TextEditingController? furnishingRenovationTextController2;
  String? Function(BuildContext, String?)?
      furnishingRenovationTextController2Validator;
  // State field(s) for furnishing_price widget.
  FocusNode? furnishingPriceFocusNode2;
  TextEditingController? furnishingPriceTextController2;
  String? Function(BuildContext, String?)?
      furnishingPriceTextController2Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController27;

  // State field(s) for ArchitecturalPlancmnts widget.
  FocusNode? architecturalPlancmntsFocusNode2;
  TextEditingController? architecturalPlancmntsTextController2;
  String? Function(BuildContext, String?)?
      architecturalPlancmntsTextController2Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController28;

  // State field(s) for RenovationTimelineandBudgetcmnts widget.
  FocusNode? renovationTimelineandBudgetcmntsFocusNode2;
  TextEditingController? renovationTimelineandBudgetcmntsTextController2;
  String? Function(BuildContext, String?)?
      renovationTimelineandBudgetcmntsTextController2Validator;
  // State field(s) for costSaving_Areaweb widget.
  FocusNode? costSavingAreawebFocusNode;
  TextEditingController? costSavingAreawebTextController;
  String? Function(BuildContext, String?)?
      costSavingAreawebTextControllerValidator;
  // State field(s) for costSaving_amountweb widget.
  FocusNode? costSavingAmountwebFocusNode;
  TextEditingController? costSavingAmountwebTextController;
  String? Function(BuildContext, String?)?
      costSavingAmountwebTextControllerValidator;
  // State field(s) for Cost-savingmeasurescmnts widget.
  FocusNode? costSavingmeasurescmntsFocusNode2;
  TextEditingController? costSavingmeasurescmntsTextController2;
  String? Function(BuildContext, String?)?
      costSavingmeasurescmntsTextController2Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController29;

  // State field(s) for OwnerApprovalweb widget.
  FormFieldController<String>? ownerApprovalwebValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController30;

  // State field(s) for overallRatingweb widget.
  FormFieldController<String>? overallRatingwebValueController;
  // State field(s) for OA_Comments widget.
  FocusNode? oACommentsFocusNode2;
  TextEditingController? oACommentsTextController2;
  String? Function(BuildContext, String?)? oACommentsTextController2Validator;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    yearsTextControllerValidator = _yearsTextControllerValidator;
    monthsTextControllerValidator = _monthsTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
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
    innovationandCreativityFocusNode1?.dispose();
    innovationandCreativityTextController1?.dispose();

    expandableExpandableController5.dispose();
    structuralIntegritycmntsFocusNode1?.dispose();
    structuralIntegritycmntsTextController1?.dispose();

    expandableExpandableController6.dispose();
    sustainabilityandEnvironmentalImpactcmntsFocusNode1?.dispose();
    sustainabilityandEnvironmentalImpactcmntsTextController1?.dispose();

    expandableExpandableController7.dispose();
    maintenanceandDurabilitycmntFocusNode1?.dispose();
    maintenanceandDurabilitycmntTextController1?.dispose();

    expandableExpandableController8.dispose();
    expandableExpandableController9.dispose();
    expandableExpandableController10.dispose();
    expandableExpandableController11.dispose();
    electricalRenovationFocusNode1?.dispose();
    electricalRenovationTextController1?.dispose();

    electricalPriceFocusNode1?.dispose();
    electricalPriceTextController1?.dispose();

    plumbingRenovationFocusNode1?.dispose();
    plumbingRenovationTextController1?.dispose();

    plumbingPriceFocusNode1?.dispose();
    plumbingPriceTextController1?.dispose();

    hvacRenovationFocusNode1?.dispose();
    hvacRenovationTextController1?.dispose();

    hvacPriceFocusNode1?.dispose();
    hvacPriceTextController1?.dispose();

    flooringRenovationFocusNode1?.dispose();
    flooringRenovationTextController1?.dispose();

    flooringPriceFocusNode1?.dispose();
    flooringPriceTextController1?.dispose();

    ceilingRenovationFocusNode1?.dispose();
    ceilingRenovationTextController1?.dispose();

    ceilingPriceFocusNode1?.dispose();
    ceilingPriceTextController1?.dispose();

    furnishingRenovationFocusNode1?.dispose();
    furnishingRenovationTextController1?.dispose();

    furnishingPriceFocusNode1?.dispose();
    furnishingPriceTextController1?.dispose();

    expandableExpandableController12.dispose();
    architecturalPlancmntsFocusNode1?.dispose();
    architecturalPlancmntsTextController1?.dispose();

    expandableExpandableController13.dispose();
    renovationTimelineandBudgetcmntsFocusNode1?.dispose();
    renovationTimelineandBudgetcmntsTextController1?.dispose();

    costSavingAreaFocusNode?.dispose();
    costSavingAreaTextController?.dispose();

    costSavingAmmountFocusNode?.dispose();
    costSavingAmmountTextController?.dispose();

    costSavingmeasurescmntsFocusNode1?.dispose();
    costSavingmeasurescmntsTextController1?.dispose();

    expandableExpandableController14.dispose();
    expandableExpandableController15.dispose();
    oACommentsFocusNode1?.dispose();
    oACommentsTextController1?.dispose();

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
    innovationandCreativityFocusNode2?.dispose();
    innovationandCreativityTextController2?.dispose();

    expandableExpandableController20.dispose();
    structuralIntegritycmntsFocusNode2?.dispose();
    structuralIntegritycmntsTextController2?.dispose();

    expandableExpandableController21.dispose();
    sustainabilityandEnvironmentalImpactcmntsFocusNode2?.dispose();
    sustainabilityandEnvironmentalImpactcmntsTextController2?.dispose();

    expandableExpandableController22.dispose();
    maintenanceandDurabilitycmntFocusNode2?.dispose();
    maintenanceandDurabilitycmntTextController2?.dispose();

    expandableExpandableController23.dispose();
    expandableExpandableController24.dispose();
    expandableExpandableController25.dispose();
    expandableExpandableController26.dispose();
    electricalRenovationFocusNode2?.dispose();
    electricalRenovationTextController2?.dispose();

    electricalPriceFocusNode2?.dispose();
    electricalPriceTextController2?.dispose();

    plumbingRenovationFocusNode2?.dispose();
    plumbingRenovationTextController2?.dispose();

    plumbingPriceFocusNode2?.dispose();
    plumbingPriceTextController2?.dispose();

    hvacRenovationFocusNode2?.dispose();
    hvacRenovationTextController2?.dispose();

    hvacPriceFocusNode2?.dispose();
    hvacPriceTextController2?.dispose();

    flooringRenovationFocusNode2?.dispose();
    flooringRenovationTextController2?.dispose();

    flooringPriceFocusNode2?.dispose();
    flooringPriceTextController2?.dispose();

    ceilingRenovationFocusNode2?.dispose();
    ceilingRenovationTextController2?.dispose();

    ceilingPriceFocusNode2?.dispose();
    ceilingPriceTextController2?.dispose();

    furnishingRenovationFocusNode2?.dispose();
    furnishingRenovationTextController2?.dispose();

    furnishingPriceFocusNode2?.dispose();
    furnishingPriceTextController2?.dispose();

    expandableExpandableController27.dispose();
    architecturalPlancmntsFocusNode2?.dispose();
    architecturalPlancmntsTextController2?.dispose();

    expandableExpandableController28.dispose();
    renovationTimelineandBudgetcmntsFocusNode2?.dispose();
    renovationTimelineandBudgetcmntsTextController2?.dispose();

    costSavingAreawebFocusNode?.dispose();
    costSavingAreawebTextController?.dispose();

    costSavingAmountwebFocusNode?.dispose();
    costSavingAmountwebTextController?.dispose();

    costSavingmeasurescmntsFocusNode2?.dispose();
    costSavingmeasurescmntsTextController2?.dispose();

    expandableExpandableController29.dispose();
    expandableExpandableController30.dispose();
    oACommentsFocusNode2?.dispose();
    oACommentsTextController2?.dispose();
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
