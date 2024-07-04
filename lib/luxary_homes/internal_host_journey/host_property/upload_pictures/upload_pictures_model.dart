import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/luxary_homes/internal_host_journey/host_property/host_property_components/submit_apartment_component/submit_apartment_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'upload_pictures_widget.dart' show UploadPicturesWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UploadPicturesModel extends FlutterFlowModel<UploadPicturesWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> uploadListImgs = [];
  void addToUploadListImgs(FFUploadedFile item) => uploadListImgs.add(item);
  void removeFromUploadListImgs(FFUploadedFile item) =>
      uploadListImgs.remove(item);
  void removeAtIndexFromUploadListImgs(int index) =>
      uploadListImgs.removeAt(index);
  void insertAtIndexInUploadListImgs(int index, FFUploadedFile item) =>
      uploadListImgs.insert(index, item);
  void updateUploadListImgsAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      uploadListImgs[index] = updateFn(uploadListImgs[index]);

  int? index = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
