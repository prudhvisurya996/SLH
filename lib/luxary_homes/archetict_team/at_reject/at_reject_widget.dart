import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/archetict_team/at_reject_form/at_reject_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'at_reject_model.dart';
export 'at_reject_model.dart';

class AtRejectWidget extends StatefulWidget {
  const AtRejectWidget({
    super.key,
    required this.reviewId,
  });

  final int? reviewId;

  @override
  State<AtRejectWidget> createState() => _AtRejectWidgetState();
}

class _AtRejectWidgetState extends State<AtRejectWidget> {
  late AtRejectModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AtRejectModel());

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
              width: MediaQuery.sizeOf(context).width * 0.3,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                borderRadius: BorderRadius.circular(22.0),
              ),
              child: wrapWithModel(
                model: _model.atRejectFormModel1,
                updateCallback: () => setState(() {}),
                child: AtRejectFormWidget(
                  reviewId: widget.reviewId!,
                ),
              ),
            ),
          ),
        if (responsiveVisibility(
          context: context,
          desktop: false,
        ))
          Flexible(
            child: Container(
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
                model: _model.atRejectFormModel2,
                updateCallback: () => setState(() {}),
                child: AtRejectFormWidget(
                  reviewId: widget.reviewId!,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
