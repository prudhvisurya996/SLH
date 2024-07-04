import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'unblock_submit_form_model.dart';
export 'unblock_submit_form_model.dart';

class UnblockSubmitFormWidget extends StatefulWidget {
  const UnblockSubmitFormWidget({
    super.key,
    required this.message,
  });

  final String? message;

  @override
  State<UnblockSubmitFormWidget> createState() =>
      _UnblockSubmitFormWidgetState();
}

class _UnblockSubmitFormWidgetState extends State<UnblockSubmitFormWidget> {
  late UnblockSubmitFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UnblockSubmitFormModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: AlignmentDirectional(1.0, -1.0),
            child: FlutterFlowIconButton(
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              icon: Icon(
                Icons.clear_sharp,
                color: FlutterFlowTheme.of(context).primary,
                size: 24.0,
              ),
              onPressed: () async {
                Navigator.pop(context);
              },
            ),
          ),
          Lottie.asset(
            'assets/lottie_animations/registration_success_lottie.json',
            width: 300.0,
            height: 250.0,
            fit: BoxFit.cover,
            animate: true,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 50.0),
            child: Text(
              valueOrDefault<String>(
                widget.message,
                'NA',
              ),
              style: GoogleFonts.getFont(
                'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
