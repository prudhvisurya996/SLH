import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/user_pages/trips/cancellation_trips/cancellation_review_submit_form_comp/cancellation_review_submit_form_comp_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cancellation_review_submit_model.dart';
export 'cancellation_review_submit_model.dart';

class CancellationReviewSubmitWidget extends StatefulWidget {
  const CancellationReviewSubmitWidget({
    super.key,
    required this.message,
  });

  final String? message;

  @override
  State<CancellationReviewSubmitWidget> createState() =>
      _CancellationReviewSubmitWidgetState();
}

class _CancellationReviewSubmitWidgetState
    extends State<CancellationReviewSubmitWidget> {
  late CancellationReviewSubmitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancellationReviewSubmitModel());

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
      children: [
        if (responsiveVisibility(
          context: context,
          desktop: false,
        ))
          Container(
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
              model: _model.cancellationReviewSubmitFormCompModel1,
              updateCallback: () => setState(() {}),
              child: CancellationReviewSubmitFormCompWidget(
                message: widget.message!,
              ),
            ),
          ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Container(
            width: MediaQuery.sizeOf(context).width * 0.3,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(22.0),
            ),
            child: wrapWithModel(
              model: _model.cancellationReviewSubmitFormCompModel2,
              updateCallback: () => setState(() {}),
              child: CancellationReviewSubmitFormCompWidget(
                message: widget.message!,
              ),
            ),
          ),
      ],
    );
  }
}
