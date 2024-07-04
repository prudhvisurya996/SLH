import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/block_form/block_form_widget.dart';
import 'block_reason_widget.dart' show BlockReasonWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BlockReasonModel extends FlutterFlowModel<BlockReasonWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for block_form component.
  late BlockFormModel blockFormModel;

  @override
  void initState(BuildContext context) {
    blockFormModel = createModel(context, () => BlockFormModel());
  }

  @override
  void dispose() {
    blockFormModel.dispose();
  }
}
