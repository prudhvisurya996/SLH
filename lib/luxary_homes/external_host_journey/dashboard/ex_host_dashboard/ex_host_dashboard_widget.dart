import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import '/luxary_homes/external_host_journey/dashboard/dashboard_components/ex_lse_rqt_db/ex_lse_rqt_db_widget.dart';
import '/luxary_homes/external_host_journey/dashboard/ex_host_property_listing_mobile_components/m_listed_property_listing/m_listed_property_listing_widget.dart';
import '/luxary_homes/external_host_journey/dashboard/ex_host_property_listing_mobile_components/m_ongoing_property_listing/m_ongoing_property_listing_widget.dart';
import '/luxary_homes/external_host_journey/dashboard/ex_host_property_listing_mobile_components/m_rejected_property_listing/m_rejected_property_listing_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
      setState(() {
        FFAppState().updateExHostDetailViewStruct(
          (e) => e
            ..articleId = null
            ..status = null,
        );
      });
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
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
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
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 20.0,
                                                  fillColor: Color(0x4CBBD1EA),
                                                  icon: Icon(
                                                    Icons.chevron_left,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 24.0,
                                                  ),
                                                  onPressed: () async {
                                                    context.safePop();
                                                  },
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          30.0, 0.0, 0.0, 0.0),
                                                  child: RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Lease Request',
                                                          style: GoogleFonts
                                                              .getFont(
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
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Work Sans',
                                                            color: Color(
                                                                0x80000D3E),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 12.0,
                                                          ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
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
                                        model: _model.exLseRqtDbModel,
                                        updateCallback: () => setState(() {}),
                                        child: ExLseRqtDbWidget(),
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
                          model: _model.webBottomCopyWriteModel,
                          updateCallback: () => setState(() {}),
                          child: WebBottomCopyWriteWidget(),
                        ),
                      ],
                    ),
                  ),
                if (responsiveVisibility(
                  context: context,
                  desktop: false,
                ))
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 20.0, 12.0, 0.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: MicroserviceAvailabilityAPIsGroup
                            .externalHostDashBoardListingCall
                            .call(
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
                          final columnExternalHostDashBoardListingResponse =
                              snapshot.data!;
                          return Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
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
                                            Icons.arrow_back_ios_new_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 12.0,
                                          ),
                                          onPressed: () async {
                                            context.safePop();
                                          },
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Lease request',
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
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
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          TextSpan(
                                            text: '  +',
                                            style: FlutterFlowTheme.of(context)
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
                              SingleChildScrollView(
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
                                            opacity: _model.propertyStatus == 2
                                                ? 1.0
                                                : 0.6,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0,
                                                      0.0,
                                                      valueOrDefault<double>(
                                                        MediaQuery.sizeOf(
                                                                        context)
                                                                    .width >=
                                                                600.0
                                                            ? 25.0
                                                            : 1.0,
                                                        0.0,
                                                      ),
                                                      0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  FFAppState().update(() {
                                                    FFAppState()
                                                        .updateOnTapHostDbOptionsStruct(
                                                      (e) => e
                                                        ..activeTab = null
                                                        ..pendingTab = true
                                                        ..rejectedTab = null
                                                        ..blockedTab = null,
                                                    );
                                                  });
                                                  setState(() {
                                                    _model.propertyStatus = 2;
                                                  });
                                                },
                                                child: Container(
                                                  height: 30.0,
                                                  decoration: BoxDecoration(),
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
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/pending-icon_1_(1).svg',
                                                              width: 20.0,
                                                              height: 20.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Ongoing Properties (${MicroserviceAvailabilityAPIsGroup.externalHostDashBoardListingCall.ongoingPropertiesCount(
                                                                    columnExternalHostDashBoardListingResponse
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
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if (_model
                                                              .propertyStatus ==
                                                          2)
                                                        SizedBox(
                                                          width: 196.0,
                                                          child: Divider(
                                                            height: 2.0,
                                                            thickness: 2.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
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
                                            opacity: _model.propertyStatus == 0
                                                ? 1.0
                                                : 0.6,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0,
                                                      0.0,
                                                      valueOrDefault<double>(
                                                        MediaQuery.sizeOf(
                                                                        context)
                                                                    .width >=
                                                                600.0
                                                            ? 25.0
                                                            : 1.0,
                                                        0.0,
                                                      ),
                                                      0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model.propertyStatus = 0;
                                                  });
                                                },
                                                child: Container(
                                                  height: 30.0,
                                                  decoration: BoxDecoration(),
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
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/Group_(1).svg',
                                                              width: 20.0,
                                                              height: 20.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Rejected Properties (${MicroserviceAvailabilityAPIsGroup.externalHostDashBoardListingCall.rejectedPropertiesCount(
                                                                    columnExternalHostDashBoardListingResponse
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
                                                                fontSize: 14.0,
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
                                                            thickness: 2.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
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
                                            opacity: _model.propertyStatus == 1
                                                ? 1.0
                                                : 0.6,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0,
                                                      0.0,
                                                      valueOrDefault<double>(
                                                        MediaQuery.sizeOf(
                                                                        context)
                                                                    .width >=
                                                                600.0
                                                            ? 25.0
                                                            : 1.0,
                                                        0.0,
                                                      ),
                                                      0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    _model.propertyStatus = 1;
                                                  });
                                                },
                                                child: Container(
                                                  height: 30.0,
                                                  decoration: BoxDecoration(),
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
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/active_property_icon.svg',
                                                                width: 20.0,
                                                                height: 20.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Listed Properties (${MicroserviceAvailabilityAPIsGroup.externalHostDashBoardListingCall.listedPropertiesCount(
                                                                    columnExternalHostDashBoardListingResponse
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
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      if (_model
                                                              .propertyStatus ==
                                                          1)
                                                        SizedBox(
                                                          width: 196.0,
                                                          child: Divider(
                                                            height: 2.0,
                                                            thickness: 2.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
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
                              Divider(
                                height: 1.0,
                                thickness: 1.0,
                                indent: 5.0,
                                color: Color(0xFF979797),
                              ),
                              Flexible(
                                child: Container(
                                  decoration: BoxDecoration(),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        if (_model.propertyStatus == 2)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: wrapWithModel(
                                              model: _model
                                                  .mOngoingPropertyListingModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child:
                                                  MOngoingPropertyListingWidget(
                                                propertyStatus:
                                                    _model.propertyStatus,
                                                articleId: getJsonField(
                                                  columnExternalHostDashBoardListingResponse
                                                      .jsonBody,
                                                  r'''$.articleId''',
                                                ).toString(),
                                              ),
                                            ),
                                          ),
                                        if (_model.propertyStatus == 0)
                                          wrapWithModel(
                                            model: _model
                                                .mRejectedPropertyListingModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child:
                                                MRejectedPropertyListingWidget(
                                              propertyStatus:
                                                  _model.propertyStatus,
                                              articleId: getJsonField(
                                                columnExternalHostDashBoardListingResponse
                                                    .jsonBody,
                                                r'''$.articleId''',
                                              ).toString(),
                                            ),
                                          ),
                                        if (_model.propertyStatus == 1)
                                          wrapWithModel(
                                            model: _model
                                                .mListedPropertyListingModel,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: MListedPropertyListingWidget(
                                              propertyStatus:
                                                  _model.propertyStatus,
                                              articleId: getJsonField(
                                                columnExternalHostDashBoardListingResponse
                                                    .jsonBody,
                                                r'''$.articleId''',
                                              ).toString(),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
