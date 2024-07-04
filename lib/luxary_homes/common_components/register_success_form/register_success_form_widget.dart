import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'register_success_form_model.dart';
export 'register_success_form_model.dart';

class RegisterSuccessFormWidget extends StatefulWidget {
  const RegisterSuccessFormWidget({super.key});

  @override
  State<RegisterSuccessFormWidget> createState() =>
      _RegisterSuccessFormWidgetState();
}

class _RegisterSuccessFormWidgetState extends State<RegisterSuccessFormWidget> {
  late RegisterSuccessFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterSuccessFormModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/lottie_animations/registration_success_lottie.json',
            width: 200.0,
            height: 150.0,
            fit: BoxFit.cover,
            animate: true,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Text(
              'Congrats!',
              style: GoogleFonts.getFont(
                'Work Sans',
                color: FlutterFlowTheme.of(context).primaryText,
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Text(
              'Your account was created.\nKindly check your email to log in.',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Work Sans',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 40.0, 12.0, 20.0),
            child: FFButtonWidget(
              onPressed: () async {
                Navigator.pop(context);
              },
              text: 'Done',
              options: FFButtonOptions(
                width: double.infinity,
                height: 36.0,
                padding: EdgeInsets.all(0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: GoogleFonts.getFont(
                  'Work Sans',
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  fontSize: 14.0,
                ),
                elevation: 4.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
