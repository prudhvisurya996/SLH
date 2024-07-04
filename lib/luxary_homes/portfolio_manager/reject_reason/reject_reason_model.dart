import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/reject_form/reject_form_widget.dart';
import 'reject_reason_widget.dart' show RejectReasonWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RejectReasonModel extends FlutterFlowModel<RejectReasonWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for reject_form component.
  late RejectFormModel rejectFormModel;

  @override
  void initState(BuildContext context) {
    rejectFormModel = createModel(context, () => RejectFormModel());
  }

  @override
  void dispose() {
    rejectFormModel.dispose();
  }
}
