import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/external_host_journey/property_hosting/exhost_t_c_component/exhost_t_c_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'w_document_upload_widget.dart' show WDocumentUploadWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WDocumentUploadModel extends FlutterFlowModel<WDocumentUploadWidget> {
  ///  Local state fields for this component.

  FFUploadedFile? govtID;

  String? govtIdName;

  FFUploadedFile? propertyID;

  String? propertyIdName;

  String? selectGovId;

  String? selectPropertyDoc;

  ///  State fields for stateful widgets in this component.

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController1;
  // Stores action output result for [Custom Action - filePicker] action in Button widget.
  FFUploadedFile? filePicker;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController2;
  // Stores action output result for [Custom Action - filePicker] action in Button widget.
  FFUploadedFile? filePickerCertificate;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Additional helper methods.
  String? get radioButtonValue1 => radioButtonValueController1?.value;
  String? get radioButtonValue2 => radioButtonValueController2?.value;
}
