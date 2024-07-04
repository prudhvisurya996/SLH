import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'doc_verification_widget.dart' show DocVerificationWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DocVerificationModel extends FlutterFlowModel<DocVerificationWidget> {
  ///  Local state fields for this component.

  FFUploadedFile? additionalDocId;

  String? additionalDocName;

  FFUploadedFile? uploadPropertyOwnerPic;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for userPersonalDocument widget.
  FormFieldController<String>? userPersonalDocumentValueController;
  // State field(s) for propertyDocument widget.
  FormFieldController<String>? propertyDocumentValueController;
  // Stores action output result for [Custom Action - filePicker] action in Image widget.
  FFUploadedFile? additionalDocFilePicker;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
  String? get userPersonalDocumentValue =>
      userPersonalDocumentValueController?.value;
  String? get propertyDocumentValue => propertyDocumentValueController?.value;
}
