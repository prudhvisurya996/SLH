import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'terms_privacy_cookies_page_model.dart';
export 'terms_privacy_cookies_page_model.dart';

class TermsPrivacyCookiesPageWidget extends StatefulWidget {
  const TermsPrivacyCookiesPageWidget({super.key});

  @override
  State<TermsPrivacyCookiesPageWidget> createState() =>
      _TermsPrivacyCookiesPageWidgetState();
}

class _TermsPrivacyCookiesPageWidgetState
    extends State<TermsPrivacyCookiesPageWidget> {
  late TermsPrivacyCookiesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsPrivacyCookiesPageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: FutureBuilder<ApiCallResponse>(
            future: _model.tpc(
              requestFn: () => LiferayBaseUrlGroup.tcPpCpApiCall.call(
                articleName: FFAppState().TermsAndConditions.articleName,
              ),
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
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    wrapWithModel(
                      model: _model.commonTopBarModel,
                      updateCallback: () => setState(() {}),
                      child: CommonTopBarWidget(
                        showSearchFilter: false,
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    desktop: false,
                  ))
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
                              color: FlutterFlowTheme.of(context).primary,
                              size: 18.0,
                            ),
                            onPressed: () async {
                              context.safePop();
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 0.0, 0.0),
                            child: Text(
                              getJsonField(
                                columnTcPpCpApiResponse.jsonBody,
                                r'''$.Title''',
                              ).toString(),
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.bold,
                                fontSize: 22.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    desktop: false,
                  ))
                    Divider(
                      height: 1.0,
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  Expanded(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
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
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                  ))
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 36.0,
                                            fillColor: Color(0x4DBBD1EA),
                                            icon: Icon(
                                              Icons.arrow_back_ios_rounded,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 18.0,
                                            ),
                                            onPressed: () async {
                                              context.safePop();
                                            },
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    30.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              getJsonField(
                                                columnTcPpCpApiResponse
                                                    .jsonBody,
                                                r'''$.Title''',
                                              ).toString(),
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 24.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
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
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          TextSpan(
                                            text: getJsonField(
                                              columnTcPpCpApiResponse.jsonBody,
                                              r'''$.Title''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Html(
                                        data: getJsonField(
                                          columnTcPpCpApiResponse.jsonBody,
                                          r'''$.Content''',
                                        ).toString(),
                                        onLinkTap: (url, _, __, ___) =>
                                            launchURL(url!),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    wrapWithModel(
                      model: _model.webBottomCopyWriteModel,
                      updateCallback: () => setState(() {}),
                      child: WebBottomCopyWriteWidget(),
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
              );
            },
          ),
        ),
      ),
    );
  }
}
