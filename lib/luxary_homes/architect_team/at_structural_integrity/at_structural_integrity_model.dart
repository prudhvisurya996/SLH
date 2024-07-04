import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'at_structural_integrity_widget.dart' show AtStructuralIntegrityWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AtStructuralIntegrityModel
    extends FlutterFlowModel<AtStructuralIntegrityWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for propertyLocationFallsUnder widget.
  FormFieldController<String>? propertyLocationFallsUnderValueController;
  // State field(s) for propertyMaintenance widget.
  FormFieldController<String>? propertyMaintenanceValueController;
  // State field(s) for transportationFeasibility widget.
  FormFieldController<String>? transportationFeasibilityValueController;
  // State field(s) for pricingReasonableToTheArea widget.
  FormFieldController<String>? pricingReasonableToTheAreaValueController;
  // State field(s) for localMarketRentPrice widget.
  FocusNode? localMarketRentPriceFocusNode;
  TextEditingController? localMarketRentPriceTextController;
  String? Function(BuildContext, String?)?
      localMarketRentPriceTextControllerValidator;
  // State field(s) for propertyAreaType widget.
  FormFieldController<String>? propertyAreaTypeValueController;
  // State field(s) for publicTransportFrequency widget.
  FormFieldController<String>? publicTransportFrequencyValueController;
  // State field(s) for legalIssues widget.
  FormFieldController<String>? legalIssuesValueController;
  // State field(s) for buninessFeasibility widget.
  FormFieldController<String>? buninessFeasibilityValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Propertylocationfallsunder widget.
  FormFieldController<String>? propertylocationfallsunderValueController;
  // State field(s) for Propertyarealocationtype widget.
  FormFieldController<String>? propertyarealocationtypeValueController;
  // State field(s) for Publictransporttypefrequency widget.
  FormFieldController<String>? publictransporttypefrequencyValueController;
  // State field(s) for Propertymaintenance widget.
  FormFieldController<String>? propertymaintenanceValueController;
  // State field(s) for Transportationfeasibility widget.
  FormFieldController<String>? transportationfeasibilityValueController;
  // State field(s) for Pricingreasonable widget.
  FormFieldController<String>? pricingreasonableValueController;
  // State field(s) for Legalissues widget.
  FormFieldController<String>? legalissuesValueController;
  // State field(s) for Businessfeasibility widget.
  FormFieldController<String>? businessfeasibilityValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    localMarketRentPriceFocusNode?.dispose();
    localMarketRentPriceTextController?.dispose();

    expandableExpandableController2.dispose();
    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }

  /// Additional helper methods.
  String? get propertyLocationFallsUnderValue =>
      propertyLocationFallsUnderValueController?.value;
  String? get propertyMaintenanceValue =>
      propertyMaintenanceValueController?.value;
  String? get transportationFeasibilityValue =>
      transportationFeasibilityValueController?.value;
  String? get pricingReasonableToTheAreaValue =>
      pricingReasonableToTheAreaValueController?.value;
  String? get propertyAreaTypeValue => propertyAreaTypeValueController?.value;
  String? get publicTransportFrequencyValue =>
      publicTransportFrequencyValueController?.value;
  String? get legalIssuesValue => legalIssuesValueController?.value;
  String? get buninessFeasibilityValue =>
      buninessFeasibilityValueController?.value;
  String? get propertylocationfallsunderValue =>
      propertylocationfallsunderValueController?.value;
  String? get propertyarealocationtypeValue =>
      propertyarealocationtypeValueController?.value;
  String? get publictransporttypefrequencyValue =>
      publictransporttypefrequencyValueController?.value;
  String? get propertymaintenanceValue =>
      propertymaintenanceValueController?.value;
  String? get transportationfeasibilityValue =>
      transportationfeasibilityValueController?.value;
  String? get pricingreasonableValue => pricingreasonableValueController?.value;
  String? get legalissuesValue => legalissuesValueController?.value;
  String? get businessfeasibilityValue =>
      businessfeasibilityValueController?.value;
}
