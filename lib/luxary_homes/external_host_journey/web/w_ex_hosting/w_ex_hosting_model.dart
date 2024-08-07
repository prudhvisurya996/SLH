import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/external_host_journey/web/w_ex_hosting_form/w_ex_hosting_form_widget.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'w_ex_hosting_widget.dart' show WExHostingWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class WExHostingModel extends FlutterFlowModel<WExHostingWidget> {
  ///  Local state fields for this page.

  List<FFUploadedFile> uploadPictures = [];
  void addToUploadPictures(FFUploadedFile item) => uploadPictures.add(item);
  void removeFromUploadPictures(FFUploadedFile item) =>
      uploadPictures.remove(item);
  void removeAtIndexFromUploadPictures(int index) =>
      uploadPictures.removeAt(index);
  void insertAtIndexInUploadPictures(int index, FFUploadedFile item) =>
      uploadPictures.insert(index, item);
  void updateUploadPicturesAtIndex(
          int index, Function(FFUploadedFile) updateFn) =>
      uploadPictures[index] = updateFn(uploadPictures[index]);

  int? index = 0;

  List<String> localities = [];
  void addToLocalities(String item) => localities.add(item);
  void removeFromLocalities(String item) => localities.remove(item);
  void removeAtIndexFromLocalities(int index) => localities.removeAt(index);
  void insertAtIndexInLocalities(int index, String item) =>
      localities.insert(index, item);
  void updateLocalitiesAtIndex(int index, Function(String) updateFn) =>
      localities[index] = updateFn(localities[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for common_top_bar component.
  late CommonTopBarModel commonTopBarModel;
  // Model for w_ex_hosting_form component.
  late WExHostingFormModel wExHostingFormModel;

  @override
  void initState(BuildContext context) {
    commonTopBarModel = createModel(context, () => CommonTopBarModel());
    wExHostingFormModel = createModel(context, () => WExHostingFormModel());
    wExHostingFormModel.propertyTitleTextControllerValidator =
        _formTextFieldValidator1;
    wExHostingFormModel.pricePerMonthTextControllerValidator =
        _formTextFieldValidator2;
    wExHostingFormModel.propertydescriptionTextControllerValidator =
        _formTextFieldValidator3;
    wExHostingFormModel.pincodeTextControllerValidator =
        _formTextFieldValidator4;
    wExHostingFormModel.flatHouseVillanumberTextControllerValidator =
        _formTextFieldValidator5;
    wExHostingFormModel.streetAddressTextControllerValidator =
        _formTextFieldValidator6;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    commonTopBarModel.dispose();
    wExHostingFormModel.dispose();
  }

  /// Additional helper methods.

  String? _formTextFieldValidator1(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Title is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    if (!RegExp('^[a-zA-Z][a-zA-Z0-9 \'-]*\$').hasMatch(val)) {
      return 'Invalid Format';
    }
    return null;
  }

  String? _formTextFieldValidator2(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Price is required';
    }

    if (!RegExp('^([5-9]\\d{3}|[1-9]\\d{4})\$').hasMatch(val)) {
      return 'Price min 5000 and max 99999.';
    }
    return null;
  }

  String? _formTextFieldValidator3(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Description is required';
    }

    if (val.length < 3) {
      return 'Requires at least 3 characters.';
    }

    if (!RegExp('^[a-zA-Z.][a-zA-Z0-9 ._-]*\$').hasMatch(val)) {
      return 'Invalid Format';
    }
    return null;
  }

  String? _formTextFieldValidator4(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  String? _formTextFieldValidator5(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  String? _formTextFieldValidator6(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }
}
