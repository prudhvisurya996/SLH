import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'new_contact_us_submit_model.dart';
export 'new_contact_us_submit_model.dart';

class NewContactUsSubmitWidget extends StatefulWidget {
  const NewContactUsSubmitWidget({super.key});

  @override
  State<NewContactUsSubmitWidget> createState() =>
      _NewContactUsSubmitWidgetState();
}

class _NewContactUsSubmitWidgetState extends State<NewContactUsSubmitWidget> {
  late NewContactUsSubmitModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewContactUsSubmitModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Lottie.asset(
              'assets/lottie_animations/registration_success_lottie.json',
              width: 337.0,
              height: 280.0,
              fit: BoxFit.cover,
              animate: true,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
            child: Text(
              'your                                                              ',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 14.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 20.0),
            child: FFButtonWidget(
              onPressed: () async {
                context.goNamed(
                  'new_trips_page',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
              text: 'Continue',
              options: FFButtonOptions(
                width: double.infinity,
                height: 36.0,
                padding: EdgeInsets.all(0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: GoogleFonts.getFont(
                  'Poppins',
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
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
