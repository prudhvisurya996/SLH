import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'upload_images_widget.dart' show UploadImagesWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UploadImagesModel extends FlutterFlowModel<UploadImagesWidget> {
  ///  Local state fields for this component.

  List<FFUploadedFile> uploadImages = [];
  void addToUploadImages(FFUploadedFile item) => uploadImages.add(item);
  void removeFromUploadImages(FFUploadedFile item) => uploadImages.remove(item);
  void removeAtIndexFromUploadImages(int index) => uploadImages.removeAt(index);
  void insertAtIndexInUploadImages(int index, FFUploadedFile item) =>
      uploadImages.insert(index, item);
  void updateUploadImagesAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      uploadImages[index] = updateFn(uploadImages[index]);

  int imagesIndex = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  bool isDataUploading = false;
  List<FFUploadedFile> uploadedLocalFiles = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
