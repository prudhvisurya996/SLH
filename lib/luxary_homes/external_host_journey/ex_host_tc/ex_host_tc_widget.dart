import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ex_host_tc_model.dart';
export 'ex_host_tc_model.dart';

class ExHostTcWidget extends StatefulWidget {
  const ExHostTcWidget({super.key});

  @override
  State<ExHostTcWidget> createState() => _ExHostTcWidgetState();
}

class _ExHostTcWidgetState extends State<ExHostTcWidget> {
  late ExHostTcModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExHostTcModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(valueOrDefault<double>(
            MediaQuery.sizeOf(context).width < 991.0 ? 0.0 : 22.0,
            0.0,
          )),
          bottomRight: Radius.circular(valueOrDefault<double>(
            MediaQuery.sizeOf(context).width < 991.0 ? 0.0 : 22.0,
            0.0,
          )),
          topLeft: Radius.circular(22.0),
          topRight: Radius.circular(22.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ))
                  Container(
                    width: 68.0,
                    decoration: BoxDecoration(),
                  ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 20.0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: LiferayBaseUrlGroup.tcPpCpApiCall.call(
                        articleName: FFAppConstants.terms,
                      ),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 40.0,
                              height: 40.0,
                              child: SpinKitPulse(
                                color: FlutterFlowTheme.of(context).primary,
                                size: 40.0,
                              ),
                            ),
                          );
                        }
                        final columnTcPpCpApiResponse = snapshot.data!;
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 16.0, 12.0, 16.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 36.0,
                                    fillColor: Color(0x4CBBD1EA),
                                    icon: Icon(
                                      Icons.arrow_back_ios_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 18.0,
                                    ),
                                    onPressed: () async {
                                      context.safePop();
                                    },
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      getJsonField(
                                        columnTcPpCpApiResponse.jsonBody,
                                        r'''$.Title''',
                                      ).toString(),
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 24.0, 0.0, 0.0),
                                        child: RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'SID Luxury Homes ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: getJsonField(
                                                  columnTcPpCpApiResponse
                                                      .jsonBody,
                                                  r'''$.Title''',
                                                ).toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Html(
                                            data: getJsonField(
                                              columnTcPpCpApiResponse.jsonBody,
                                              r'''$.Content''',
                                            ).toString(),
                                            onLinkTap: (url, _, __) =>
                                                launchURL(url!),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            if (!FFAppState().userData.isAdmin &&
                                !FFAppState().userData.isHost)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 15.0, 12.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (FFAppState().exHostAcceptTC ==
                                            false) {
                                          FFAppState().exHostAcceptTC = true;
                                          setState(() {});
                                          if (MediaQuery.sizeOf(context).width <
                                              991.0) {
                                            Navigator.pop(context);
                                            return;
                                          } else {
                                            Navigator.pop(context);
                                            return;
                                          }
                                        } else {
                                          FFAppState().exHostAcceptTC = false;
                                          setState(() {});
                                          return;
                                        }
                                      },
                                      child: Container(
                                        width: 20.0,
                                        height: 20.0,
                                        decoration: BoxDecoration(
                                          color:
                                              FFAppState().exHostAcceptTC ==
                                                      true
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(4.0),
                                          border: Border.all(
                                            color: FFAppState()
                                                        .exHostAcceptTC ==
                                                    true
                                                ? FlutterFlowTheme.of(context)
                                                    .primary
                                                : FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            width: 2.0,
                                          ),
                                        ),
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Visibility(
                                          visible:
                                              FFAppState().exHostAcceptTC ==
                                                  true,
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: FaIcon(
                                              FontAwesomeIcons.check,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              size: 15.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Theme(
                                        data: ThemeData(
                                          checkboxTheme: CheckboxThemeData(
                                            visualDensity:
                                                VisualDensity.compact,
                                            materialTapTargetSize:
                                                MaterialTapTargetSize
                                                    .shrinkWrap,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(4.0),
                                            ),
                                          ),
                                          unselectedWidgetColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                        ),
                                        child: Checkbox(
                                          value: _model.checkboxValue ??= false,
                                          onChanged: (newValue) async {
                                            setState(() => _model
                                                .checkboxValue = newValue!);
                                            if (newValue!) {
                                              FFAppState().exHostAcceptTC =
                                                  true;
                                              FFAppState().update(() {});
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  991.0) {
                                                Navigator.pop(context);
                                                return;
                                              } else {
                                                Navigator.pop(context);
                                                return;
                                              }
                                            } else {
                                              FFAppState().exHostAcceptTC =
                                                  false;
                                              setState(() {});
                                            }
                                          },
                                          side: BorderSide(
                                            width: 2,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                          ),
                                          activeColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          checkColor:
                                              FlutterFlowTheme.of(context).info,
                                        ),
                                      ),
                                    Flexible(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'By accepting',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: Colors.black,
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: '  Terms & Conditions',
                                                style: TextStyle(
                                                  color: Color(0xFF5246ED),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    '  your are giving consent to offer your space for leasing.',
                                                style: TextStyle(
                                                  fontSize: 14.0,
                                                ),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: Colors.black,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                if (responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ))
                  Container(
                    width: 68.0,
                    decoration: BoxDecoration(),
                  ),
              ],
            ),
          ),
          Container(
            width: 1.0,
            height: 1.0,
            child: custom_widgets.OnWillPop(
              width: 1.0,
              height: 1.0,
            ),
          ),
        ],
      ),
    );
  }
}
