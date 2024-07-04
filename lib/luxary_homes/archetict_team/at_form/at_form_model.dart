import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/archetict_team/at_property_success/at_property_success_widget.dart';
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
  final formKey = GlobalKey<FormState>();
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
  FocusNode? hvacRenovationFocusNode;
  TextEditingController? hvacRenovationTextController;
  String? Function(BuildContext, String?)?
      hvacRenovationTextControllerValidator;
  // State field(s) for hvac_price widget.
  FocusNode? hvacPriceFocusNode;
  TextEditingController? hvacPriceTextController;
  String? Function(BuildContext, String?)? hvacPriceTextControllerValidator;
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

    hvacRenovationFocusNode?.dispose();
    hvacRenovationTextController?.dispose();

    hvacPriceFocusNode?.dispose();
    hvacPriceTextController?.dispose();

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
}
