import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_active_property_component/host_active_property_component_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/mobile/m_active_properties/m_active_properties_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/mobile/m_blocked_properties/m_blocked_properties_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/mobile/m_pending_properties/m_pending_properties_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/mobile/m_rejected_properties/m_rejected_properties_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/web/w_active_properties/w_active_properties_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/web/w_blocked_properties/w_blocked_properties_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/web/w_pending_properties/w_pending_properties_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/web/w_rejected_properties/w_rejected_properties_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'host_dashboard_model.dart';
export 'host_dashboard_model.dart';

class HostDashboardWidget extends StatefulWidget {
  const HostDashboardWidget({super.key});

  @override
  State<HostDashboardWidget> createState() => _HostDashboardWidgetState();
}

class _HostDashboardWidgetState extends State<HostDashboardWidget> {
  late HostDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HostDashboardModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().update(() {
        FFAppState().onTapPropertyReservationWeb = 'today\'s-checkin';
        FFAppState().tripsStatus = TripsStatusStruct.fromSerializableMap(jsonDecode(
            '{\"upComing\":\"true\",\"cancelled\":\"false\",\"completed\":\"false\"}'));
      });
      setState(() {
        _model.propertyStatus = 1;
      });
      setState(() {
        FFAppState().updateHostDetailViewStruct(
          (e) => e
            ..status = null
            ..articleId = null,
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
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
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
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: MicroserviceAvailabilityAPIsGroup
                                        .hostPropertyListsCall
                                        .call(
                                      userId: FFAppState().userData.userId,
                                      status: _model.propertyStatus,
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
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 40.0,
                                            ),
                                          ),
                                        );
                                      }
                                      final columnHostPropertyListsResponse =
                                          snapshot.data!;
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 15.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
                                                  child: FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 20.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 30.0,
                                                    fillColor:
                                                        Color(0x4CBBD1EA),
                                                    icon: Icon(
                                                      Icons
                                                          .arrow_back_ios_new_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 12.0,
                                                    ),
                                                    onPressed: () async {
                                                      context.safePop();
                                                    },
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
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
                                                      setState(() {
                                                        _model.propertyStatus =
                                                            1;
                                                      });
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
                                                              if (_model
                                                                      .propertyStatus !=
                                                                  1)
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Layer_2_(1).svg',
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              if (_model
                                                                      .propertyStatus ==
                                                                  1)
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          5.0,
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
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Approved Properties',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: _model.propertyStatus ==
                                                                            1
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primary
                                                                        : Color(
                                                                            0x805246ED),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                '(${MicroserviceAvailabilityAPIsGroup.hostPropertyListsCall.approvedPropertiesCount(
                                                                      columnHostPropertyListsResponse
                                                                          .jsonBody,
                                                                    )?.toString()})',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: _model
                                                                              .propertyStatus ==
                                                                          1
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : Color(
                                                                          0x805246ED),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            width: 235.0,
                                                            child: Divider(
                                                              height: 3.0,
                                                              thickness: 3.0,
                                                              color: _model
                                                                          .propertyStatus ==
                                                                      1
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
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
                                                      setState(() {
                                                        _model.propertyStatus =
                                                            2;
                                                      });
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
                                                              if (_model
                                                                      .propertyStatus !=
                                                                  2)
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
                                                                      'assets/images/pending-icon_1_(1).svg',
                                                                      width:
                                                                          20.0,
                                                                      height:
                                                                          20.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (_model
                                                                      .propertyStatus ==
                                                                  2)
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/pending-icon_1.svg',
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
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Pending Properties',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: _model.propertyStatus ==
                                                                            2
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primary
                                                                        : Color(
                                                                            0x805246ED),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                '(${MicroserviceAvailabilityAPIsGroup.hostPropertyListsCall.pendingPropertiesCount(
                                                                      columnHostPropertyListsResponse
                                                                          .jsonBody,
                                                                    )?.toString()})',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: _model
                                                                              .propertyStatus ==
                                                                          2
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : Color(
                                                                          0x805246ED),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            width: 225.0,
                                                            child: Divider(
                                                              height: 3.0,
                                                              thickness: 3.0,
                                                              color: _model
                                                                          .propertyStatus ==
                                                                      2
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
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
                                                      setState(() {
                                                        _model.propertyStatus =
                                                            0;
                                                      });
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
                                                              if (_model
                                                                      .propertyStatus !=
                                                                  0)
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
                                                              if (_model
                                                                      .propertyStatus ==
                                                                  0)
                                                                FaIcon(
                                                                  FontAwesomeIcons
                                                                      .timesCircle,
                                                                  color: Color(
                                                                      0xA3D70000),
                                                                  size: 22.0,
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
                                                                  'Rejected Properties',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: _model.propertyStatus ==
                                                                            0
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primary
                                                                        : Color(
                                                                            0x805246ED),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                '(${MicroserviceAvailabilityAPIsGroup.hostPropertyListsCall.rejectedPropertiesCount(
                                                                      columnHostPropertyListsResponse
                                                                          .jsonBody,
                                                                    )?.toString()})',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: _model
                                                                              .propertyStatus ==
                                                                          0
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : Color(
                                                                          0x805246ED),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            width: 230.0,
                                                            child: Divider(
                                                              height: 3.0,
                                                              thickness: 3.0,
                                                              color: _model
                                                                          .propertyStatus ==
                                                                      0
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 25.0, 0.0),
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
                                                      setState(() {
                                                        _model.propertyStatus =
                                                            3;
                                                      });
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
                                                              if (_model
                                                                      .propertyStatus !=
                                                                  3)
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
                                                                      'assets/images/block_1.svg',
                                                                      width:
                                                                          20.0,
                                                                      height:
                                                                          20.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (_model
                                                                      .propertyStatus ==
                                                                  3)
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/block_1_(1).svg',
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
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Blocked Properties',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: _model.propertyStatus ==
                                                                            3
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primary
                                                                        : Color(
                                                                            0x805246ED),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                '(${MicroserviceAvailabilityAPIsGroup.hostPropertyListsCall.blockedPropertiesCount(
                                                                      columnHostPropertyListsResponse
                                                                          .jsonBody,
                                                                    )?.toString()})',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: _model
                                                                              .propertyStatus ==
                                                                          3
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : Color(
                                                                          0x805246ED),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            width: 225.0,
                                                            child: Divider(
                                                              height: 3.0,
                                                              thickness: 3.0,
                                                              color: _model
                                                                          .propertyStatus ==
                                                                      3
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
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
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  if (_model.propertyStatus ==
                                                      1)
                                                    Flexible(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .wActivePropertiesModel,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            WActivePropertiesWidget(
                                                          userId: FFAppState()
                                                              .userData
                                                              .userId,
                                                          pageNo: _model.pageNo,
                                                          propertyStatus: _model
                                                              .propertyStatus,
                                                          pageSize:
                                                              _model.pageSize,
                                                          totalCount:
                                                              MicroserviceAvailabilityAPIsGroup
                                                                  .hostPropertyListsCall
                                                                  .totalCount(
                                                            columnHostPropertyListsResponse
                                                                .jsonBody,
                                                          )!,
                                                          lastPage:
                                                              MicroserviceAvailabilityAPIsGroup
                                                                  .hostPropertyListsCall
                                                                  .lastPage(
                                                            columnHostPropertyListsResponse
                                                                .jsonBody,
                                                          )!,
                                                          articleId:
                                                              getJsonField(
                                                            columnHostPropertyListsResponse
                                                                .jsonBody,
                                                            r'''$.articleId''',
                                                          ).toString(),
                                                        ),
                                                      ),
                                                    ),
                                                  if (_model.propertyStatus ==
                                                      3)
                                                    Flexible(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .wBlockedPropertiesModel,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            WBlockedPropertiesWidget(
                                                          userId: FFAppState()
                                                              .userData
                                                              .userId,
                                                          pageNo: _model.pageNo,
                                                          propertyStatus: _model
                                                              .propertyStatus,
                                                          pageSize:
                                                              _model.pageSize,
                                                          totalCount:
                                                              MicroserviceAvailabilityAPIsGroup
                                                                  .hostPropertyListsCall
                                                                  .totalCount(
                                                            columnHostPropertyListsResponse
                                                                .jsonBody,
                                                          )!,
                                                          lastPage:
                                                              MicroserviceAvailabilityAPIsGroup
                                                                  .hostPropertyListsCall
                                                                  .lastPage(
                                                            columnHostPropertyListsResponse
                                                                .jsonBody,
                                                          )!,
                                                          articleId:
                                                              getJsonField(
                                                            columnHostPropertyListsResponse
                                                                .jsonBody,
                                                            r'''$.articleId''',
                                                          ).toString(),
                                                        ),
                                                      ),
                                                    ),
                                                  if (_model.propertyStatus ==
                                                      2)
                                                    Flexible(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .wPendingPropertiesModel,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            WPendingPropertiesWidget(
                                                          userId: FFAppState()
                                                              .userData
                                                              .userId,
                                                          pageNo: _model.pageNo,
                                                          propertyStatus: _model
                                                              .propertyStatus,
                                                          pageSize:
                                                              _model.pageSize,
                                                          totalCount:
                                                              MicroserviceAvailabilityAPIsGroup
                                                                  .hostPropertyListsCall
                                                                  .totalCount(
                                                            columnHostPropertyListsResponse
                                                                .jsonBody,
                                                          )!,
                                                          lastPage:
                                                              MicroserviceAvailabilityAPIsGroup
                                                                  .hostPropertyListsCall
                                                                  .lastPage(
                                                            columnHostPropertyListsResponse
                                                                .jsonBody,
                                                          )!,
                                                          articleId:
                                                              getJsonField(
                                                            columnHostPropertyListsResponse
                                                                .jsonBody,
                                                            r'''$.articleId''',
                                                          ).toString(),
                                                        ),
                                                      ),
                                                    ),
                                                  if (_model.propertyStatus ==
                                                      0)
                                                    Flexible(
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .wRejectedPropertiesModel,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            WRejectedPropertiesWidget(
                                                          userId: FFAppState()
                                                              .userData
                                                              .userId,
                                                          pageNo: _model.pageNo,
                                                          propertyStatus: _model
                                                              .propertyStatus,
                                                          pageSize:
                                                              _model.pageSize,
                                                          totalCount:
                                                              MicroserviceAvailabilityAPIsGroup
                                                                  .hostPropertyListsCall
                                                                  .totalCount(
                                                            columnHostPropertyListsResponse
                                                                .jsonBody,
                                                          )!,
                                                          lastPage:
                                                              MicroserviceAvailabilityAPIsGroup
                                                                  .hostPropertyListsCall
                                                                  .lastPage(
                                                            columnHostPropertyListsResponse
                                                                .jsonBody,
                                                          )!,
                                                          articleId:
                                                              getJsonField(
                                                            columnHostPropertyListsResponse
                                                                .jsonBody,
                                                            r'''$.articleId''',
                                                          ).toString(),
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
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
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Flexible(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 24.0, 12.0, 0.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: MicroserviceAvailabilityAPIsGroup
                              .hostPropertyListsCall
                              .call(
                            userId: FFAppState().userData.userId,
                            status: _model.propertyStatus,
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
                            final columnHostPropertyListsResponse =
                                snapshot.data!;
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 0.0),
                                      child: FlutterFlowIconButton(
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
                                    ),
                                    Expanded(
                                      child: Text(
                                        'My Properties List',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF101010),
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 0.0),
                                        child: SingleChildScrollView(
                                          scrollDirection: Axis.horizontal,
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
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
                                                      FFAppState().update(() {
                                                        FFAppState()
                                                            .updateOnTapHostDbOptionsStruct(
                                                          (e) => e
                                                            ..activeTab = true
                                                            ..pendingTab = null
                                                            ..rejectedTab = null
                                                            ..blockedTab = null,
                                                        );
                                                      });
                                                      setState(() {
                                                        _model.propertyStatus =
                                                            1;
                                                      });
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
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/active_property_icon.svg',
                                                                    width: 20.0,
                                                                    height:
                                                                        20.0,
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
                                                                  'Active Properties',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize: MediaQuery.sizeOf(context).width >=
                                                                            600.0
                                                                        ? 16.0
                                                                        : 14.0,
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
                                                        _model.propertyStatus =
                                                            2;
                                                      });
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
                                                                  height: 20.0,
                                                                  fit: BoxFit
                                                                      .cover,
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
                                                                  'Pending Properties',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize: MediaQuery.sizeOf(context).width >=
                                                                            600.0
                                                                        ? 16.0
                                                                        : 14.0,
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
                                                      FFAppState().update(() {
                                                        FFAppState()
                                                            .updateOnTapHostDbOptionsStruct(
                                                          (e) => e
                                                            ..activeTab = null
                                                            ..pendingTab = null
                                                            ..rejectedTab = true
                                                            ..blockedTab = null,
                                                        );
                                                      });
                                                      setState(() {
                                                        _model.propertyStatus =
                                                            0;
                                                      });
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
                                                                  height: 20.0,
                                                                  fit: BoxFit
                                                                      .cover,
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
                                                                  'Rejected Properties',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize: MediaQuery.sizeOf(context).width >=
                                                                            600.0
                                                                        ? 16.0
                                                                        : 14.0,
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
                                                    _model.propertyStatus == 3
                                                        ? 1.0
                                                        : 0.6,
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
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                          .updateOnTapHostDbOptionsStruct(
                                                        (e) => e
                                                          ..activeTab = null
                                                          ..pendingTab = null
                                                          ..rejectedTab = null
                                                          ..blockedTab = true,
                                                      );
                                                    });
                                                    setState(() {
                                                      _model.propertyStatus = 3;
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
                                                                'assets/images/blocked_icon.svg',
                                                                width: 20.0,
                                                                height: 20.0,
                                                                fit: BoxFit
                                                                    .cover,
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
                                                                'Blocked Properties',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      MediaQuery.sizeOf(context).width >=
                                                                              600.0
                                                                          ? 16.0
                                                                          : 14.0,
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
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 0.0),
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: MicroserviceAvailabilityAPIsGroup
                                        .hostPropertyListsCall
                                        .call(
                                      userId: FFAppState().userData.userId,
                                      status: _model.propertyStatus,
                                      pageNo: 1,
                                      pageSize: 8,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 40.0,
                                            height: 40.0,
                                            child: SpinKitPulse(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 40.0,
                                            ),
                                          ),
                                        );
                                      }
                                      final hostActivePropertyComponentHostPropertyListsResponse =
                                          snapshot.data!;
                                      return wrapWithModel(
                                        model: _model
                                            .hostActivePropertyComponentModel,
                                        updateCallback: () => setState(() {}),
                                        child:
                                            HostActivePropertyComponentWidget(
                                          myPropCount:
                                              MicroserviceAvailabilityAPIsGroup
                                                  .hostPropertyListsCall
                                                  .totalCount(
                                            hostActivePropertyComponentHostPropertyListsResponse
                                                .jsonBody,
                                          )!,
                                          myPropStatus: _model.propertyStatus,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Flexible(
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 15.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            if (_model.propertyStatus == 3)
                                              wrapWithModel(
                                                model: _model
                                                    .mBlockedPropertiesModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: MBlockedPropertiesWidget(
                                                  propertyStatus:
                                                      _model.propertyStatus,
                                                  articleId: getJsonField(
                                                    columnHostPropertyListsResponse
                                                        .jsonBody,
                                                    r'''$.articleId''',
                                                  ).toString(),
                                                ),
                                              ),
                                            if (_model.propertyStatus == 2)
                                              wrapWithModel(
                                                model: _model
                                                    .mPendingPropertiesModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: MPendingPropertiesWidget(
                                                  propertyStatus:
                                                      _model.propertyStatus,
                                                  articleId: getJsonField(
                                                    columnHostPropertyListsResponse
                                                        .jsonBody,
                                                    r'''$.articleId''',
                                                  ).toString(),
                                                ),
                                              ),
                                            if (_model.propertyStatus == 0)
                                              wrapWithModel(
                                                model: _model
                                                    .mRejectedPropertiesModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child:
                                                    MRejectedPropertiesWidget(
                                                  propertyStatus:
                                                      _model.propertyStatus,
                                                  articleId: getJsonField(
                                                    columnHostPropertyListsResponse
                                                        .jsonBody,
                                                    r'''$.articleId''',
                                                  ).toString(),
                                                ),
                                              ),
                                            if (_model.propertyStatus == 1)
                                              wrapWithModel(
                                                model: _model
                                                    .mActivePropertiesModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: MActivePropertiesWidget(
                                                  propertyStatus:
                                                      _model.propertyStatus,
                                                  articleId: getJsonField(
                                                    columnHostPropertyListsResponse
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
                    index: 4,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
