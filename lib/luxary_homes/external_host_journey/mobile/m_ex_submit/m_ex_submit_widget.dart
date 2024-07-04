import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/external_host_journey/mobile/m_ex_submit_form/m_ex_submit_form_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'm_ex_submit_model.dart';
export 'm_ex_submit_model.dart';

class MExSubmitWidget extends StatefulWidget {
  const MExSubmitWidget({super.key});

  @override
  State<MExSubmitWidget> createState() => _MExSubmitWidgetState();
}

class _MExSubmitWidgetState extends State<MExSubmitWidget> {
  late MExSubmitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MExSubmitModel());

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
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 0.3,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(22.0),
              topRight: Radius.circular(22.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(12.0),
            child: wrapWithModel(
              model: _model.mExSubmitFormModel,
              updateCallback: () => setState(() {}),
              child: MExSubmitFormWidget(),
            ),
          ),
        ),
      ],
    );
  }
}
