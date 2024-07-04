import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/user_pages/trips/cancellation_trips/cancellation_review_submit_form_comp/cancellation_review_submit_form_comp_widget.dart';
import 'cancellation_review_submit_widget.dart'
    show CancellationReviewSubmitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CancellationReviewSubmitModel
    extends FlutterFlowModel<CancellationReviewSubmitWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for CancellationReviewSubmitFormComp component.
  late CancellationReviewSubmitFormCompModel
      cancellationReviewSubmitFormCompModel1;
  // Model for CancellationReviewSubmitFormComp component.
  late CancellationReviewSubmitFormCompModel
      cancellationReviewSubmitFormCompModel2;

  @override
  void initState(BuildContext context) {
    cancellationReviewSubmitFormCompModel1 =
        createModel(context, () => CancellationReviewSubmitFormCompModel());
    cancellationReviewSubmitFormCompModel2 =
        createModel(context, () => CancellationReviewSubmitFormCompModel());
  }

  @override
  void dispose() {
    cancellationReviewSubmitFormCompModel1.dispose();
    cancellationReviewSubmitFormCompModel2.dispose();
  }
}
