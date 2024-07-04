import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/ex_lease_reject_form/ex_lease_reject_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ex_lease_reject_reason_model.dart';
export 'ex_lease_reject_reason_model.dart';

class ExLeaseRejectReasonWidget extends StatefulWidget {
  const ExLeaseRejectReasonWidget({
    super.key,
    required this.propertyId,
    required this.articleId,
    required this.propertyStatus,
  });

  final int? propertyId;
  final String? articleId;
  final int? propertyStatus;

  @override
  State<ExLeaseRejectReasonWidget> createState() =>
      _ExLeaseRejectReasonWidgetState();
}

class _ExLeaseRejectReasonWidgetState extends State<ExLeaseRejectReasonWidget> {
  late ExLeaseRejectReasonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExLeaseRejectReasonModel());

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
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
                child: wrapWithModel(
                  model: _model.exLeaseRejectFormModel,
                  updateCallback: () => setState(() {}),
                  child: ExLeaseRejectFormWidget(
                    propertyId: widget.propertyId!,
                    articleId: widget.articleId!,
                    propertyStatus: widget.propertyStatus!,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
