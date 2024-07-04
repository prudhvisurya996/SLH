import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reason_compo_model.dart';
export 'reason_compo_model.dart';

class ReasonCompoWidget extends StatefulWidget {
  const ReasonCompoWidget({
    super.key,
    required this.message,
  });

  final String? message;

  @override
  State<ReasonCompoWidget> createState() => _ReasonCompoWidgetState();
}

class _ReasonCompoWidgetState extends State<ReasonCompoWidget> {
  late ReasonCompoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReasonCompoModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.0),
          bottomRight: Radius.circular(12.0),
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 16.0),
        child: Text(
          valueOrDefault<String>(
            widget.message,
            'NA',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Poppins',
                color: Colors.black,
                fontSize: 16.0,
                letterSpacing: 0.0,
                fontWeight: FontWeight.normal,
              ),
        ),
      ),
    );
  }
}
