import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pi_interior_inspection_widget.dart' show PiInteriorInspectionWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class PiInteriorInspectionModel
    extends FlutterFlowModel<PiInteriorInspectionWidget> {
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
  // State field(s) for plumbingsystems widget.
  FormFieldController<String>? plumbingsystemsValueController;
  // State field(s) for hvacSystems widget.
  FormFieldController<String>? hvacSystemsValueController;
  // State field(s) for wallsAndCeilings widget.
  FormFieldController<String>? wallsAndCeilingsValueController;
  // State field(s) for electricalSystem widget.
  FormFieldController<String>? electricalSystemValueController;
  // State field(s) for bathroomFixtures widget.
  FormFieldController<String>? bathroomFixturesValueController;
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
  FormFieldController<String>? bathroomfixturesValueController;
  // State field(s) for HVACsystems widget.
  FormFieldController<String>? hVACsystemsValueController;
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
  String? get hvacSystemsValue => hvacSystemsValueController?.value;
  String? get wallsAndCeilingsValue => wallsAndCeilingsValueController?.value;
  String? get electricalSystemValue => electricalSystemValueController?.value;
  String? get bathroomFixturesValue => bathroomFixturesValueController?.value;
  String? get customizableSpaceValue => customizableSpaceValueController?.value;
  String? get flooringValue2 => flooringValueController2?.value;
  String? get wallsandceilingsValue => wallsandceilingsValueController?.value;
  String? get doorsWindowsValue => doorsWindowsValueController?.value;
  String? get electricalsystemValue => electricalsystemValueController?.value;
  String? get plumbingsystemValue => plumbingsystemValueController?.value;
  String? get bathroomfixturesValue => bathroomfixturesValueController?.value;
  String? get hVACsystemsValue => hVACsystemsValueController?.value;
  String? get customizablespaceValue => customizablespaceValueController?.value;
}
