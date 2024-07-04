import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/property_inspector/pi_property_success/pi_property_success_widget.dart';
import 'at_form_copy_widget.dart' show AtFormCopyWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AtFormCopyModel extends FlutterFlowModel<AtFormCopyWidget> {
  ///  Local state fields for this page.

  int? noOfBedRooms = 0;

  int? noOfBathRooms = 0;

  int? otherRooms = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for common_top_bar component.
  late CommonTopBarModel commonTopBarModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode1;
  TextEditingController? propertySizeTextController1;
  String? Function(BuildContext, String?)? propertySizeTextController1Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode2;
  TextEditingController? propertySizeTextController2;
  String? Function(BuildContext, String?)? propertySizeTextController2Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode3;
  TextEditingController? propertySizeTextController3;
  String? Function(BuildContext, String?)? propertySizeTextController3Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController5;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode4;
  TextEditingController? propertySizeTextController4;
  String? Function(BuildContext, String?)? propertySizeTextController4Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController6;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode5;
  TextEditingController? propertySizeTextController5;
  String? Function(BuildContext, String?)? propertySizeTextController5Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController7;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode6;
  TextEditingController? propertySizeTextController6;
  String? Function(BuildContext, String?)? propertySizeTextController6Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController8;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode7;
  TextEditingController? propertySizeTextController7;
  String? Function(BuildContext, String?)? propertySizeTextController7Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController9;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode8;
  TextEditingController? propertySizeTextController8;
  String? Function(BuildContext, String?)? propertySizeTextController8Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController10;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode9;
  TextEditingController? propertySizeTextController9;
  String? Function(BuildContext, String?)? propertySizeTextController9Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController11;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode10;
  TextEditingController? propertySizeTextController10;
  String? Function(BuildContext, String?)?
      propertySizeTextController10Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController12;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode11;
  TextEditingController? propertySizeTextController11;
  String? Function(BuildContext, String?)?
      propertySizeTextController11Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController13;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode12;
  TextEditingController? propertySizeTextController12;
  String? Function(BuildContext, String?)?
      propertySizeTextController12Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController14;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode13;
  TextEditingController? propertySizeTextController13;
  String? Function(BuildContext, String?)?
      propertySizeTextController13Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController15;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode14;
  TextEditingController? propertySizeTextController14;
  String? Function(BuildContext, String?)?
      propertySizeTextController14Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController16;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode15;
  TextEditingController? propertySizeTextController15;
  String? Function(BuildContext, String?)?
      propertySizeTextController15Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController17;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode16;
  TextEditingController? propertySizeTextController16;
  String? Function(BuildContext, String?)?
      propertySizeTextController16Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController18;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode17;
  TextEditingController? propertySizeTextController17;
  String? Function(BuildContext, String?)?
      propertySizeTextController17Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController19;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode18;
  TextEditingController? propertySizeTextController18;
  String? Function(BuildContext, String?)?
      propertySizeTextController18Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController20;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode19;
  TextEditingController? propertySizeTextController19;
  String? Function(BuildContext, String?)?
      propertySizeTextController19Validator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController21;

  // State field(s) for PropertySize widget.
  FocusNode? propertySizeFocusNode20;
  TextEditingController? propertySizeTextController20;
  String? Function(BuildContext, String?)?
      propertySizeTextController20Validator;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? feedbackRTrespMobile;
  // Stores action output result for [Backend Call - API (PI Submit Feedback)] action in Button widget.
  ApiCallResponse? aiSubmitFormFeedbackRespMobile;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    expandableExpandableController1.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    expandableExpandableController2.dispose();
    propertySizeFocusNode1?.dispose();
    propertySizeTextController1?.dispose();

    expandableExpandableController3.dispose();
    propertySizeFocusNode2?.dispose();
    propertySizeTextController2?.dispose();

    expandableExpandableController4.dispose();
    propertySizeFocusNode3?.dispose();
    propertySizeTextController3?.dispose();

    expandableExpandableController5.dispose();
    propertySizeFocusNode4?.dispose();
    propertySizeTextController4?.dispose();

    expandableExpandableController6.dispose();
    propertySizeFocusNode5?.dispose();
    propertySizeTextController5?.dispose();

    expandableExpandableController7.dispose();
    propertySizeFocusNode6?.dispose();
    propertySizeTextController6?.dispose();

    expandableExpandableController8.dispose();
    propertySizeFocusNode7?.dispose();
    propertySizeTextController7?.dispose();

    expandableExpandableController9.dispose();
    propertySizeFocusNode8?.dispose();
    propertySizeTextController8?.dispose();

    expandableExpandableController10.dispose();
    propertySizeFocusNode9?.dispose();
    propertySizeTextController9?.dispose();

    expandableExpandableController11.dispose();
    propertySizeFocusNode10?.dispose();
    propertySizeTextController10?.dispose();

    expandableExpandableController12.dispose();
    propertySizeFocusNode11?.dispose();
    propertySizeTextController11?.dispose();

    expandableExpandableController13.dispose();
    propertySizeFocusNode12?.dispose();
    propertySizeTextController12?.dispose();

    expandableExpandableController14.dispose();
    propertySizeFocusNode13?.dispose();
    propertySizeTextController13?.dispose();

    expandableExpandableController15.dispose();
    propertySizeFocusNode14?.dispose();
    propertySizeTextController14?.dispose();

    expandableExpandableController16.dispose();
    propertySizeFocusNode15?.dispose();
    propertySizeTextController15?.dispose();

    expandableExpandableController17.dispose();
    propertySizeFocusNode16?.dispose();
    propertySizeTextController16?.dispose();

    expandableExpandableController18.dispose();
    propertySizeFocusNode17?.dispose();
    propertySizeTextController17?.dispose();

    expandableExpandableController19.dispose();
    propertySizeFocusNode18?.dispose();
    propertySizeTextController18?.dispose();

    expandableExpandableController20.dispose();
    propertySizeFocusNode19?.dispose();
    propertySizeTextController19?.dispose();

    expandableExpandableController21.dispose();
    propertySizeFocusNode20?.dispose();
    propertySizeTextController20?.dispose();
  }
}
