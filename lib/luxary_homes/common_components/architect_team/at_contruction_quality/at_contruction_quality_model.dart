import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'at_contruction_quality_widget.dart' show AtContructionQualityWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AtContructionQualityModel
    extends FlutterFlowModel<AtContructionQualityWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for RoofCondition widget.
  FormFieldController<String>? roofConditionValueController1;
  // State field(s) for WindowsandDoors widget.
  FormFieldController<String>? windowsandDoorsValueController1;
  // State field(s) for Drivewayandsidewalks widget.
  FormFieldController<String>? drivewayandsidewalksValueController1;
  // State field(s) for Buildingpaintingcondition widget.
  FormFieldController<String>? buildingpaintingconditionValueController1;
  // State field(s) for flooringCondition widget.
  FormFieldController<String>? flooringConditionValueController;
  // State field(s) for Fireexits widget.
  FormFieldController<String>? fireexitsValueController1;
  // State field(s) for WallsandSiding widget.
  FormFieldController<String>? wallsandSidingValueController1;
  // State field(s) for Foundationandstructure widget.
  FormFieldController<String>? foundationandstructureValueController1;
  // State field(s) for Drainagesystem widget.
  FormFieldController<String>? drainagesystemValueController1;
  // State field(s) for Buildingcondition widget.
  FormFieldController<String>? buildingconditionValueController1;
  // State field(s) for liftStaircase widget.
  FormFieldController<String>? liftStaircaseValueController1;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for RoofCondition widget.
  FormFieldController<String>? roofConditionValueController2;
  // State field(s) for WallsandSiding widget.
  FormFieldController<String>? wallsandSidingValueController2;
  // State field(s) for WindowsandDoors widget.
  FormFieldController<String>? windowsandDoorsValueController2;
  // State field(s) for Foundationandstructure widget.
  FormFieldController<String>? foundationandstructureValueController2;
  // State field(s) for Drivewayandsidewalks widget.
  FormFieldController<String>? drivewayandsidewalksValueController2;
  // State field(s) for Drainagesystem widget.
  FormFieldController<String>? drainagesystemValueController2;
  // State field(s) for Buildingpaintingcondition widget.
  FormFieldController<String>? buildingpaintingconditionValueController2;
  // State field(s) for LiftStaircase widget.
  FormFieldController<String>? liftStaircaseValueController2;
  // State field(s) for Buildingcondition widget.
  FormFieldController<String>? buildingconditionValueController2;
  // State field(s) for Flooringcondition widget.
  FormFieldController<String>? flooringconditionValueController;
  // State field(s) for Fireexits widget.
  FormFieldController<String>? fireexitsValueController2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
  }

  /// Additional helper methods.
  String? get roofConditionValue1 => roofConditionValueController1?.value;
  String? get windowsandDoorsValue1 => windowsandDoorsValueController1?.value;
  String? get drivewayandsidewalksValue1 =>
      drivewayandsidewalksValueController1?.value;
  String? get buildingpaintingconditionValue1 =>
      buildingpaintingconditionValueController1?.value;
  String? get flooringConditionValue => flooringConditionValueController?.value;
  String? get fireexitsValue1 => fireexitsValueController1?.value;
  String? get wallsandSidingValue1 => wallsandSidingValueController1?.value;
  String? get foundationandstructureValue1 =>
      foundationandstructureValueController1?.value;
  String? get drainagesystemValue1 => drainagesystemValueController1?.value;
  String? get buildingconditionValue1 =>
      buildingconditionValueController1?.value;
  String? get liftStaircaseValue1 => liftStaircaseValueController1?.value;
  String? get roofConditionValue2 => roofConditionValueController2?.value;
  String? get wallsandSidingValue2 => wallsandSidingValueController2?.value;
  String? get windowsandDoorsValue2 => windowsandDoorsValueController2?.value;
  String? get foundationandstructureValue2 =>
      foundationandstructureValueController2?.value;
  String? get drivewayandsidewalksValue2 =>
      drivewayandsidewalksValueController2?.value;
  String? get drainagesystemValue2 => drainagesystemValueController2?.value;
  String? get buildingpaintingconditionValue2 =>
      buildingpaintingconditionValueController2?.value;
  String? get liftStaircaseValue2 => liftStaircaseValueController2?.value;
  String? get buildingconditionValue2 =>
      buildingconditionValueController2?.value;
  String? get flooringconditionValue => flooringconditionValueController?.value;
  String? get fireexitsValue2 => fireexitsValueController2?.value;
}
