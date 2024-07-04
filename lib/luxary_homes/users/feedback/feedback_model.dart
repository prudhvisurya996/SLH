import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/feedback_form/feedback_form_widget.dart';
import 'feedback_widget.dart' show FeedbackWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FeedbackModel extends FlutterFlowModel<FeedbackWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for feedback_form component.
  late FeedbackFormModel feedbackFormModel1;
  // Model for feedback_form component.
  late FeedbackFormModel feedbackFormModel2;

  @override
  void initState(BuildContext context) {
    feedbackFormModel1 = createModel(context, () => FeedbackFormModel());
    feedbackFormModel2 = createModel(context, () => FeedbackFormModel());
  }

  @override
  void dispose() {
    feedbackFormModel1.dispose();
    feedbackFormModel2.dispose();
  }
}
