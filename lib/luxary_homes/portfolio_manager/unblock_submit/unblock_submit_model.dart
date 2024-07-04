import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/unblock_submit_form/unblock_submit_form_widget.dart';
import 'unblock_submit_widget.dart' show UnblockSubmitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UnblockSubmitModel extends FlutterFlowModel<UnblockSubmitWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for unblock_submit_form component.
  late UnblockSubmitFormModel unblockSubmitFormModel;

  @override
  void initState(BuildContext context) {
    unblockSubmitFormModel =
        createModel(context, () => UnblockSubmitFormModel());
  }

  @override
  void dispose() {
    unblockSubmitFormModel.dispose();
  }
}
