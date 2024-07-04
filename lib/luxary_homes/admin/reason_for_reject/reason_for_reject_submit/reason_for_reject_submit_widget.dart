import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/reason_for_reject/reason_for_reject_submit_form/reason_for_reject_submit_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reason_for_reject_submit_model.dart';
export 'reason_for_reject_submit_model.dart';

class ReasonForRejectSubmitWidget extends StatefulWidget {
  const ReasonForRejectSubmitWidget({
    super.key,
    required this.message,
  });

  final String? message;

  @override
  State<ReasonForRejectSubmitWidget> createState() =>
      _ReasonForRejectSubmitWidgetState();
}

class _ReasonForRejectSubmitWidgetState
    extends State<ReasonForRejectSubmitWidget> {
  late ReasonForRejectSubmitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReasonForRejectSubmitModel());

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
              model: _model.reasonForRejectSubmitFormModel,
              updateCallback: () => setState(() {}),
              child: ReasonForRejectSubmitFormWidget(
                message: widget.message!,
              ),
            ),
          ),
      ],
    );
  }
}
