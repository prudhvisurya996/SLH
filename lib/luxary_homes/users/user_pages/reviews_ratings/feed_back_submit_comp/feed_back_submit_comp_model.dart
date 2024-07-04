import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/user_pages/reviews_ratings/feedback_submit_form/feedback_submit_form_widget.dart';
import 'feed_back_submit_comp_widget.dart' show FeedBackSubmitCompWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FeedBackSubmitCompModel
    extends FlutterFlowModel<FeedBackSubmitCompWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for feedback_submit_form component.
  late FeedbackSubmitFormModel feedbackSubmitFormModel1;
  // Model for feedback_submit_form component.
  late FeedbackSubmitFormModel feedbackSubmitFormModel2;

  @override
  void initState(BuildContext context) {
    feedbackSubmitFormModel1 =
        createModel(context, () => FeedbackSubmitFormModel());
    feedbackSubmitFormModel2 =
        createModel(context, () => FeedbackSubmitFormModel());
  }

  @override
  void dispose() {
    feedbackSubmitFormModel1.dispose();
    feedbackSubmitFormModel2.dispose();
  }
}
