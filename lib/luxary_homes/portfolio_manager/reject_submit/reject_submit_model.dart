import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/block1_submit_form/block1_submit_form_widget.dart';
import 'reject_submit_widget.dart' show RejectSubmitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RejectSubmitModel extends FlutterFlowModel<RejectSubmitWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for block1_submit_form component.
  late Block1SubmitFormModel block1SubmitFormModel;

  @override
  void initState(BuildContext context) {
    block1SubmitFormModel = createModel(context, () => Block1SubmitFormModel());
  }

  @override
  void dispose() {
    block1SubmitFormModel.dispose();
  }
}
