import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'business_compliances_widget.dart' show BusinessCompliancesWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BusinessCompliancesModel
    extends FlutterFlowModel<BusinessCompliancesWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    localMarketRentPriceFocusNode?.dispose();
    localMarketRentPriceTextController?.dispose();
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
}
