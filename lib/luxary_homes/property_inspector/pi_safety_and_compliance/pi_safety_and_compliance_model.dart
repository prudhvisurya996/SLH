import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pi_safety_and_compliance_widget.dart' show PiSafetyAndComplianceWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class PiSafetyAndComplianceModel
    extends FlutterFlowModel<PiSafetyAndComplianceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for smokeDetectors widget.
  FormFieldController<String>? smokeDetectorsValueController;
  // State field(s) for fireExtinguishers widget.
  FormFieldController<String>? fireExtinguishersValueController;
  // State field(s) for securityGaurd widget.
  FormFieldController<String>? securityGaurdValueController;
  // State field(s) for cctv widget.
  FormFieldController<String>? cctvValueController1;
  // State field(s) for carbonmonoxideDetector widget.
  FormFieldController<String>? carbonmonoxideDetectorValueController;
  // State field(s) for handrollsAndStaircases widget.
  FormFieldController<String>? handrollsAndStaircasesValueController;
  // State field(s) for digitaldoorlock widget.
  FormFieldController<String>? digitaldoorlockValueController1;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Smokedetectors widget.
  FormFieldController<String>? smokedetectorsValueController;
  // State field(s) for Carbonmonoxidedetectors widget.
  FormFieldController<String>? carbonmonoxidedetectorsValueController;
  // State field(s) for Fireextinguishers widget.
  FormFieldController<String>? fireextinguishersValueController;
  // State field(s) for Handrailsandstaircases widget.
  FormFieldController<String>? handrailsandstaircasesValueController;
  // State field(s) for Digitaldoorlock widget.
  FormFieldController<String>? digitaldoorlockValueController2;
  // State field(s) for CCTV widget.
  FormFieldController<String>? cctvValueController2;
  // State field(s) for Securitygaurd widget.
  FormFieldController<String>? securitygaurdValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
  }

  /// Additional helper methods.
  String? get smokeDetectorsValue => smokeDetectorsValueController?.value;
  String? get fireExtinguishersValue => fireExtinguishersValueController?.value;
  String? get securityGaurdValue => securityGaurdValueController?.value;
  String? get cctvValue1 => cctvValueController1?.value;
  String? get carbonmonoxideDetectorValue =>
      carbonmonoxideDetectorValueController?.value;
  String? get handrollsAndStaircasesValue =>
      handrollsAndStaircasesValueController?.value;
  String? get digitaldoorlockValue1 => digitaldoorlockValueController1?.value;
  String? get smokedetectorsValue => smokedetectorsValueController?.value;
  String? get carbonmonoxidedetectorsValue =>
      carbonmonoxidedetectorsValueController?.value;
  String? get fireextinguishersValue => fireextinguishersValueController?.value;
  String? get handrailsandstaircasesValue =>
      handrailsandstaircasesValueController?.value;
  String? get digitaldoorlockValue2 => digitaldoorlockValueController2?.value;
  String? get cctvValue2 => cctvValueController2?.value;
  String? get securitygaurdValue => securitygaurdValueController?.value;
}
