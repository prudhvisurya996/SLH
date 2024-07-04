import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/unblock_form/unblock_form_widget.dart';
import 'unblock_reason_widget.dart' show UnblockReasonWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UnblockReasonModel extends FlutterFlowModel<UnblockReasonWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for unblock_form component.
  late UnblockFormModel unblockFormModel;

  @override
  void initState(BuildContext context) {
    unblockFormModel = createModel(context, () => UnblockFormModel());
  }

  @override
  void dispose() {
    unblockFormModel.dispose();
  }
}
