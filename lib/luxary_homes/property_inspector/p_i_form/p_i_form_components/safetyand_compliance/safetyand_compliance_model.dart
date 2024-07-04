import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'safetyand_compliance_widget.dart' show SafetyandComplianceWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SafetyandComplianceModel
    extends FlutterFlowModel<SafetyandComplianceWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for smokeDetectors widget.
  FormFieldController<String>? smokeDetectorsValueController;
  // State field(s) for fireExtinguishers widget.
  FormFieldController<String>? fireExtinguishersValueController;
  // State field(s) for Securitygaurd widget.
  FormFieldController<String>? securitygaurdValueController;
  // State field(s) for cctv widget.
  FormFieldController<String>? cctvValueController;
  // State field(s) for carbonmonoxideDetector widget.
  FormFieldController<String>? carbonmonoxideDetectorValueController;
  // State field(s) for handrollsAndStaircases widget.
  FormFieldController<String>? handrollsAndStaircasesValueController;
  // State field(s) for Digitaldoorlock widget.
  FormFieldController<String>? digitaldoorlockValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }

  /// Additional helper methods.
  String? get smokeDetectorsValue => smokeDetectorsValueController?.value;
  String? get fireExtinguishersValue => fireExtinguishersValueController?.value;
  String? get securitygaurdValue => securitygaurdValueController?.value;
  String? get cctvValue => cctvValueController?.value;
  String? get carbonmonoxideDetectorValue =>
      carbonmonoxideDetectorValueController?.value;
  String? get handrollsAndStaircasesValue =>
      handrollsAndStaircasesValueController?.value;
  String? get digitaldoorlockValue => digitaldoorlockValueController?.value;
}
