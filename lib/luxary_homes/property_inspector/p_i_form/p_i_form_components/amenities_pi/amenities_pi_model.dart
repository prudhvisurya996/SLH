import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'amenities_pi_widget.dart' show AmenitiesPiWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AmenitiesPiModel extends FlutterFlowModel<AmenitiesPiWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for kitchenAppliances widget.
  FormFieldController<String>? kitchenAppliancesValueController;
  // State field(s) for heatingAndAirConditioningSystems widget.
  FormFieldController<String>? heatingAndAirConditioningSystemsValueController;
  // State field(s) for parkingSpace widget.
  FormFieldController<String>? parkingSpaceValueController;
  // State field(s) for playGroundOrRecreationalAreas widget.
  FormFieldController<String>? playGroundOrRecreationalAreasValueController;
  // State field(s) for laundryFacilities widget.
  FormFieldController<String>? laundryFacilitiesValueController;
  // State field(s) for internetAccess widget.
  FormFieldController<String>? internetAccessValueController;
  // State field(s) for petFriendly widget.
  FormFieldController<String>? petFriendlyValueController;
  // State field(s) for poolAccess widget.
  FormFieldController<String>? poolAccessValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }

  /// Additional helper methods.
  String? get kitchenAppliancesValue => kitchenAppliancesValueController?.value;
  String? get heatingAndAirConditioningSystemsValue =>
      heatingAndAirConditioningSystemsValueController?.value;
  String? get parkingSpaceValue => parkingSpaceValueController?.value;
  String? get playGroundOrRecreationalAreasValue =>
      playGroundOrRecreationalAreasValueController?.value;
  String? get laundryFacilitiesValue => laundryFacilitiesValueController?.value;
  String? get internetAccessValue => internetAccessValueController?.value;
  String? get petFriendlyValue => petFriendlyValueController?.value;
  String? get poolAccessValue => poolAccessValueController?.value;
}
