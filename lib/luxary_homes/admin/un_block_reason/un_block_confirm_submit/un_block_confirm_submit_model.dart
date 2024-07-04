import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/un_block_reason/un_block_confirm_submit_form/un_block_confirm_submit_form_widget.dart';
import 'un_block_confirm_submit_widget.dart' show UnBlockConfirmSubmitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UnBlockConfirmSubmitModel
    extends FlutterFlowModel<UnBlockConfirmSubmitWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for UnBlockConfirmSubmitForm component.
  late UnBlockConfirmSubmitFormModel unBlockConfirmSubmitFormModel;

  @override
  void initState(BuildContext context) {
    unBlockConfirmSubmitFormModel =
        createModel(context, () => UnBlockConfirmSubmitFormModel());
  }

  @override
  void dispose() {
    unBlockConfirmSubmitFormModel.dispose();
  }
}
