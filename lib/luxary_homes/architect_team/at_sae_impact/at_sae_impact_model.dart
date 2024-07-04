import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'at_sae_impact_widget.dart' show AtSaeImpactWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AtSaeImpactModel extends FlutterFlowModel<AtSaeImpactWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

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
  // State field(s) for Beachorpoolaccess widget.
  FormFieldController<String>? beachorpoolaccessValueController1;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Playgroundorrecreationalareas widget.
  FormFieldController<String>? playgroundorrecreationalareasValueController;
  // State field(s) for Heatingandairconditioning widget.
  FormFieldController<String>? heatingandairconditioningValueController;
  // State field(s) for Kitchenappliances widget.
  FormFieldController<String>? kitchenappliancesValueController;
  // State field(s) for Internetaccess widget.
  FormFieldController<String>? internetaccessValueController;
  // State field(s) for Petfriendly widget.
  FormFieldController<String>? petfriendlyValueController;
  // State field(s) for Laundryfacilities widget.
  FormFieldController<String>? laundryfacilitiesValueController;
  // State field(s) for Parkingspace widget.
  FormFieldController<String>? parkingspaceValueController;
  // State field(s) for Beachorpoolaccess widget.
  FormFieldController<String>? beachorpoolaccessValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
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
  String? get beachorpoolaccessValue1 =>
      beachorpoolaccessValueController1?.value;
  String? get playgroundorrecreationalareasValue =>
      playgroundorrecreationalareasValueController?.value;
  String? get heatingandairconditioningValue =>
      heatingandairconditioningValueController?.value;
  String? get kitchenappliancesValue => kitchenappliancesValueController?.value;
  String? get internetaccessValue => internetaccessValueController?.value;
  String? get petfriendlyValue => petfriendlyValueController?.value;
  String? get laundryfacilitiesValue => laundryfacilitiesValueController?.value;
  String? get parkingspaceValue => parkingspaceValueController?.value;
  String? get beachorpoolaccessValue2 =>
      beachorpoolaccessValueController2?.value;
}
