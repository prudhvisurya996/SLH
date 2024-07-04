import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'm_ex_submit_form_model.dart';
export 'm_ex_submit_form_model.dart';

class MExSubmitFormWidget extends StatefulWidget {
  const MExSubmitFormWidget({super.key});

  @override
  State<MExSubmitFormWidget> createState() => _MExSubmitFormWidgetState();
}

class _MExSubmitFormWidgetState extends State<MExSubmitFormWidget> {
  late MExSubmitFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MExSubmitFormModel());

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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset(
          'assets/lottie_animations/registration_success_lottie.json',
          width: 180.0,
          height: 220.0,
          fit: BoxFit.contain,
          animate: true,
        ),
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Text(
              'Congrats!',
              style: GoogleFonts.getFont(
                'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
            child: Text(
              'Your request sent Successfully',
              style: GoogleFonts.getFont(
                'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        FFButtonWidget(
          onPressed: () async {
            if (MediaQuery.sizeOf(context).width < 661.0) {
              context.pushNamed(
                'home_page',
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.fade,
                    duration: Duration(milliseconds: 0),
                  ),
                },
              );
            } else {
              context.pushNamed(
                'home_page',
                extra: <String, dynamic>{
                  kTransitionInfoKey: TransitionInfo(
                    hasTransition: true,
                    transitionType: PageTransitionType.fade,
                    duration: Duration(milliseconds: 0),
                  ),
                },
              );
            }
          },
          text: 'Continue',
          options: FFButtonOptions(
            width: MediaQuery.sizeOf(context).width * 0.9,
            height: 40.0,
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).primary,
            textStyle: GoogleFonts.getFont(
              'Poppins',
              color: Colors.white,
              fontSize: 14.0,
            ),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ],
    );
  }
}
