import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/user_pages/reviews_ratings/feedback_submit_form/feedback_submit_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'feed_back_submit_comp_model.dart';
export 'feed_back_submit_comp_model.dart';

class FeedBackSubmitCompWidget extends StatefulWidget {
  const FeedBackSubmitCompWidget({
    super.key,
    required this.articleId,
  });

  final String? articleId;

  @override
  State<FeedBackSubmitCompWidget> createState() =>
      _FeedBackSubmitCompWidgetState();
}

class _FeedBackSubmitCompWidgetState extends State<FeedBackSubmitCompWidget> {
  late FeedBackSubmitCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedBackSubmitCompModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Flexible(
            child: Container(
              width: MediaQuery.sizeOf(context).width * 0.35,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(22.0),
              ),
              child: wrapWithModel(
                model: _model.feedbackSubmitFormModel1,
                updateCallback: () => setState(() {}),
                child: FeedbackSubmitFormWidget(
                  articleId: widget.articleId!,
                ),
              ),
            ),
          ),
        if (responsiveVisibility(
          context: context,
          desktop: false,
        ))
          Flexible(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(22.0),
                  topRight: Radius.circular(22.0),
                ),
              ),
              child: wrapWithModel(
                model: _model.feedbackSubmitFormModel2,
                updateCallback: () => setState(() {}),
                child: FeedbackSubmitFormWidget(
                  articleId: widget.articleId!,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
