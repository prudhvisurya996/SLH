import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/androidand_ios/nav_bar/nav_bar_widget.dart';
import '/luxary_homes/archetict_team/m_at_accepted_card/m_at_accepted_card_widget.dart';
import '/luxary_homes/archetict_team/m_at_assigned_card/m_at_assigned_card_widget.dart';
import '/luxary_homes/archetict_team/m_at_completed_card/m_at_completed_card_widget.dart';
import '/luxary_homes/archetict_team/m_at_rejected_card/m_at_rejected_card_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/property_inspector/pi_error_msg/pi_error_msg_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'm_at_dashboard_model.dart';
export 'm_at_dashboard_model.dart';

class MAtDashboardWidget extends StatefulWidget {
  const MAtDashboardWidget({super.key});

  @override
  State<MAtDashboardWidget> createState() => _MAtDashboardWidgetState();
}

class _MAtDashboardWidgetState extends State<MAtDashboardWidget> {
  late MAtDashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MAtDashboardModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().atDashboardStatus = ATDashboardStatusStruct(
        assignedTasks: true,
        acceptedTasks: false,
        completedTasks: false,
        rejectedTasks: false,
      );
      setState(() {});
      _model.status = 0;
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
        body: Stack(
          children: [
            if ((FFAppState().accessToken != null &&
                    FFAppState().accessToken != '') &&
                responsiveVisibility(
                  context: context,
                  desktop: false,
                ))
              FutureBuilder<ApiCallResponse>(
                future: MicroserviceExternalHostGroup.aTDashboardCall.call(
                  userId: FFAppState().userData.userId,
                  taskPhase: 2,
                  status: _model.status,
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
                  final columnATDashboardResponse = snapshot.data!;
                  return Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 15.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 0.0, 0.0),
                                      child: FlutterFlowIconButton(
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                        borderRadius: 30.0,
                                        borderWidth: 1.0,
                                        buttonSize: 36.0,
                                        fillColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        icon: Icon(
                                          Icons.chevron_left,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 20.0,
                                        ),
                                        onPressed: () async {
                                          context.safePop();
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 10.0, 0.0, 10.0),
                                      child: Text(
                                        'Architect Dashboard',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: Color(0xFF101010),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
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
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: Stack(
                                          children: [
                                            if (FFAppState()
                                                    .atDashboardStatus
                                                    .assignedTasks ==
                                                false)
                                              Padding(
                                                padding: EdgeInsets.all(5.0),
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
                                                    FFAppState()
                                                            .atDashboardStatus =
                                                        ATDashboardStatusStruct(
                                                      assignedTasks: true,
                                                      acceptedTasks: false,
                                                      completedTasks: false,
                                                      rejectedTasks: false,
                                                    );
                                                    setState(() {});
                                                    _model.status = 0;
                                                    _model.pageNo = 1;
                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    width: 110.0,
                                                    height: 113.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xB3BBD1EA),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Column(
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
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/pending-icon_1.svg',
                                                                width: 27.0,
                                                                height: 28.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        2.0,
                                                                        0.0,
                                                                        2.0),
                                                            child: Text(
                                                              'Assigned',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'tasks',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Text(
                                                              MicroserviceExternalHostGroup
                                                                  .aTDashboardCall
                                                                  .assignedTasksCount(
                                                                    columnATDashboardResponse
                                                                        .jsonBody,
                                                                  )!
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    color: FFAppState().atDashboardStatus.assignedTasks ==
                                                                            true
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                        : FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if (FFAppState()
                                                    .atDashboardStatus
                                                    .assignedTasks ==
                                                true)
                                              Padding(
                                                padding: EdgeInsets.all(5.0),
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
                                                    FFAppState()
                                                            .atDashboardStatus =
                                                        ATDashboardStatusStruct(
                                                      assignedTasks: true,
                                                      acceptedTasks: false,
                                                      completedTasks: false,
                                                      rejectedTasks: false,
                                                    );
                                                    setState(() {});
                                                    _model.status = 0;
                                                    _model.pageNo = 1;
                                                    setState(() {});
                                                  },
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 0.5,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                    ),
                                                    child: Container(
                                                      width: 110.0,
                                                      height: 113.0,
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            Color(0xFFA51FF6),
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary
                                                          ],
                                                          stops: [0.0, 1.0],
                                                          begin:
                                                              AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          end:
                                                              AlignmentDirectional(
                                                                  -1.0, 0),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14.0),
                                                      ),
                                                      child: Column(
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
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/pending-icon_1.svg',
                                                                width: 27.0,
                                                                height: 28.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        2.0,
                                                                        0.0,
                                                                        2.0),
                                                            child: Text(
                                                              'Assigned',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'tasks',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Text(
                                                              MicroserviceExternalHostGroup
                                                                  .aTDashboardCall
                                                                  .assignedTasksCount(
                                                                    columnATDashboardResponse
                                                                        .jsonBody,
                                                                  )!
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: Stack(
                                          children: [
                                            if (FFAppState()
                                                    .atDashboardStatus
                                                    .acceptedTasks ==
                                                false)
                                              Padding(
                                                padding: EdgeInsets.all(5.0),
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
                                                    FFAppState()
                                                            .atDashboardStatus =
                                                        ATDashboardStatusStruct(
                                                      assignedTasks: false,
                                                      acceptedTasks: true,
                                                      completedTasks: false,
                                                      rejectedTasks: false,
                                                    );
                                                    setState(() {});
                                                    _model.status = 1;
                                                    _model.pageNo = 1;
                                                    setState(() {});
                                                  },
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 0.5,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                    ),
                                                    child: Container(
                                                      width: 110.0,
                                                      height: 113.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14.0),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xB3BBD1EA),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    0.0,
                                                                    5.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
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
                                                                if (FFAppState()
                                                                        .atDashboardStatus
                                                                        .acceptedTasks ==
                                                                    true)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        'assets/images/Group_1707477799.svg',
                                                                        width:
                                                                            27.0,
                                                                        height:
                                                                            28.0,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (FFAppState()
                                                                        .atDashboardStatus
                                                                        .acceptedTasks ==
                                                                    false)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        'assets/images/thumbs-up_1.svg',
                                                                        width:
                                                                            27.0,
                                                                        height:
                                                                            28.0,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                    ),
                                                                  ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          0.0,
                                                                          2.0),
                                                              child: Text(
                                                                'Accepted',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                              child: Text(
                                                                'tasks',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Text(
                                                                MicroserviceExternalHostGroup
                                                                    .aTDashboardCall
                                                                    .acceptedTasksCount(
                                                                      columnATDashboardResponse
                                                                          .jsonBody,
                                                                    )!
                                                                    .toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if (FFAppState()
                                                    .atDashboardStatus
                                                    .acceptedTasks ==
                                                true)
                                              Padding(
                                                padding: EdgeInsets.all(5.0),
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
                                                    FFAppState()
                                                            .atDashboardStatus =
                                                        ATDashboardStatusStruct(
                                                      assignedTasks: false,
                                                      acceptedTasks: true,
                                                      completedTasks: false,
                                                      rejectedTasks: false,
                                                    );
                                                    setState(() {});
                                                    _model.status = 1;
                                                    _model.pageNo = 1;
                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    width: 110.0,
                                                    height: 113.0,
                                                    decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xFFA51FF6),
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                        ],
                                                        stops: [0.0, 1.0],
                                                        begin:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        end:
                                                            AlignmentDirectional(
                                                                -1.0, 0),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            if (FFAppState()
                                                                    .atDashboardStatus
                                                                    .acceptedTasks ==
                                                                true)
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            5.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Group_1707477799.svg',
                                                                    width: 27.0,
                                                                    height:
                                                                        28.0,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                              ),
                                                            if (FFAppState()
                                                                    .atDashboardStatus
                                                                    .acceptedTasks ==
                                                                false)
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            5.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/Group_1707477799.svg',
                                                                    width: 27.0,
                                                                    height:
                                                                        28.0,
                                                                    fit: BoxFit
                                                                        .fill,
                                                                  ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      2.0,
                                                                      0.0,
                                                                      2.0),
                                                          child: Text(
                                                            'Accepted',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Work Sans',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 14.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Text(
                                                            'tasks',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Text(
                                                            MicroserviceExternalHostGroup
                                                                .aTDashboardCall
                                                                .acceptedTasksCount(
                                                                  columnATDashboardResponse
                                                                      .jsonBody,
                                                                )!
                                                                .toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: Stack(
                                          children: [
                                            if (FFAppState()
                                                    .atDashboardStatus
                                                    .completedTasks ==
                                                false)
                                              Padding(
                                                padding: EdgeInsets.all(5.0),
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
                                                    FFAppState()
                                                            .atDashboardStatus =
                                                        ATDashboardStatusStruct(
                                                      assignedTasks: false,
                                                      acceptedTasks: false,
                                                      completedTasks: true,
                                                      rejectedTasks: false,
                                                    );
                                                    setState(() {});
                                                    _model.status = 3;
                                                    _model.pageNo = 1;
                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    width: 110.0,
                                                    height: 113.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xB2BBD1EA),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/active_property_icon.svg',
                                                                width: 27.0,
                                                                height: 28.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        2.0,
                                                                        0.0,
                                                                        2.0),
                                                            child: Text(
                                                              'Completed',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'tasks',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Text(
                                                              MicroserviceExternalHostGroup
                                                                  .aTDashboardCall
                                                                  .completedTasksCount(
                                                                    columnATDashboardResponse
                                                                        .jsonBody,
                                                                  )!
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if (FFAppState()
                                                    .atDashboardStatus
                                                    .completedTasks ==
                                                true)
                                              Padding(
                                                padding: EdgeInsets.all(5.0),
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
                                                    FFAppState()
                                                            .atDashboardStatus =
                                                        ATDashboardStatusStruct(
                                                      assignedTasks: false,
                                                      acceptedTasks: false,
                                                      completedTasks: true,
                                                      rejectedTasks: false,
                                                    );
                                                    setState(() {});
                                                    _model.status = 3;
                                                    _model.pageNo = 1;
                                                    setState(() {});
                                                  },
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 0.5,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                    ),
                                                    child: Container(
                                                      width: 110.0,
                                                      height: 113.0,
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            Color(0xFFA51FF6),
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary
                                                          ],
                                                          stops: [0.0, 1.0],
                                                          begin:
                                                              AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          end:
                                                              AlignmentDirectional(
                                                                  -1.0, 0),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/active_property_icon.svg',
                                                                width: 27.0,
                                                                height: 28.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        2.0,
                                                                        0.0,
                                                                        2.0),
                                                            child: Text(
                                                              'Completed',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'tasks',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Text(
                                                              MicroserviceExternalHostGroup
                                                                  .aTDashboardCall
                                                                  .completedTasksCount(
                                                                    columnATDashboardResponse
                                                                        .jsonBody,
                                                                  )!
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: Stack(
                                          children: [
                                            if (FFAppState()
                                                    .atDashboardStatus
                                                    .rejectedTasks ==
                                                false)
                                              Padding(
                                                padding: EdgeInsets.all(5.0),
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
                                                    FFAppState()
                                                            .atDashboardStatus =
                                                        ATDashboardStatusStruct(
                                                      assignedTasks: false,
                                                      acceptedTasks: false,
                                                      completedTasks: false,
                                                      rejectedTasks: true,
                                                    );
                                                    setState(() {});
                                                    _model.status = 4;
                                                    _model.pageNo = 1;
                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    width: 110.0,
                                                    height: 113.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xB2BBD1EA),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  5.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/rejected_icon.svg',
                                                                width: 27.0,
                                                                height: 28.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        2.0,
                                                                        0.0,
                                                                        2.0),
                                                            child: Text(
                                                              'Rejected',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'tasks',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Text(
                                                              MicroserviceExternalHostGroup
                                                                  .aTDashboardCall
                                                                  .rejectedTasksCount(
                                                                    columnATDashboardResponse
                                                                        .jsonBody,
                                                                  )!
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if (FFAppState()
                                                    .atDashboardStatus
                                                    .rejectedTasks ==
                                                true)
                                              Padding(
                                                padding: EdgeInsets.all(5.0),
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
                                                    FFAppState()
                                                            .atDashboardStatus =
                                                        ATDashboardStatusStruct(
                                                      assignedTasks: false,
                                                      acceptedTasks: false,
                                                      completedTasks: false,
                                                      rejectedTasks: true,
                                                    );
                                                    setState(() {});
                                                    _model.status = 4;
                                                    _model.pageNo = 1;
                                                    setState(() {});
                                                  },
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 0.5,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              14.0),
                                                    ),
                                                    child: Container(
                                                      width: 110.0,
                                                      height: 113.0,
                                                      decoration: BoxDecoration(
                                                        gradient:
                                                            LinearGradient(
                                                          colors: [
                                                            Color(0xFFA51FF6),
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary
                                                          ],
                                                          stops: [0.0, 1.0],
                                                          begin:
                                                              AlignmentDirectional(
                                                                  1.0, 0.0),
                                                          end:
                                                              AlignmentDirectional(
                                                                  -1.0, 0),
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/rejected_icon.svg',
                                                                width: 27.0,
                                                                height: 28.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        2.0,
                                                                        0.0,
                                                                        2.0),
                                                            child: Text(
                                                              'Rejected',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        5.0),
                                                            child: Text(
                                                              'tasks',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    fontSize:
                                                                        14.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Text(
                                                              MicroserviceExternalHostGroup
                                                                  .aTDashboardCall
                                                                  .rejectedTasksCount(
                                                                    columnATDashboardResponse
                                                                        .jsonBody,
                                                                  )!
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                  ),
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
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 12.0, 12.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if (_model.status == 1)
                                        Flexible(
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 15.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Accepted Tasks',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color:
                                                              Color(0xFF101010),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 18.0,
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        child: Image.asset(
                                                          'assets/images/filter_gif.gif',
                                                          width: 27.0,
                                                          height: 28.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final acceptedTask =
                                                          getJsonField(
                                                        columnATDashboardResponse
                                                            .jsonBody,
                                                        r'''$.reviewPropertyList''',
                                                      ).toList();
                                                      if (acceptedTask
                                                          .isEmpty) {
                                                        return PiErrorMsgWidget(
                                                          propertyStatus:
                                                              _model.status!,
                                                        );
                                                      }
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            acceptedTask.length,
                                                        itemBuilder: (context,
                                                            acceptedTaskIndex) {
                                                          final acceptedTaskItem =
                                                              acceptedTask[
                                                                  acceptedTaskIndex];
                                                          return MAtAcceptedCardWidget(
                                                            key: Key(
                                                                'Keyb1r_${acceptedTaskIndex}_of_${acceptedTask.length}'),
                                                            title: getJsonField(
                                                              acceptedTaskItem,
                                                              r'''$.title''',
                                                            ).toString(),
                                                            propertyType:
                                                                getJsonField(
                                                              acceptedTaskItem,
                                                              r'''$.propertyType''',
                                                            ).toString(),
                                                            assignedOn:
                                                                getJsonField(
                                                              acceptedTaskItem,
                                                              r'''$.assignedOn''',
                                                            ).toString(),
                                                            priority: functions
                                                                .getPriorityTitle(
                                                                    int.parse(
                                                                        getJsonField(
                                                              acceptedTaskItem,
                                                              r'''$.priority''',
                                                            ).toString()))!,
                                                            location:
                                                                '${getJsonField(
                                                              acceptedTaskItem,
                                                              r'''$.locality''',
                                                            ).toString()},${getJsonField(
                                                              acceptedTaskItem,
                                                              r'''$.city''',
                                                            ).toString()}',
                                                            reviewId:
                                                                getJsonField(
                                                              acceptedTaskItem,
                                                              r'''$.reviewId''',
                                                            ),
                                                            acceptedOn:
                                                                getJsonField(
                                                              acceptedTaskItem,
                                                              r'''$.acceptedOn''',
                                                            ).toString(),
                                                            reviewStatus:
                                                                getJsonField(
                                                              acceptedTaskItem,
                                                              r'''$.reviewStatus''',
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      if (_model.status == 0)
                                        Flexible(
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Assigned Tasks',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color:
                                                              Color(0xFF101010),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 18.0,
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        child: Image.asset(
                                                          'assets/images/filter_gif.gif',
                                                          width: 27.0,
                                                          height: 28.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final assignedTask =
                                                          getJsonField(
                                                        columnATDashboardResponse
                                                            .jsonBody,
                                                        r'''$.reviewPropertyList''',
                                                      ).toList();
                                                      if (assignedTask
                                                          .isEmpty) {
                                                        return PiErrorMsgWidget(
                                                          propertyStatus:
                                                              _model.status!,
                                                        );
                                                      }
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            assignedTask.length,
                                                        itemBuilder: (context,
                                                            assignedTaskIndex) {
                                                          final assignedTaskItem =
                                                              assignedTask[
                                                                  assignedTaskIndex];
                                                          return MAtAssignedCardWidget(
                                                            key: Key(
                                                                'Keywmh_${assignedTaskIndex}_of_${assignedTask.length}'),
                                                            title: getJsonField(
                                                              assignedTaskItem,
                                                              r'''$.title''',
                                                            ).toString(),
                                                            propertyType:
                                                                getJsonField(
                                                              assignedTaskItem,
                                                              r'''$.propertyType''',
                                                            ).toString(),
                                                            assignedOn:
                                                                getJsonField(
                                                              assignedTaskItem,
                                                              r'''$.assignedOn''',
                                                            ).toString(),
                                                            priority: functions
                                                                .getPriorityTitle(
                                                                    int.parse(
                                                                        getJsonField(
                                                              assignedTaskItem,
                                                              r'''$.priority''',
                                                            ).toString()))!,
                                                            location:
                                                                '${getJsonField(
                                                              assignedTaskItem,
                                                              r'''$.locality''',
                                                            ).toString()},${getJsonField(
                                                              assignedTaskItem,
                                                              r'''$.city''',
                                                            ).toString()}',
                                                            reviewId:
                                                                getJsonField(
                                                              assignedTaskItem,
                                                              r'''$.reviewId''',
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      if (_model.status == 3)
                                        Flexible(
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Completed',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color:
                                                              Color(0xFF101010),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 18.0,
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        child: Image.asset(
                                                          'assets/images/filter_gif.gif',
                                                          width: 27.0,
                                                          height: 28.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final completedTask =
                                                          getJsonField(
                                                        columnATDashboardResponse
                                                            .jsonBody,
                                                        r'''$.reviewPropertyList''',
                                                      ).toList();
                                                      if (completedTask
                                                          .isEmpty) {
                                                        return PiErrorMsgWidget(
                                                          propertyStatus:
                                                              _model.status!,
                                                        );
                                                      }
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount: completedTask
                                                            .length,
                                                        itemBuilder: (context,
                                                            completedTaskIndex) {
                                                          final completedTaskItem =
                                                              completedTask[
                                                                  completedTaskIndex];
                                                          return MAtCompletedCardWidget(
                                                            key: Key(
                                                                'Keyb7v_${completedTaskIndex}_of_${completedTask.length}'),
                                                            title: getJsonField(
                                                              completedTaskItem,
                                                              r'''$.title''',
                                                            ).toString(),
                                                            propertyType:
                                                                getJsonField(
                                                              completedTaskItem,
                                                              r'''$.propertyType''',
                                                            ).toString(),
                                                            assignedOn:
                                                                getJsonField(
                                                              completedTaskItem,
                                                              r'''$.assignedOn''',
                                                            ).toString(),
                                                            priority: functions
                                                                .getPriorityTitle(
                                                                    int.parse(
                                                                        getJsonField(
                                                              completedTaskItem,
                                                              r'''$.priority''',
                                                            ).toString()))!,
                                                            location:
                                                                '${getJsonField(
                                                              completedTaskItem,
                                                              r'''$.locality''',
                                                            ).toString()},${getJsonField(
                                                              completedTaskItem,
                                                              r'''$.city''',
                                                            ).toString()}',
                                                            reviewId:
                                                                getJsonField(
                                                              completedTaskItem,
                                                              r'''$.reviewId''',
                                                            ),
                                                            acceptedOn:
                                                                getJsonField(
                                                              completedTaskItem,
                                                              r'''$.acceptedOn''',
                                                            ).toString(),
                                                            completedOn:
                                                                getJsonField(
                                                              completedTaskItem,
                                                              r'''$.completedOn''',
                                                            ).toString(),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      if (_model.status == 4)
                                        Flexible(
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Rejected',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color:
                                                              Color(0xFF101010),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 18.0,
                                                        ),
                                                      ),
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                        child: Image.asset(
                                                          'assets/images/filter_gif.gif',
                                                          width: 27.0,
                                                          height: 28.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 10.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final rejectedTask =
                                                          getJsonField(
                                                        columnATDashboardResponse
                                                            .jsonBody,
                                                        r'''$.reviewPropertyList''',
                                                      ).toList();
                                                      return ListView.builder(
                                                        padding:
                                                            EdgeInsets.zero,
                                                        primary: false,
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            rejectedTask.length,
                                                        itemBuilder: (context,
                                                            rejectedTaskIndex) {
                                                          final rejectedTaskItem =
                                                              rejectedTask[
                                                                  rejectedTaskIndex];
                                                          return MAtRejectedCardWidget(
                                                            key: Key(
                                                                'Keyy4h_${rejectedTaskIndex}_of_${rejectedTask.length}'),
                                                            title: getJsonField(
                                                              rejectedTaskItem,
                                                              r'''$.title''',
                                                            ).toString(),
                                                            propertyType:
                                                                getJsonField(
                                                              rejectedTaskItem,
                                                              r'''$.propertyType''',
                                                            ).toString(),
                                                            assignedOn:
                                                                getJsonField(
                                                              rejectedTaskItem,
                                                              r'''$.assignedOn''',
                                                            ).toString(),
                                                            priority: functions
                                                                .getPriorityTitle(
                                                                    int.parse(
                                                                        getJsonField(
                                                              rejectedTaskItem,
                                                              r'''$.priority''',
                                                            ).toString()))!,
                                                            location:
                                                                '${getJsonField(
                                                              rejectedTaskItem,
                                                              r'''$.locality''',
                                                            ).toString()},${getJsonField(
                                                              rejectedTaskItem,
                                                              r'''$.city''',
                                                            ).toString()}',
                                                            reviewId:
                                                                getJsonField(
                                                              rejectedTaskItem,
                                                              r'''$.reviewId''',
                                                            ),
                                                            rejectedOn:
                                                                getJsonField(
                                                              rejectedTaskItem,
                                                              r'''$.rejectedOn''',
                                                            ).toString(),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              if (MicroserviceExternalHostGroup.aTDashboardCall
                                      .totalCount(
                                    columnATDashboardResponse.jsonBody,
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
                                            if (_model.pageNo! > 1) {
                                              _model.pageNo = 1;
                                              setState(() {});
                                            }
                                          },
                                          child: FaIcon(
                                            FontAwesomeIcons.stepBackward,
                                            color: _model.pageNo! > 1
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
                                            if (_model.pageNo! > 1) {
                                              _model.pageNo =
                                                  _model.pageNo! + -1;
                                              setState(() {});
                                            }
                                          },
                                          child: Icon(
                                            Icons.arrow_back_ios_new_outlined,
                                            color: _model.pageNo! > 1
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
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: _model.pageNo
                                                        .toString(),
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14.0,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: ' of ',
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 12.0,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        valueOrDefault<String>(
                                                      MicroserviceExternalHostGroup
                                                          .aTDashboardCall
                                                          .lastPage(
                                                            columnATDashboardResponse
                                                                .jsonBody,
                                                          )
                                                          ?.toString(),
                                                      '0',
                                                    ),
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14.0,
                                                    ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
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
                                            if (_model.pageNo! <
                                                MicroserviceExternalHostGroup
                                                    .aTDashboardCall
                                                    .lastPage(
                                                  columnATDashboardResponse
                                                      .jsonBody,
                                                )!) {
                                              _model.pageNo =
                                                  _model.pageNo! + 1;
                                              setState(() {});
                                            }
                                          },
                                          child: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            color: _model.pageNo! <
                                                    MicroserviceExternalHostGroup
                                                        .aTDashboardCall
                                                        .lastPage(
                                                      columnATDashboardResponse
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
                                          if (_model.pageNo! <
                                              MicroserviceExternalHostGroup
                                                  .aTDashboardCall
                                                  .lastPage(
                                                columnATDashboardResponse
                                                    .jsonBody,
                                              )!) {
                                            _model.pageNo =
                                                MicroserviceExternalHostGroup
                                                    .aTDashboardCall
                                                    .lastPage(
                                              columnATDashboardResponse
                                                  .jsonBody,
                                            );
                                            setState(() {});
                                          }
                                        },
                                        child: FaIcon(
                                          FontAwesomeIcons.stepForward,
                                          color: _model.pageNo! >
                                                  MicroserviceExternalHostGroup
                                                      .aTDashboardCall
                                                      .lastPage(
                                                    columnATDashboardResponse
                                                        .jsonBody,
                                                  )!
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : Color(0x84BBD1EA),
                                          size: 20.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              wrapWithModel(
                                model: _model.navBarModel1,
                                updateCallback: () => setState(() {}),
                                child: NavBarWidget(
                                  index: 2,
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
            if ((FFAppState().accessToken == null ||
                    FFAppState().accessToken == '') &&
                responsiveVisibility(
                  context: context,
                  desktop: false,
                ))
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFCCAAEE), Color(0x0039D2C0)],
                    stops: [0.0, 1.0],
                    begin: AlignmentDirectional(0.0, -1.0),
                    end: AlignmentDirectional(0, 1.0),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: SvgPicture.asset(
                        'assets/images/login-img.svg',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.13, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 0.0, 0.0),
                            child: Text(
                              'Please \nto view details',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Work Sans',
                                    fontSize: 30.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FontStyle.italic,
                                  ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(0.33, -0.81),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 5.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  isDismissible: false,
                                  enableDrag: false,
                                  useSafeArea: true,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () => _model
                                              .unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.75,
                                          child: PhoneNumLoginWidget(),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));
                              },
                              child: Text(
                                'login',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Work Sans',
                                      fontSize: 30.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FontStyle.italic,
                                      decoration: TextDecoration.underline,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
                  model: _model.navBarModel2,
                  updateCallback: () => setState(() {}),
                  child: NavBarWidget(
                    index: 9,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
