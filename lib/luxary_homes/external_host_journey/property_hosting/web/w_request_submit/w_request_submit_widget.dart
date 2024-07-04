import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/external_host_journey/property_hosting/w_request_submit_form/w_request_submit_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'w_request_submit_model.dart';
export 'w_request_submit_model.dart';

class WRequestSubmitWidget extends StatefulWidget {
  const WRequestSubmitWidget({super.key});

  @override
  State<WRequestSubmitWidget> createState() => _WRequestSubmitWidgetState();
}

class _WRequestSubmitWidgetState extends State<WRequestSubmitWidget> {
  late WRequestSubmitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WRequestSubmitModel());

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
      mainAxisAlignment: MainAxisAlignment.start,
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
              model: _model.wRequestSubmitFormModel,
              updateCallback: () => setState(() {}),
              child: WRequestSubmitFormWidget(),
            ),
          ),
      ],
    );
  }
}
