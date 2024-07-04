import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/in_block_submit_form/in_block_submit_form_widget.dart';
import 'block_submit_widget.dart' show BlockSubmitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BlockSubmitModel extends FlutterFlowModel<BlockSubmitWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for in_block_submit_form component.
  late InBlockSubmitFormModel inBlockSubmitFormModel;

  @override
  void initState(BuildContext context) {
    inBlockSubmitFormModel =
        createModel(context, () => InBlockSubmitFormModel());
  }

  @override
  void dispose() {
    inBlockSubmitFormModel.dispose();
  }
}
