import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/block_reason/block_confirm_form/block_confirm_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reason_for_block_model.dart';
export 'reason_for_block_model.dart';

class ReasonForBlockWidget extends StatefulWidget {
  const ReasonForBlockWidget({
    super.key,
    required this.propertyId,
    required this.articleId,
    required this.propertyStatus,
  });

  final int? propertyId;
  final String? articleId;
  final int? propertyStatus;

  @override
  State<ReasonForBlockWidget> createState() => _ReasonForBlockWidgetState();
}

class _ReasonForBlockWidgetState extends State<ReasonForBlockWidget> {
  late ReasonForBlockModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReasonForBlockModel());

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
                  model: _model.blockConfirmFormModel,
                  updateCallback: () => setState(() {}),
                  child: BlockConfirmFormWidget(
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
