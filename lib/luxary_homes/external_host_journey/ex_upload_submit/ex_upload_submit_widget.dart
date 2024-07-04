import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/external_host_journey/ex_upload_submit_form/ex_upload_submit_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ex_upload_submit_model.dart';
export 'ex_upload_submit_model.dart';

class ExUploadSubmitWidget extends StatefulWidget {
  const ExUploadSubmitWidget({super.key});

  @override
  State<ExUploadSubmitWidget> createState() => _ExUploadSubmitWidgetState();
}

class _ExUploadSubmitWidgetState extends State<ExUploadSubmitWidget> {
  late ExUploadSubmitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExUploadSubmitModel());

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
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBackground,
              borderRadius: BorderRadius.circular(22.0),
            ),
            child: wrapWithModel(
              model: _model.exUploadSubmitFormModel,
              updateCallback: () => setState(() {}),
              child: ExUploadSubmitFormWidget(),
            ),
          ),
      ],
    );
  }
}
