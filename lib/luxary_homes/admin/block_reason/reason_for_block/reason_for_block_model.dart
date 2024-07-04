import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/block_reason/block_confirm_form/block_confirm_form_widget.dart';
import 'reason_for_block_widget.dart' show ReasonForBlockWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReasonForBlockModel extends FlutterFlowModel<ReasonForBlockWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for BlockConfirm_form component.
  late BlockConfirmFormModel blockConfirmFormModel;

  @override
  void initState(BuildContext context) {
    blockConfirmFormModel = createModel(context, () => BlockConfirmFormModel());
  }

  @override
  void dispose() {
    blockConfirmFormModel.dispose();
  }
}
