import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/androidand_ios/nav_bar/nav_bar_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/external_host_journey/ex_host_dashboard_comp/ex_host_dashboard_comp_widget.dart';
import '/luxary_homes/external_host_journey/mobile/m_ex_listing/m_ex_listing_widget.dart';
import '/luxary_homes/external_host_journey/mobile/m_ex_ongoing/m_ex_ongoing_widget.dart';
import '/luxary_homes/external_host_journey/mobile/m_ex_rejected/m_ex_rejected_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ex_host_dashboard_model.dart';
export 'ex_host_dashboard_model.dart';

class ExHostDashboardWidget extends StatefulWidget {
  const ExHostDashboardWidget({super.key});

  @override
  State<ExHostDashboardWidget> createState() => _ExHostDashboardWidgetState();
}

class _ExHostDashboardWidgetState extends State<ExHostDashboardWidget> {
  late ExHostDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExHostDashboardModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().updateExHostDetailViewStruct(
        (e) => e
          ..articleId = null
          ..status = 0,
      );
      setState(() {});
      _model.propertyStatus = 0;
      setState(() {});
    });

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
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 68.0,
                              decoration: BoxDecoration(),
                            ),
                            Flexible(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
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
                                          0.0, 15.0, 0.0, 15.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 30.0,
                                                fillColor: Color(0x4CBBD1EA),
                                                icon: Icon(
                                                  Icons.chevron_left,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 30.0,
                                                ),
                                                onPressed: () async {
                                                  context.safePop();
                                                },
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 0.0, 0.0),
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'Lease Request',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 22.0,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: '  (External)',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color:
                                                              Color(0x80000D3E),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12.0,
                                                        ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  Expanded(
                                    child: wrapWithModel(
                                      model: _model.exHostDashboardCompModel,
                                      updateCallback: () => setState(() {}),
                                      child: ExHostDashboardCompWidget(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: 68.0,
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
              if (responsiveVisibility(
                context: context,
                desktop: false,
              ))
                Flexible(
                  child: FutureBuilder<ApiCallResponse>(
                    future:
                        MicroserviceExternalHostGroup.exHostDashboardCall.call(
                      status: _model.propertyStatus,
                      userId: FFAppState().userData.userId,
                      pageNo: _model.pageNo,
                      pageSize: _model.pageSize,
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
                      final columnExHostDashboardResponse = snapshot.data!;
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0,
                                  valueOrDefault<double>(
                                    isWeb ? 0.0 : 30.0,
                                    0.0,
                                  ),
                                  0.0,
                                  0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 20.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 20.0,
                                              borderWidth: 1.0,
                                              buttonSize: 30.0,
                                              fillColor: Color(0x4CBBD1EA),
                                              icon: Icon(
                                                Icons
                                                    .arrow_back_ios_new_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 12.0,
                                              ),
                                              onPressed: () async {
                                                context.safePop();
                                              },
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'Lease request',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Lease request',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: '  +',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
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
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Opacity(
                                                  opacity:
                                                      _model.propertyStatus == 2
                                                          ? 1.0
                                                          : 0.6,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0.0,
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(context)
                                                                              .width >=
                                                                          600.0
                                                                      ? 25.0
                                                                      : 1.0,
                                                                  0.0,
                                                                ),
                                                                0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        _model.propertyStatus =
                                                            0;
                                                        _model.pageNo = 1;
                                                        setState(() {});
                                                      },
                                                      child: Container(
                                                        height: 30.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/pending-icon_1_(1).svg',
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Ongoing Properties (${MicroserviceExternalHostGroup.exHostDashboardCall.inProgressPropertiesCount(
                                                                          columnExHostDashboardResponse
                                                                              .jsonBody,
                                                                        )?.toString()})',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            if (_model
                                                                    .propertyStatus ==
                                                                0)
                                                              SizedBox(
                                                                width: 196.0,
                                                                child: Divider(
                                                                  height: 2.0,
                                                                  thickness:
                                                                      2.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Opacity(
                                                  opacity:
                                                      _model.propertyStatus == 0
                                                          ? 1.0
                                                          : 0.6,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0.0,
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(context)
                                                                              .width >=
                                                                          600.0
                                                                      ? 25.0
                                                                      : 1.0,
                                                                  0.0,
                                                                ),
                                                                0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        _model.propertyStatus =
                                                            3;
                                                        _model.pageNo = 1;
                                                        setState(() {});
                                                      },
                                                      child: Container(
                                                        height: 30.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Group_(1).svg',
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Rejected Properties (${MicroserviceExternalHostGroup.exHostDashboardCall.rejectedPropertiesCount(
                                                                          columnExHostDashboardResponse
                                                                              .jsonBody,
                                                                        )?.toString()})',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            if (_model
                                                                    .propertyStatus ==
                                                                3)
                                                              SizedBox(
                                                                width: 196.0,
                                                                child: Divider(
                                                                  height: 2.0,
                                                                  thickness:
                                                                      2.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Opacity(
                                                  opacity:
                                                      _model.propertyStatus == 1
                                                          ? 1.0
                                                          : 0.6,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                0.0,
                                                                0.0,
                                                                valueOrDefault<
                                                                    double>(
                                                                  MediaQuery.sizeOf(context)
                                                                              .width >=
                                                                          600.0
                                                                      ? 25.0
                                                                      : 1.0,
                                                                  0.0,
                                                                ),
                                                                0.0),
                                                    child: InkWell(
                                                      splashColor:
                                                          Colors.transparent,
                                                      focusColor:
                                                          Colors.transparent,
                                                      hoverColor:
                                                          Colors.transparent,
                                                      highlightColor:
                                                          Colors.transparent,
                                                      onTap: () async {
                                                        _model.propertyStatus =
                                                            4;
                                                        _model.pageNo = 1;
                                                        setState(() {});
                                                      },
                                                      child: Container(
                                                        height: 30.0,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/active_property_icon.svg',
                                                                      width:
                                                                          20.0,
                                                                      height:
                                                                          20.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Listed Properties (${MicroserviceExternalHostGroup.exHostDashboardCall.approvedPropertiesCount(
                                                                          columnExHostDashboardResponse
                                                                              .jsonBody,
                                                                        )?.toString()})',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            if (_model
                                                                    .propertyStatus ==
                                                                4)
                                                              SizedBox(
                                                                width: 196.0,
                                                                child: Divider(
                                                                  height: 2.0,
                                                                  thickness:
                                                                      2.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 1.0,
                                    thickness: 1.0,
                                    indent: 5.0,
                                    color: Color(0xFF979797),
                                  ),
                                  SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        if (_model.propertyStatus == 0)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model.mExOngoingModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: MExOngoingWidget(
                                                propertyStatus:
                                                    _model.propertyStatus,
                                                articleId: getJsonField(
                                                  columnExHostDashboardResponse
                                                      .jsonBody,
                                                  r'''$.articleId''',
                                                ).toString(),
                                                pageNo: _model.pageNo,
                                                pageSize: _model.pageSize,
                                              ),
                                            ),
                                          ),
                                        if (_model.propertyStatus == 3)
                                          Flexible(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: wrapWithModel(
                                                model: _model.mExRejectedModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: MExRejectedWidget(
                                                  propertyStatus:
                                                      _model.propertyStatus,
                                                  articleId: getJsonField(
                                                    columnExHostDashboardResponse
                                                        .jsonBody,
                                                    r'''$.articleId''',
                                                  ).toString(),
                                                  pageNo: _model.pageNo,
                                                  pageSize: _model.pageSize,
                                                ),
                                              ),
                                            ),
                                          ),
                                        if (_model.propertyStatus == 4)
                                          wrapWithModel(
                                            model: _model.mExListingModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: MExListingWidget(
                                              propertyStatus:
                                                  _model.propertyStatus,
                                              articleId: getJsonField(
                                                columnExHostDashboardResponse
                                                    .jsonBody,
                                                r'''$.articleId''',
                                              ).toString(),
                                              pageNo: _model.pageNo,
                                              pageSize: _model.pageSize,
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (MicroserviceExternalHostGroup.exHostDashboardCall
                                  .totalCount(
                                columnExHostDashboardResponse.jsonBody,
                              ) !=
                              0)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 12.0, 12.0, 8.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 15.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (_model.pageNo > 1) {
                                          _model.pageNo = 1;
                                          setState(() {});
                                        }
                                      },
                                      child: FaIcon(
                                        FontAwesomeIcons.stepBackward,
                                        color: _model.pageNo > 1
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : Color(0x84BBD1EA),
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (_model.pageNo > 1) {
                                          _model.pageNo = _model.pageNo + -1;
                                          setState(() {});
                                        }
                                      },
                                      child: Icon(
                                        Icons.arrow_back_ios_new_outlined,
                                        color: _model.pageNo > 1
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : Color(0x84BBD1EA),
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        6.0, 0.0, 6.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: _model.pageNo.toString(),
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' of ',
                                                style: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                              TextSpan(
                                                text:
                                                    MicroserviceExternalHostGroup
                                                        .exHostDashboardCall
                                                        .lastPage(
                                                          columnExHostDashboardResponse
                                                              .jsonBody,
                                                        )
                                                        .toString(),
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.0,
                                                ),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 23.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 15.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (_model.pageNo <
                                            MicroserviceExternalHostGroup
                                                .exHostDashboardCall
                                                .lastPage(
                                              columnExHostDashboardResponse
                                                  .jsonBody,
                                            )!) {
                                          _model.pageNo = _model.pageNo + 1;
                                          setState(() {});
                                        }
                                      },
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: _model.pageNo <
                                                MicroserviceExternalHostGroup
                                                    .exHostDashboardCall
                                                    .lastPage(
                                                  columnExHostDashboardResponse
                                                      .jsonBody,
                                                )!
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : Color(0x84BBD1EA),
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      if (_model.pageNo <
                                          MicroserviceExternalHostGroup
                                              .exHostDashboardCall
                                              .lastPage(
                                            columnExHostDashboardResponse
                                                .jsonBody,
                                          )!) {
                                        _model.pageNo =
                                            MicroserviceExternalHostGroup
                                                .exHostDashboardCall
                                                .lastPage(
                                          columnExHostDashboardResponse
                                              .jsonBody,
                                        )!;
                                        setState(() {});
                                      }
                                    },
                                    child: FaIcon(
                                      FontAwesomeIcons.stepForward,
                                      color: _model.pageNo <
                                              MicroserviceExternalHostGroup
                                                  .exHostDashboardCall
                                                  .lastPage(
                                                columnExHostDashboardResponse
                                                    .jsonBody,
                                              )!
                                          ? FlutterFlowTheme.of(context).primary
                                          : Color(0x84BBD1EA),
                                      size: 20.0,
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
              if (responsiveVisibility(
                context: context,
                desktop: false,
              ))
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.navBarModel,
                    updateCallback: () => setState(() {}),
                    child: NavBarWidget(
                      index: 3,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
