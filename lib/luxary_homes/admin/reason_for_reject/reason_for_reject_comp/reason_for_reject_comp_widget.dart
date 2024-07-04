import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/reason_for_reject_form/reason_for_reject_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reason_for_reject_comp_model.dart';
export 'reason_for_reject_comp_model.dart';

class ReasonForRejectCompWidget extends StatefulWidget {
  const ReasonForRejectCompWidget({
    super.key,
    required this.propertyId,
    required this.articleId,
    required this.propertyStatus,
  });

  final int? propertyId;
  final String? articleId;
  final int? propertyStatus;

  @override
  State<ReasonForRejectCompWidget> createState() =>
      _ReasonForRejectCompWidgetState();
}

class _ReasonForRejectCompWidgetState extends State<ReasonForRejectCompWidget> {
  late ReasonForRejectCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReasonForRejectCompModel());

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
                  model: _model.reasonForRejectFormModel,
                  updateCallback: () => setState(() {}),
                  child: ReasonForRejectFormWidget(
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
