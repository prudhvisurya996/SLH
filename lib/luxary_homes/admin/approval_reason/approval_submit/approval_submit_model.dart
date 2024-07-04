import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/approval_reason/approval_submit_form/approval_submit_form_widget.dart';
import 'approval_submit_widget.dart' show ApprovalSubmitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ApprovalSubmitModel extends FlutterFlowModel<ApprovalSubmitWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ApprovalSubmitForm component.
  late ApprovalSubmitFormModel approvalSubmitFormModel;

  @override
  void initState(BuildContext context) {
    approvalSubmitFormModel =
        createModel(context, () => ApprovalSubmitFormModel());
  }

  @override
  void dispose() {
    approvalSubmitFormModel.dispose();
  }
}
