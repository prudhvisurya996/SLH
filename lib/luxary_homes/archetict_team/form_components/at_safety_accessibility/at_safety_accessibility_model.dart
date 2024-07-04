import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'at_safety_accessibility_widget.dart' show AtSafetyAccessibilityWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AtSafetyAccessibilityModel
    extends FlutterFlowModel<AtSafetyAccessibilityWidget> {
  ///  Local state fields for this component.

  int? noOfBalconies = 0;

  int? noOfDoors = 0;

  int? noOfFans = 0;

  int? noOfLights = 0;

  int? noOfWashrooms = 0;

  int? noOfWashbasins = 0;

  int? noOfShowers = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for flooring widget.
  FormFieldController<String>? flooringValueController1;
  // State field(s) for doorsAndWindows widget.
  FormFieldController<String>? doorsAndWindowsValueController;
  // State field(s) for Plumbingsystems widget.
  FormFieldController<String>? plumbingsystemsValueController;
  // State field(s) for HVACsystems widget.
  FormFieldController<String>? hVACsystemsValueController1;
  // State field(s) for wallsAndCeilings widget.
  FormFieldController<String>? wallsAndCeilingsValueController;
  // State field(s) for electricalSystem widget.
  FormFieldController<String>? electricalSystemValueController;
  // State field(s) for Bathroomfixtures widget.
  FormFieldController<String>? bathroomfixturesValueController1;
  // State field(s) for customizableSpace widget.
  FormFieldController<String>? customizableSpaceValueController;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Flooring widget.
  FormFieldController<String>? flooringValueController2;
  // State field(s) for Wallsandceilings widget.
  FormFieldController<String>? wallsandceilingsValueController;
  // State field(s) for DoorsWindows widget.
  FormFieldController<String>? doorsWindowsValueController;
  // State field(s) for Electricalsystem widget.
  FormFieldController<String>? electricalsystemValueController;
  // State field(s) for Plumbingsystem widget.
  FormFieldController<String>? plumbingsystemValueController;
  // State field(s) for Bathroomfixtures widget.
  FormFieldController<String>? bathroomfixturesValueController2;
  // State field(s) for HVACsystems widget.
  FormFieldController<String>? hVACsystemsValueController2;
  // State field(s) for Customizablespace widget.
  FormFieldController<String>? customizablespaceValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
  }

  /// Additional helper methods.
  String? get flooringValue1 => flooringValueController1?.value;
  String? get doorsAndWindowsValue => doorsAndWindowsValueController?.value;
  String? get plumbingsystemsValue => plumbingsystemsValueController?.value;
  String? get hVACsystemsValue1 => hVACsystemsValueController1?.value;
  String? get wallsAndCeilingsValue => wallsAndCeilingsValueController?.value;
  String? get electricalSystemValue => electricalSystemValueController?.value;
  String? get bathroomfixturesValue1 => bathroomfixturesValueController1?.value;
  String? get customizableSpaceValue => customizableSpaceValueController?.value;
  String? get flooringValue2 => flooringValueController2?.value;
  String? get wallsandceilingsValue => wallsandceilingsValueController?.value;
  String? get doorsWindowsValue => doorsWindowsValueController?.value;
  String? get electricalsystemValue => electricalsystemValueController?.value;
  String? get plumbingsystemValue => plumbingsystemValueController?.value;
  String? get bathroomfixturesValue2 => bathroomfixturesValueController2?.value;
  String? get hVACsystemsValue2 => hVACsystemsValueController2?.value;
  String? get customizablespaceValue => customizablespaceValueController?.value;
}
