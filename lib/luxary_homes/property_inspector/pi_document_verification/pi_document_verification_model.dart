import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'pi_document_verification_widget.dart' show PiDocumentVerificationWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class PiDocumentVerificationModel
    extends FlutterFlowModel<PiDocumentVerificationWidget> {
  ///  Local state fields for this component.

  FFUploadedFile? additionalDocId;

  String? additionalDocName;

  FFUploadedFile? uploadPropertyOwnerPic;

  ///  State fields for stateful widgets in this component.

  // State field(s) for web_Expandable widget.
  late ExpandableController webExpandableExpandableController;

  // State field(s) for userPersonalDocument widget.
  FormFieldController<String>? userPersonalDocumentValueController;
  // State field(s) for propertyDocument widget.
  FormFieldController<String>? propertyDocumentValueController;
  // Stores action output result for [Custom Action - filePicker] action in Image widget.
  FFUploadedFile? additionalDocFilePicker;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for mobile_Expandable widget.
  late ExpandableController mobileExpandableExpandableController;

  // State field(s) for Personaldocumentsverified widget.
  FormFieldController<String>? personaldocumentsverifiedValueController;
  // State field(s) for Propertydocumentsverified widget.
  FormFieldController<String>? propertydocumentsverifiedValueController;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Custom Action - filePicker] action in Container widget.
  FFUploadedFile? additionalFilePickerMobile1;
  // Stores action output result for [Custom Action - filePicker] action in Image widget.
  FFUploadedFile? additionalFilePickerMobile;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    webExpandableExpandableController.dispose();
    mobileExpandableExpandableController.dispose();
  }

  /// Additional helper methods.
  String? get userPersonalDocumentValue =>
      userPersonalDocumentValueController?.value;
  String? get propertyDocumentValue => propertyDocumentValueController?.value;
  String? get personaldocumentsverifiedValue =>
      personaldocumentsverifiedValueController?.value;
  String? get propertydocumentsverifiedValue =>
      propertydocumentsverifiedValueController?.value;
}
