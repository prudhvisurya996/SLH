import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/portfolio_manager/unblock_form/unblock_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'unblock_reason_model.dart';
export 'unblock_reason_model.dart';

class UnblockReasonWidget extends StatefulWidget {
  const UnblockReasonWidget({
    super.key,
    required this.propertyId,
    required this.propertyStatus,
  });

  final int? propertyId;
  final int? propertyStatus;

  @override
  State<UnblockReasonWidget> createState() => _UnblockReasonWidgetState();
}

class _UnblockReasonWidgetState extends State<UnblockReasonWidget> {
  late UnblockReasonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnblockReasonModel());

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
                  model: _model.unblockFormModel,
                  updateCallback: () => setState(() {}),
                  child: UnblockFormWidget(
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
