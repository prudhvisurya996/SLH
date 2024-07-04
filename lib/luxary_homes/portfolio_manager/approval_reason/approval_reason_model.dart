import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/approval_form/approval_form_widget.dart';
import 'approval_reason_widget.dart' show ApprovalReasonWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ApprovalReasonModel extends FlutterFlowModel<ApprovalReasonWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for approval_form component.
  late ApprovalFormModel approvalFormModel;

  @override
  void initState(BuildContext context) {
    approvalFormModel = createModel(context, () => ApprovalFormModel());
  }

  @override
  void dispose() {
    approvalFormModel.dispose();
  }
}
