import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/approval_reason/reason_for_approvalform/reason_for_approvalform_widget.dart';
import 'reason_for_approval_widget.dart' show ReasonForApprovalWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReasonForApprovalModel extends FlutterFlowModel<ReasonForApprovalWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for reasonForApprovalform component.
  late ReasonForApprovalformModel reasonForApprovalformModel;

  @override
  void initState(BuildContext context) {
    reasonForApprovalformModel =
        createModel(context, () => ReasonForApprovalformModel());
  }

  @override
  void dispose() {
    reasonForApprovalformModel.dispose();
  }
}
