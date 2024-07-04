import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/reason_for_reject/reason_for_reject_submit_form/reason_for_reject_submit_form_widget.dart';
import 'reason_for_reject_submit_widget.dart' show ReasonForRejectSubmitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReasonForRejectSubmitModel
    extends FlutterFlowModel<ReasonForRejectSubmitWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for reasonForRejectSubmitForm component.
  late ReasonForRejectSubmitFormModel reasonForRejectSubmitFormModel;

  @override
  void initState(BuildContext context) {
    reasonForRejectSubmitFormModel =
        createModel(context, () => ReasonForRejectSubmitFormModel());
  }

  @override
  void dispose() {
    reasonForRejectSubmitFormModel.dispose();
  }
}
