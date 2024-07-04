import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/external_host_journey/property_hosting/submit_confirm_form/submit_confirm_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'submit_confirm_model.dart';
export 'submit_confirm_model.dart';

class SubmitConfirmWidget extends StatefulWidget {
  const SubmitConfirmWidget({super.key});

  @override
  State<SubmitConfirmWidget> createState() => _SubmitConfirmWidgetState();
}

class _SubmitConfirmWidgetState extends State<SubmitConfirmWidget> {
  late SubmitConfirmModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubmitConfirmModel());

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
              model: _model.submitConfirmFormModel,
              updateCallback: () => setState(() {}),
              child: SubmitConfirmFormWidget(),
            ),
          ),
      ],
    );
  }
}
