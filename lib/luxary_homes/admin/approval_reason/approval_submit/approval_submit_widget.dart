import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/approval_reason/approval_submit_form/approval_submit_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'approval_submit_model.dart';
export 'approval_submit_model.dart';

class ApprovalSubmitWidget extends StatefulWidget {
  const ApprovalSubmitWidget({
    super.key,
    required this.message,
  });

  final String? message;

  @override
  State<ApprovalSubmitWidget> createState() => _ApprovalSubmitWidgetState();
}

class _ApprovalSubmitWidgetState extends State<ApprovalSubmitWidget> {
  late ApprovalSubmitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ApprovalSubmitModel());

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
              model: _model.approvalSubmitFormModel,
              updateCallback: () => setState(() {}),
              child: ApprovalSubmitFormWidget(
                message: widget.message!,
              ),
            ),
          ),
      ],
    );
  }
}
