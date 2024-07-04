import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/reject_form/reject_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reject_reason_model.dart';
export 'reject_reason_model.dart';

class RejectReasonWidget extends StatefulWidget {
  const RejectReasonWidget({
    super.key,
    required this.propertyId,
    required this.propertyStatus,
  });

  final int? propertyId;
  final int? propertyStatus;

  @override
  State<RejectReasonWidget> createState() => _RejectReasonWidgetState();
}

class _RejectReasonWidgetState extends State<RejectReasonWidget> {
  late RejectReasonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RejectReasonModel());

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
                padding: EdgeInsets.all(12.0),
                child: wrapWithModel(
                  model: _model.rejectFormModel,
                  updateCallback: () => setState(() {}),
                  child: RejectFormWidget(
                    propertyId: widget.propertyId!,
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
