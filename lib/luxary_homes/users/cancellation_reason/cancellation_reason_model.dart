import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/cancellation_reason_form/cancellation_reason_form_widget.dart';
import 'cancellation_reason_widget.dart' show CancellationReasonWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CancellationReasonModel
    extends FlutterFlowModel<CancellationReasonWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cancellation_reason_form component.
  late CancellationReasonFormModel cancellationReasonFormModel1;
  // Model for cancellation_reason_form component.
  late CancellationReasonFormModel cancellationReasonFormModel2;

  @override
  void initState(BuildContext context) {
    cancellationReasonFormModel1 =
        createModel(context, () => CancellationReasonFormModel());
    cancellationReasonFormModel2 =
        createModel(context, () => CancellationReasonFormModel());
  }

  @override
  void dispose() {
    cancellationReasonFormModel1.dispose();
    cancellationReasonFormModel2.dispose();
  }
}
