import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/reason_for_reject_form/reason_for_reject_form_widget.dart';
import 'reason_for_reject_comp_widget.dart' show ReasonForRejectCompWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReasonForRejectCompModel
    extends FlutterFlowModel<ReasonForRejectCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ReasonForRejectForm component.
  late ReasonForRejectFormModel reasonForRejectFormModel;

  @override
  void initState(BuildContext context) {
    reasonForRejectFormModel =
        createModel(context, () => ReasonForRejectFormModel());
  }

  @override
  void dispose() {
    reasonForRejectFormModel.dispose();
  }
}
