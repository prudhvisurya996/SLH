import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'renovation_scope_widget.dart' show RenovationScopeWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RenovationScopeModel extends FlutterFlowModel<RenovationScopeWidget> {
  ///  Local state fields for this component.

  int? es = 0;

  RenovationFieldsStruct? isRenovationFeilds;
  void updateIsRenovationFeildsStruct(
          Function(RenovationFieldsStruct) updateFn) =>
      updateFn(isRenovationFeilds ??= RenovationFieldsStruct());

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for TextField1_1 widget.
  FocusNode? textField11FocusNode1;
  TextEditingController? textField11TextController1;
  String? Function(BuildContext, String?)? textField11TextController1Validator;
  // State field(s) for TextField1_2 widget.
  FocusNode? textField12FocusNode1;
  TextEditingController? textField12TextController1;
  String? Function(BuildContext, String?)? textField12TextController1Validator;
  // State field(s) for textField2_1 widget.
  FocusNode? textField21FocusNode1;
  TextEditingController? textField21TextController1;
  String? Function(BuildContext, String?)? textField21TextController1Validator;
  // State field(s) for textField2_2 widget.
  FocusNode? textField22FocusNode1;
  TextEditingController? textField22TextController1;
  String? Function(BuildContext, String?)? textField22TextController1Validator;
  // State field(s) for textField3_1 widget.
  FocusNode? textField31FocusNode1;
  TextEditingController? textField31TextController1;
  String? Function(BuildContext, String?)? textField31TextController1Validator;
  // State field(s) for TextField3_2 widget.
  FocusNode? textField32FocusNode1;
  TextEditingController? textField32TextController1;
  String? Function(BuildContext, String?)? textField32TextController1Validator;
  // State field(s) for textField4_1 widget.
  FocusNode? textField41FocusNode1;
  TextEditingController? textField41TextController1;
  String? Function(BuildContext, String?)? textField41TextController1Validator;
  // State field(s) for TextField4_2 widget.
  FocusNode? textField42FocusNode1;
  TextEditingController? textField42TextController1;
  String? Function(BuildContext, String?)? textField42TextController1Validator;
  // State field(s) for textField5_1 widget.
  FocusNode? textField51FocusNode1;
  TextEditingController? textField51TextController1;
  String? Function(BuildContext, String?)? textField51TextController1Validator;
  // State field(s) for TextField5_2 widget.
  FocusNode? textField52FocusNode1;
  TextEditingController? textField52TextController1;
  String? Function(BuildContext, String?)? textField52TextController1Validator;
  // State field(s) for TextField1_1 widget.
  FocusNode? textField11FocusNode2;
  TextEditingController? textField11TextController2;
  String? Function(BuildContext, String?)? textField11TextController2Validator;
  // State field(s) for TextField1_2 widget.
  FocusNode? textField12FocusNode2;
  TextEditingController? textField12TextController2;
  String? Function(BuildContext, String?)? textField12TextController2Validator;
  // State field(s) for textField2_1 widget.
  FocusNode? textField21FocusNode2;
  TextEditingController? textField21TextController2;
  String? Function(BuildContext, String?)? textField21TextController2Validator;
  // State field(s) for textField2_2 widget.
  FocusNode? textField22FocusNode2;
  TextEditingController? textField22TextController2;
  String? Function(BuildContext, String?)? textField22TextController2Validator;
  // State field(s) for textField3_1 widget.
  FocusNode? textField31FocusNode2;
  TextEditingController? textField31TextController2;
  String? Function(BuildContext, String?)? textField31TextController2Validator;
  // State field(s) for TextField3_2 widget.
  FocusNode? textField32FocusNode2;
  TextEditingController? textField32TextController2;
  String? Function(BuildContext, String?)? textField32TextController2Validator;
  // State field(s) for textField4_1 widget.
  FocusNode? textField41FocusNode2;
  TextEditingController? textField41TextController2;
  String? Function(BuildContext, String?)? textField41TextController2Validator;
  // State field(s) for TextField4_2 widget.
  FocusNode? textField42FocusNode2;
  TextEditingController? textField42TextController2;
  String? Function(BuildContext, String?)? textField42TextController2Validator;
  // State field(s) for textField5_1 widget.
  FocusNode? textField51FocusNode2;
  TextEditingController? textField51TextController2;
  String? Function(BuildContext, String?)? textField51TextController2Validator;
  // State field(s) for TextField5_2 widget.
  FocusNode? textField52FocusNode2;
  TextEditingController? textField52TextController2;
  String? Function(BuildContext, String?)? textField52TextController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
    textField11FocusNode1?.dispose();
    textField11TextController1?.dispose();

    textField12FocusNode1?.dispose();
    textField12TextController1?.dispose();

    textField21FocusNode1?.dispose();
    textField21TextController1?.dispose();

    textField22FocusNode1?.dispose();
    textField22TextController1?.dispose();

    textField31FocusNode1?.dispose();
    textField31TextController1?.dispose();

    textField32FocusNode1?.dispose();
    textField32TextController1?.dispose();

    textField41FocusNode1?.dispose();
    textField41TextController1?.dispose();

    textField42FocusNode1?.dispose();
    textField42TextController1?.dispose();

    textField51FocusNode1?.dispose();
    textField51TextController1?.dispose();

    textField52FocusNode1?.dispose();
    textField52TextController1?.dispose();

    textField11FocusNode2?.dispose();
    textField11TextController2?.dispose();

    textField12FocusNode2?.dispose();
    textField12TextController2?.dispose();

    textField21FocusNode2?.dispose();
    textField21TextController2?.dispose();

    textField22FocusNode2?.dispose();
    textField22TextController2?.dispose();

    textField31FocusNode2?.dispose();
    textField31TextController2?.dispose();

    textField32FocusNode2?.dispose();
    textField32TextController2?.dispose();

    textField41FocusNode2?.dispose();
    textField41TextController2?.dispose();

    textField42FocusNode2?.dispose();
    textField42TextController2?.dispose();

    textField51FocusNode2?.dispose();
    textField51TextController2?.dispose();

    textField52FocusNode2?.dispose();
    textField52TextController2?.dispose();
  }
}
