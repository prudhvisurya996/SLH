import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/un_block_reason/un_block_confirm_submit_form/un_block_confirm_submit_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'un_block_confirm_submit_model.dart';
export 'un_block_confirm_submit_model.dart';

class UnBlockConfirmSubmitWidget extends StatefulWidget {
  const UnBlockConfirmSubmitWidget({
    super.key,
    required this.message,
  });

  final String? message;

  @override
  State<UnBlockConfirmSubmitWidget> createState() =>
      _UnBlockConfirmSubmitWidgetState();
}

class _UnBlockConfirmSubmitWidgetState
    extends State<UnBlockConfirmSubmitWidget> {
  late UnBlockConfirmSubmitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnBlockConfirmSubmitModel());

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
              model: _model.unBlockConfirmSubmitFormModel,
              updateCallback: () => setState(() {}),
              child: UnBlockConfirmSubmitFormWidget(
                message: widget.message!,
              ),
            ),
          ),
      ],
    );
  }
}
