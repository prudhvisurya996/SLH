import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/user_pages/reviews_ratings/feed_back_form_component/feed_back_form_component_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'feed_back_comp_model.dart';
export 'feed_back_comp_model.dart';

class FeedBackCompWidget extends StatefulWidget {
  const FeedBackCompWidget({
    super.key,
    required this.bookingId,
    required this.articleId,
    required this.propertyId,
  });

  final String? bookingId;
  final String? articleId;
  final int? propertyId;

  @override
  State<FeedBackCompWidget> createState() => _FeedBackCompWidgetState();
}

class _FeedBackCompWidgetState extends State<FeedBackCompWidget> {
  late FeedBackCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedBackCompModel());

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
                model: _model.feedBackFormComponentModel1,
                updateCallback: () => setState(() {}),
                child: FeedBackFormComponentWidget(
                  bookingId: widget.bookingId!,
                  articleId: widget.articleId!,
                  propertyId: widget.propertyId!,
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
                model: _model.feedBackFormComponentModel2,
                updateCallback: () => setState(() {}),
                child: FeedBackFormComponentWidget(
                  bookingId: widget.bookingId!,
                  articleId: widget.articleId!,
                  propertyId: widget.propertyId!,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
