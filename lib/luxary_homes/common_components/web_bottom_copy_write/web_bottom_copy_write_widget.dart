import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'web_bottom_copy_write_model.dart';
export 'web_bottom_copy_write_model.dart';

class WebBottomCopyWriteWidget extends StatefulWidget {
  const WebBottomCopyWriteWidget({super.key});

  @override
  State<WebBottomCopyWriteWidget> createState() =>
      _WebBottomCopyWriteWidgetState();
}

class _WebBottomCopyWriteWidgetState extends State<WebBottomCopyWriteWidget> {
  late WebBottomCopyWriteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WebBottomCopyWriteModel());

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
      alignment: AlignmentDirectional(0.0, 1.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(80.0, 10.0, 80.0, 20.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '© Copyright 2024. SIDGS All Rights Reserved',
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Poppins',
                        fontSize: 14.0,
                        letterSpacing: 0.0,
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        setState(() {
                          FFAppState().TermsAndConditions =
                              TermsAndConditionsStruct(
                            articleName: FFAppConstants.cookie,
                          );
                        });

                        context.pushNamed(
                          'TermsPrivacyCookiesPage',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: Text(
                        'Cookie Policy',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Poppins',
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(9.0, 0.0, 9.0, 0.0),
                      child: Container(
                        width: 4.0,
                        height: 4.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        setState(() {
                          FFAppState().TermsAndConditions =
                              TermsAndConditionsStruct(
                            articleName: FFAppConstants.privacy,
                          );
                        });

                        context.pushNamed(
                          'TermsPrivacyCookiesPage',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: Text(
                        'Privacy Policy',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Poppins',
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(9.0, 0.0, 9.0, 0.0),
                      child: Container(
                        width: 4.0,
                        height: 4.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        setState(() {
                          FFAppState().TermsAndConditions =
                              TermsAndConditionsStruct(
                            articleName: FFAppConstants.terms,
                          );
                        });

                        context.pushNamed(
                          'TermsPrivacyCookiesPage',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      child: Text(
                        'Terms and Conditions',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              fontFamily: 'Poppins',
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
