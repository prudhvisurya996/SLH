import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/portfolio_manager/ex_lease_detail_view/ex_lease_detail_view_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ex_lease_detailview_model.dart';
export 'ex_lease_detailview_model.dart';

class ExLeaseDetailviewWidget extends StatefulWidget {
  const ExLeaseDetailviewWidget({super.key});

  @override
  State<ExLeaseDetailviewWidget> createState() =>
      _ExLeaseDetailviewWidgetState();
}

class _ExLeaseDetailviewWidgetState extends State<ExLeaseDetailviewWidget> {
  late ExLeaseDetailviewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExLeaseDetailviewModel());

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
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                wrapWithModel(
                  model: _model.commonTopBarModel,
                  updateCallback: () => setState(() {}),
                  child: CommonTopBarWidget(
                    showSearchFilter: false,
                  ),
                ),
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 58.0,
                        decoration: BoxDecoration(),
                      ),
                      Flexible(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    FlutterFlowIconButton(
                                      borderRadius: 30.0,
                                      fillColor: Color(0x4CBBD1EA),
                                      icon: Icon(
                                        Icons.chevron_left,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 30.0,
                                      ),
                                      onPressed: () async {
                                        context.safePop();
                                      },
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          30.0, 0.0, 0.0, 0.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: () {
                                                if (FFAppState()
                                                        .AdminLeasePropertyDetailView
                                                        .status ==
                                                    0) {
                                                  return 'View Property';
                                                } else if (FFAppState()
                                                        .AdminLeasePropertyDetailView
                                                        .status ==
                                                    3) {
                                                  return 'Rejected Property';
                                                } else {
                                                  return 'NA';
                                                }
                                              }(),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22.0,
                                              ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Expanded(
                              child: wrapWithModel(
                                model: _model.exLeaseDetailViewModel,
                                updateCallback: () => setState(() {}),
                                child: ExLeaseDetailViewWidget(
                                  articleId: FFAppState()
                                      .AdminLeasePropertyDetailView
                                      .articleId,
                                  propertyStatus: FFAppState()
                                      .AdminLeasePropertyDetailView
                                      .status,
                                  propertyId: FFAppState()
                                      .AdminLeasePropertyDetailView
                                      .propertyId,
                                  location: FFAppState()
                                      .AdminLeasePropertyDetailView
                                      .city,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 55.0,
                        decoration: BoxDecoration(),
                      ),
                    ],
                  ),
                ),
                wrapWithModel(
                  model: _model.webCopyWriteModel,
                  updateCallback: () => setState(() {}),
                  child: WebCopyWriteWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}