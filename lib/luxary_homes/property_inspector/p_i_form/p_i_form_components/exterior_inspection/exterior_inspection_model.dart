import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'exterior_inspection_widget.dart' show ExteriorInspectionWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExteriorInspectionModel
    extends FlutterFlowModel<ExteriorInspectionWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for RoofCondition widget.
  FormFieldController<String>? roofConditionValueController;
  // State field(s) for WindowsandDoors widget.
  FormFieldController<String>? windowsandDoorsValueController;
  // State field(s) for Drivewayandsidewalks widget.
  FormFieldController<String>? drivewayandsidewalksValueController;
  // State field(s) for Buildingpaintingcondition widget.
  FormFieldController<String>? buildingpaintingconditionValueController;
  // State field(s) for flooringCondition widget.
  FormFieldController<String>? flooringConditionValueController;
  // State field(s) for Fireexits widget.
  FormFieldController<String>? fireexitsValueController;
  // State field(s) for WallsandSiding widget.
  FormFieldController<String>? wallsandSidingValueController;
  // State field(s) for Foundationandstructure widget.
  FormFieldController<String>? foundationandstructureValueController;
  // State field(s) for Drainagesystem widget.
  FormFieldController<String>? drainagesystemValueController;
  // State field(s) for Buildingcondition widget.
  FormFieldController<String>? buildingconditionValueController;
  // State field(s) for liftStaircase widget.
  FormFieldController<String>? liftStaircaseValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }

  /// Additional helper methods.
  String? get roofConditionValue => roofConditionValueController?.value;
  String? get windowsandDoorsValue => windowsandDoorsValueController?.value;
  String? get drivewayandsidewalksValue =>
      drivewayandsidewalksValueController?.value;
  String? get buildingpaintingconditionValue =>
      buildingpaintingconditionValueController?.value;
  String? get flooringConditionValue => flooringConditionValueController?.value;
  String? get fireexitsValue => fireexitsValueController?.value;
  String? get wallsandSidingValue => wallsandSidingValueController?.value;
  String? get foundationandstructureValue =>
      foundationandstructureValueController?.value;
  String? get drainagesystemValue => drainagesystemValueController?.value;
  String? get buildingconditionValue => buildingconditionValueController?.value;
  String? get liftStaircaseValue => liftStaircaseValueController?.value;
}
