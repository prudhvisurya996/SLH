import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/property_inspector/reject_form_pi/reject_form_pi_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'review_reject_pi_model.dart';
export 'review_reject_pi_model.dart';

class ReviewRejectPiWidget extends StatefulWidget {
  const ReviewRejectPiWidget({
    super.key,
    required this.reviewId,
  });

  final int? reviewId;

  @override
  State<ReviewRejectPiWidget> createState() => _ReviewRejectPiWidgetState();
}

class _ReviewRejectPiWidgetState extends State<ReviewRejectPiWidget> {
  late ReviewRejectPiModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewRejectPiModel());

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
                model: _model.rejectFormPiModel,
                updateCallback: () => setState(() {}),
                child: RejectFormPiWidget(
                  reviewId: widget.reviewId!,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
