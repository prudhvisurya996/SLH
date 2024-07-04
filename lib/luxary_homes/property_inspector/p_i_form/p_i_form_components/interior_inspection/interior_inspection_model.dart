import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'interior_inspection_widget.dart' show InteriorInspectionWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InteriorInspectionModel
    extends FlutterFlowModel<InteriorInspectionWidget> {
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
  late ExpandableController expandableExpandableController;

  // State field(s) for flooring widget.
  FormFieldController<String>? flooringValueController;
  // State field(s) for doorsAndWindows widget.
  FormFieldController<String>? doorsAndWindowsValueController;
  // State field(s) for Plumbingsystems widget.
  FormFieldController<String>? plumbingsystemsValueController;
  // State field(s) for HVACsystems widget.
  FormFieldController<String>? hVACsystemsValueController;
  // State field(s) for wallsAndCeilings widget.
  FormFieldController<String>? wallsAndCeilingsValueController;
  // State field(s) for electricalSystem widget.
  FormFieldController<String>? electricalSystemValueController;
  // State field(s) for Bathroomfixtures widget.
  FormFieldController<String>? bathroomfixturesValueController;
  // State field(s) for customizableSpace widget.
  FormFieldController<String>? customizableSpaceValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }

  /// Additional helper methods.
  String? get flooringValue => flooringValueController?.value;
  String? get doorsAndWindowsValue => doorsAndWindowsValueController?.value;
  String? get plumbingsystemsValue => plumbingsystemsValueController?.value;
  String? get hVACsystemsValue => hVACsystemsValueController?.value;
  String? get wallsAndCeilingsValue => wallsAndCeilingsValueController?.value;
  String? get electricalSystemValue => electricalSystemValueController?.value;
  String? get bathroomfixturesValue => bathroomfixturesValueController?.value;
  String? get customizableSpaceValue => customizableSpaceValueController?.value;
}
