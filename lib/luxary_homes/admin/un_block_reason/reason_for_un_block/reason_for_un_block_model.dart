import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/un_block_reason/reason_for_un_block_confirm_form/reason_for_un_block_confirm_form_widget.dart';
import 'reason_for_un_block_widget.dart' show ReasonForUnBlockWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReasonForUnBlockModel extends FlutterFlowModel<ReasonForUnBlockWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ReasonForUnBlockConfirmForm component.
  late ReasonForUnBlockConfirmFormModel reasonForUnBlockConfirmFormModel;

  @override
  void initState(BuildContext context) {
    reasonForUnBlockConfirmFormModel =
        createModel(context, () => ReasonForUnBlockConfirmFormModel());
  }

  @override
  void dispose() {
    reasonForUnBlockConfirmFormModel.dispose();
  }
}
