import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/cancel_review_submit_form/cancel_review_submit_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cancel_review_submit_model.dart';
export 'cancel_review_submit_model.dart';

class CancelReviewSubmitWidget extends StatefulWidget {
  const CancelReviewSubmitWidget({
    super.key,
    required this.message,
  });

  final String? message;

  @override
  State<CancelReviewSubmitWidget> createState() =>
      _CancelReviewSubmitWidgetState();
}

class _CancelReviewSubmitWidgetState extends State<CancelReviewSubmitWidget> {
  late CancelReviewSubmitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancelReviewSubmitModel());

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
              model: _model.cancelReviewSubmitFormModel1,
              updateCallback: () => setState(() {}),
              child: CancelReviewSubmitFormWidget(
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
              model: _model.cancelReviewSubmitFormModel2,
              updateCallback: () => setState(() {}),
              child: CancelReviewSubmitFormWidget(
                message: widget.message!,
              ),
            ),
          ),
      ],
    );
  }
}
