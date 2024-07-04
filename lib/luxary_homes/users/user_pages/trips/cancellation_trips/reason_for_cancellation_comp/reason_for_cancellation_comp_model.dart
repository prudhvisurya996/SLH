import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/user_pages/trips/cancellation_trips/reason_for_cancellation_form_comp/reason_for_cancellation_form_comp_widget.dart';
import 'reason_for_cancellation_comp_widget.dart'
    show ReasonForCancellationCompWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReasonForCancellationCompModel
    extends FlutterFlowModel<ReasonForCancellationCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for reasonForCancellationFormComp component.
  late ReasonForCancellationFormCompModel reasonForCancellationFormCompModel1;
  // Model for reasonForCancellationFormComp component.
  late ReasonForCancellationFormCompModel reasonForCancellationFormCompModel2;

  @override
  void initState(BuildContext context) {
    reasonForCancellationFormCompModel1 =
        createModel(context, () => ReasonForCancellationFormCompModel());
    reasonForCancellationFormCompModel2 =
        createModel(context, () => ReasonForCancellationFormCompModel());
  }

  @override
  void dispose() {
    reasonForCancellationFormCompModel1.dispose();
    reasonForCancellationFormCompModel2.dispose();
  }
}
