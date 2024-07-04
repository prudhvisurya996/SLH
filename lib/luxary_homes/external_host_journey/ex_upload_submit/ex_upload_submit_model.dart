import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/external_host_journey/ex_upload_submit_form/ex_upload_submit_form_widget.dart';
import 'ex_upload_submit_widget.dart' show ExUploadSubmitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ExUploadSubmitModel extends FlutterFlowModel<ExUploadSubmitWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ex_upload_submit_form component.
  late ExUploadSubmitFormModel exUploadSubmitFormModel;

  @override
  void initState(BuildContext context) {
    exUploadSubmitFormModel =
        createModel(context, () => ExUploadSubmitFormModel());
  }

  @override
  void dispose() {
    exUploadSubmitFormModel.dispose();
  }
}
