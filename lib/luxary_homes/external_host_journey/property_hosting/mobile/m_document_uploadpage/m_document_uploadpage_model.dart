import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/external_host_journey/property_hosting/exhost_t_c_component/exhost_t_c_component_widget.dart';
import '/luxary_homes/external_host_journey/property_hosting/mobile/m_request_submit/m_request_submit_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'm_document_uploadpage_widget.dart' show MDocumentUploadpageWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MDocumentUploadpageModel
    extends FlutterFlowModel<MDocumentUploadpageWidget> {
  ///  Local state fields for this page.

  String? govtIdName;

  String? propertyIdname;

  String? selectGovtId;

  String? selectPropDoc;

  bool agreeTC = false;

  FFUploadedFile? govtID;

  FFUploadedFile? propertID;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for CommonTopBar component.
  late CommonTopBarModel commonTopBarModel;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // Stores action output result for [Custom Action - filePicker] action in Button widget.
  FFUploadedFile? filePicker;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // Stores action output result for [Custom Action - filePicker] action in Button widget.
  FFUploadedFile? filePicker2;
  // Stores action output result for [Backend Call - API (Refresh Token API)] action in Button widget.
  ApiCallResponse? refreshTokenExHostProperty;
  // Stores action output result for [Backend Call - API (Ex Host Property)] action in Button widget.
  ApiCallResponse? exHostPropertyResp;
  // Stores action output result for [Backend Call - API (Ex Host Property Second Half)] action in Button widget.
  ApiCallResponse? exHostSecondAPI;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
