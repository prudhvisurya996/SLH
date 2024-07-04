import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/cancel_review_submit_form/cancel_review_submit_form_widget.dart';
import 'cancel_review_submit_widget.dart' show CancelReviewSubmitWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CancelReviewSubmitModel
    extends FlutterFlowModel<CancelReviewSubmitWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for cancel_review_submit_form component.
  late CancelReviewSubmitFormModel cancelReviewSubmitFormModel1;
  // Model for cancel_review_submit_form component.
  late CancelReviewSubmitFormModel cancelReviewSubmitFormModel2;

  @override
  void initState(BuildContext context) {
    cancelReviewSubmitFormModel1 =
        createModel(context, () => CancelReviewSubmitFormModel());
    cancelReviewSubmitFormModel2 =
        createModel(context, () => CancelReviewSubmitFormModel());
  }

  @override
  void dispose() {
    cancelReviewSubmitFormModel1.dispose();
    cancelReviewSubmitFormModel2.dispose();
  }
}
