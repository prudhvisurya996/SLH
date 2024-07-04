import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'amenitie_widget.dart' show AmenitieWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AmenitieModel extends FlutterFlowModel<AmenitieWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Exterior_Inspection widget.
  late ExpandableController exteriorInspectionExpandableController;

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController3;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController4;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController5;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController6;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    exteriorInspectionExpandableController.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
  String? get radioButtonValue3 => radioButtonValueController3?.value;
  String? get radioButtonValue4 => radioButtonValueController4?.value;
  String? get radioButtonValue5 => radioButtonValueController5?.value;
  String? get radioButtonValue6 => radioButtonValueController6?.value;
}
