import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'pi_property_success_copy_model.dart';
export 'pi_property_success_copy_model.dart';

class PiPropertySuccessCopyWidget extends StatefulWidget {
  const PiPropertySuccessCopyWidget({
    super.key,
    required this.message,
  });

  final String? message;

  @override
  State<PiPropertySuccessCopyWidget> createState() =>
      _PiPropertySuccessCopyWidgetState();
}

class _PiPropertySuccessCopyWidgetState
    extends State<PiPropertySuccessCopyWidget> {
  late PiPropertySuccessCopyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PiPropertySuccessCopyModel());

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
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Lottie.asset(
                    'assets/lottie_animations/registration_success_lottie.json',
                    width: 300.0,
                    height: 250.0,
                    fit: BoxFit.cover,
                    animate: true,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.message,
                        'NA',
                      ),
                      style: GoogleFonts.getFont(
                        'Poppins',
                        color: Color(0xFF80BB01),
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (MediaQuery.sizeOf(context).width > 661.0) {
                          Navigator.pop(context);

                          context.pushNamed('web_pi_dashboard');

                          return;
                        } else {
                          Navigator.pop(context);

                          context.goNamed('m_pi_dashboard');

                          return;
                        }
                      },
                      text: 'Continue',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle: GoogleFonts.getFont(
                          'Work Sans',
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                        elevation: 3.0,
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
            ),
          ),
        if (responsiveVisibility(
          context: context,
          desktop: false,
        ))
          Container(
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
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Lottie.asset(
                    'assets/lottie_animations/registration_success_lottie.json',
                    width: 300.0,
                    height: 250.0,
                    fit: BoxFit.cover,
                    animate: true,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.message,
                        'NA',
                      ),
                      style: GoogleFonts.getFont(
                        'Poppins',
                        color: Color(0xFF80BB01),
                        fontWeight: FontWeight.normal,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        if (MediaQuery.sizeOf(context).width > 661.0) {
                          Navigator.pop(context);

                          context.pushNamed('web_pi_dashboard');

                          return;
                        } else {
                          Navigator.pop(context);

                          context.goNamed(
                            'm_pi_dashboard',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );

                          return;
                        }
                      },
                      text: 'Continue',
                      options: FFButtonOptions(
                        width: double.infinity,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle: GoogleFonts.getFont(
                          'Work Sans',
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                        elevation: 3.0,
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
            ),
          ),
      ],
    );
  }
}
