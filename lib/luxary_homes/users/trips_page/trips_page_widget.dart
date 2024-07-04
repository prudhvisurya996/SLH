import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/androidand_ios/nav_bar/nav_bar_widget.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/users/trips_card/trips_card_widget.dart';
import '/luxary_homes/users/trips_error_message/trips_error_message_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'trips_page_model.dart';
export 'trips_page_model.dart';

class TripsPageWidget extends StatefulWidget {
  const TripsPageWidget({super.key});

  @override
  State<TripsPageWidget> createState() => _TripsPageWidgetState();
}

class _TripsPageWidgetState extends State<TripsPageWidget> {
  late TripsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TripsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().updateManageBookingDetailsStruct(
        (e) => e..bookingId = null,
      );
      FFAppState().update(() {});
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
        endDrawer: Container(
          width: MediaQuery.sizeOf(context).width * 0.85,
          child: Drawer(
            elevation: 16.0,
            child: wrapWithModel(
              model: _model.loginFormModel,
              updateCallback: () => setState(() {}),
              child: LoginFormWidget(),
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              if (FFAppState().accessToken != null &&
                  FFAppState().accessToken != '')
                FutureBuilder<ApiCallResponse>(
                  future: MicroserviceBookingAPIsGroup.userTripsCall.call(
                    userId: FFAppState().userData.userId.toString(),
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
                    final columnUserTripsResponse = snapshot.data!;
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          children: [
                            wrapWithModel(
                              model: _model.newTopBarModel,
                              updateCallback: () => setState(() {}),
                              child: NewTopBarWidget(
                                showSearchFilter: false,
                              ),
                            ),
                            if (FFAppState().accessToken == null ||
                                FFAppState().accessToken == '')
                              Align(
                                alignment: AlignmentDirectional(0.97, -0.65),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 25.0, 20.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      scaffoldKey.currentState!.openEndDrawer();
                                    },
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Login',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: '/',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'SignUp',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20.0,
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
                                ),
                              ),
                          ],
                        ),
                        if (responsiveVisibility(
                          context: context,
                          desktop: false,
                        ))
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
                                        0.0, 0.0, 0.0, 15.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: FlutterFlowIconButton(
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBackground,
                                            borderRadius: 30.0,
                                            borderWidth: 1.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            icon: Icon(
                                              Icons.chevron_left,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: () async {
                                              context.safePop();
                                            },
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 10.0, 0.0, 10.0),
                                          child: Text(
                                            'My Trips',
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
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  FFAppState()
                                                      .updateTripsStatusStruct(
                                                    (e) => e
                                                      ..upComing = null
                                                      ..cancelled = null
                                                      ..completed = null
                                                      ..inProgress = true,
                                                  );
                                                  setState(() {});
                                                },
                                                child: Container(
                                                  width: 110.0,
                                                  height: 113.0,
                                                  decoration: BoxDecoration(
                                                    color: FFAppState()
                                                                .tripsStatus
                                                                .inProgress ==
                                                            true
                                                        ? Color(0xFFB1B1F5)
                                                        : Color(0xFFEBF2F9),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            14.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.all(
                                                            10.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/Vector.svg',
                                                            width: 27.0,
                                                            height: 40.0,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      2.0,
                                                                      0.0,
                                                                      2.0),
                                                          child: Text(
                                                            'InProgress',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              fontSize: 14.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Text(
                                                        getJsonField(
                                                          columnUserTripsResponse
                                                              .jsonBody,
                                                          r'''$[0].count''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          Stack(
                                            children: [
                                              if (FFAppState()
                                                      .tripsStatus
                                                      .upComing ==
                                                  false)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
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
                                                          .updateTripsStatusStruct(
                                                        (e) => e
                                                          ..upComing = true
                                                          ..cancelled = null
                                                          ..completed = null
                                                          ..inProgress = null,
                                                      );
                                                      setState(() {});
                                                    },
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 1.0,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14.0),
                                                      ),
                                                      child: Container(
                                                        width: 110.0,
                                                        height: 113.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      14.0),
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
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
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
                                                                    'assets/images/exit.svg',
                                                                    width: 27.0,
                                                                    height:
                                                                        45.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Flexible(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          0.0,
                                                                          2.0),
                                                                  child: Text(
                                                                    'UpComing',
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
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                getJsonField(
                                                                  columnUserTripsResponse
                                                                      .jsonBody,
                                                                  r'''$[1].count''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
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
                                                      .tripsStatus
                                                      .upComing ==
                                                  true)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
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
                                                          .updateTripsStatusStruct(
                                                        (e) => e
                                                          ..upComing = true
                                                          ..cancelled = null
                                                          ..completed = null
                                                          ..inProgress = null,
                                                      );
                                                      setState(() {});
                                                    },
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 0.5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14.0),
                                                      ),
                                                      child: Container(
                                                        width: 110.0,
                                                        height: 113.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                              Color(0xFF9490F2)
                                                            ],
                                                            stops: [0.0, 1.0],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    0.0, 1.0),
                                                            end:
                                                                AlignmentDirectional(
                                                                    0, -1.0),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      14.0),
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
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
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
                                                                    'assets/images/exit.svg',
                                                                    width: 27.0,
                                                                    height:
                                                                        45.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          0.0,
                                                                          2.0),
                                                                  child: Text(
                                                                    'UpComing',
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
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                getJsonField(
                                                                  columnUserTripsResponse
                                                                      .jsonBody,
                                                                  r'''$[1].count''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                          Stack(
                                            children: [
                                              if (FFAppState()
                                                      .tripsStatus
                                                      .cancelled ==
                                                  false)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
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
                                                          .updateTripsStatusStruct(
                                                        (e) => e
                                                          ..upComing = null
                                                          ..cancelled = true
                                                          ..completed = null
                                                          ..inProgress = null,
                                                      );
                                                      setState(() {});
                                                    },
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 0.5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14.0),
                                                      ),
                                                      child: Container(
                                                        width: 110.0,
                                                        height: 113.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      14.0),
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
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
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
                                                                    'assets/images/Group_1000004760.svg',
                                                                    width: 27.0,
                                                                    height:
                                                                        45.0,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          0.0,
                                                                          2.0),
                                                                  child: Text(
                                                                    'Cancelled',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: GoogleFonts
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
                                                              ),
                                                              Text(
                                                                getJsonField(
                                                                  columnUserTripsResponse
                                                                      .jsonBody,
                                                                  r'''$[3].count''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
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
                                                      .tripsStatus
                                                      .cancelled ==
                                                  true)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
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
                                                          .updateTripsStatusStruct(
                                                        (e) => e
                                                          ..upComing = null
                                                          ..cancelled = true
                                                          ..completed = null
                                                          ..inProgress = null,
                                                      );
                                                      setState(() {});
                                                    },
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 0.5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14.0),
                                                      ),
                                                      child: Container(
                                                        width: 110.0,
                                                        height: 113.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                              Color(0xFF9490F2)
                                                            ],
                                                            stops: [0.0, 1.0],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    0.0, 1.0),
                                                            end:
                                                                AlignmentDirectional(
                                                                    0, -1.0),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      14.0),
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
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
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
                                                                    'assets/images/Group_1000004760.svg',
                                                                    width: 27.0,
                                                                    height:
                                                                        45.0,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          2.0,
                                                                          0.0,
                                                                          2.0),
                                                                  child: Text(
                                                                    'Cancelled',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                getJsonField(
                                                                  columnUserTripsResponse
                                                                      .jsonBody,
                                                                  r'''$[3].count''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                          Stack(
                                            children: [
                                              if (FFAppState()
                                                      .tripsStatus
                                                      .completed ==
                                                  false)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
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
                                                          .updateTripsStatusStruct(
                                                        (e) => e
                                                          ..upComing = null
                                                          ..cancelled = false
                                                          ..completed = true
                                                          ..inProgress = null,
                                                      );
                                                      setState(() {});
                                                    },
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 0.5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14.0),
                                                      ),
                                                      child: Container(
                                                        width: 110.0,
                                                        height: 113.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      14.0),
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
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
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
                                                                    'assets/images/exit_(1).svg',
                                                                    width: 27.0,
                                                                    height:
                                                                        45.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
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
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                getJsonField(
                                                                  columnUserTripsResponse
                                                                      .jsonBody,
                                                                  r'''$[2].count''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
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
                                                      .tripsStatus
                                                      .completed ==
                                                  true)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 10.0, 0.0),
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
                                                          .updateTripsStatusStruct(
                                                        (e) => e
                                                          ..upComing = null
                                                          ..cancelled = false
                                                          ..completed = true
                                                          ..inProgress = null,
                                                      );
                                                      setState(() {});
                                                    },
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      elevation: 0.5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14.0),
                                                      ),
                                                      child: Container(
                                                        width: 110.0,
                                                        height: 113.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            colors: [
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primary,
                                                              Color(0xFF9490F2)
                                                            ],
                                                            stops: [0.0, 1.0],
                                                            begin:
                                                                AlignmentDirectional(
                                                                    0.0, 1.0),
                                                            end:
                                                                AlignmentDirectional(
                                                                    0, -1.0),
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      14.0),
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
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
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
                                                                    'assets/images/exit_(1).svg',
                                                                    width: 27.0,
                                                                    height:
                                                                        45.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
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
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                getJsonField(
                                                                  columnUserTripsResponse
                                                                      .jsonBody,
                                                                  r'''$[2].count''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
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
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 24.0, 12.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          if (((FFAppState()
                                                          .tripsStatus
                                                          .inProgress ==
                                                      true) &&
                                                  (getJsonField(
                                                        columnUserTripsResponse
                                                            .jsonBody,
                                                        r'''$[0].details''',
                                                      ) !=
                                                      null)) &&
                                              responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                            Flexible(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'Inprogress',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Work Sans',
                                                            color: Color(
                                                                0xFF101010),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 18.0,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 10.0),
                                                    child: FutureBuilder<
                                                        ApiCallResponse>(
                                                      future:
                                                          MicroserviceBookingAPIsGroup
                                                              .userTripsCall
                                                              .call(
                                                        userId: FFAppState()
                                                            .userData
                                                            .userId
                                                            .toString(),
                                                      ),
                                                      builder:
                                                          (context, snapshot) {
                                                        // Customize what your widget looks like when it's loading.
                                                        if (!snapshot.hasData) {
                                                          return Center(
                                                            child: SizedBox(
                                                              width: 40.0,
                                                              height: 40.0,
                                                              child:
                                                                  SpinKitPulse(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 40.0,
                                                              ),
                                                            ),
                                                          );
                                                        }
                                                        final listViewUserTripsResponse =
                                                            snapshot.data!;
                                                        return Builder(
                                                          builder: (context) {
                                                            final inprogressTripsDetails =
                                                                getJsonField(
                                                              listViewUserTripsResponse
                                                                  .jsonBody,
                                                              r'''$[0].details''',
                                                            ).toList();
                                                            return ListView
                                                                .builder(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              primary: false,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  inprogressTripsDetails
                                                                      .length,
                                                              itemBuilder: (context,
                                                                  inprogressTripsDetailsIndex) {
                                                                final inprogressTripsDetailsItem =
                                                                    inprogressTripsDetails[
                                                                        inprogressTripsDetailsIndex];
                                                                return TripsCardWidget(
                                                                  key: Key(
                                                                      'Keyak6_${inprogressTripsDetailsIndex}_of_${inprogressTripsDetails.length}'),
                                                                  title:
                                                                      getJsonField(
                                                                    inprogressTripsDetailsItem,
                                                                    r'''$.title''',
                                                                  ).toString(),
                                                                  ownerUserName:
                                                                      getJsonField(
                                                                    inprogressTripsDetailsItem,
                                                                    r'''$.ownerUserName''',
                                                                  ).toString(),
                                                                  ownerPhoneNumber:
                                                                      getJsonField(
                                                                    inprogressTripsDetailsItem,
                                                                    r'''$.ownerPhoneNumber''',
                                                                  ).toString(),
                                                                  checkInDate:
                                                                      getJsonField(
                                                                    inprogressTripsDetailsItem,
                                                                    r'''$.checkInDate''',
                                                                  ).toString(),
                                                                  checkOutDate:
                                                                      getJsonField(
                                                                    inprogressTripsDetailsItem,
                                                                    r'''$.checkOutDate''',
                                                                  ).toString(),
                                                                  bookingRefId:
                                                                      getJsonField(
                                                                    inprogressTripsDetailsItem,
                                                                    r'''$.bookingRefId''',
                                                                  ).toString(),
                                                                  bookingId:
                                                                      getJsonField(
                                                                    inprogressTripsDetailsItem,
                                                                    r'''$.bookingId''',
                                                                  ).toString(),
                                                                  propImages:
                                                                      getJsonField(
                                                                    inprogressTripsDetailsItem,
                                                                    r'''$.propertyImages''',
                                                                  ).toString(),
                                                                  locality:
                                                                      getJsonField(
                                                                    inprogressTripsDetailsItem,
                                                                    r'''$.locality''',
                                                                  ).toString(),
                                                                  city:
                                                                      getJsonField(
                                                                    inprogressTripsDetailsItem,
                                                                    r'''$.city''',
                                                                  ).toString(),
                                                                  cancelledDate:
                                                                      valueOrDefault<
                                                                          String>(
                                                                    getJsonField(
                                                                      inprogressTripsDetailsItem,
                                                                      r'''$.cancelledDate''',
                                                                    )?.toString(),
                                                                    '--',
                                                                  ),
                                                                  refundStatus:
                                                                      getJsonField(
                                                                    inprogressTripsDetailsItem,
                                                                    r'''$.refundStatus''',
                                                                  ).toString(),
                                                                  isModifiable:
                                                                      getJsonField(
                                                                    inprogressTripsDetailsItem,
                                                                    r'''$.modifiable''',
                                                                  ),
                                                                );
                                                              },
                                                            );
                                                          },
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          if (((FFAppState()
                                                          .tripsStatus
                                                          .inProgress ==
                                                      true) &&
                                                  (getJsonField(
                                                        columnUserTripsResponse
                                                            .jsonBody,
                                                        r'''$[0].details''',
                                                      ) ==
                                                      null)) &&
                                              responsiveVisibility(
                                                context: context,
                                                phone: false,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                            Expanded(
                                              child: wrapWithModel(
                                                model: _model
                                                    .tripsErrorMessageModel1,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child:
                                                    TripsErrorMessageWidget(),
                                              ),
                                            ),
                                          if ((FFAppState()
                                                      .tripsStatus
                                                      .upComing ==
                                                  true) &&
                                              (getJsonField(
                                                    columnUserTripsResponse
                                                        .jsonBody,
                                                    r'''$[1].details''',
                                                  ) !=
                                                  null))
                                            Flexible(
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Upcoming',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Work Sans',
                                                              color: Color(
                                                                  0xFF101010),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 18.0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: FutureBuilder<
                                                          ApiCallResponse>(
                                                        future:
                                                            MicroserviceBookingAPIsGroup
                                                                .userTripsCall
                                                                .call(
                                                          userId: FFAppState()
                                                              .userData
                                                              .userId
                                                              .toString(),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 40.0,
                                                                height: 40.0,
                                                                child:
                                                                    SpinKitPulse(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 40.0,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          final listViewUserTripsResponse =
                                                              snapshot.data!;
                                                          return Builder(
                                                            builder: (context) {
                                                              final upComingTripsDetails =
                                                                  getJsonField(
                                                                listViewUserTripsResponse
                                                                    .jsonBody,
                                                                r'''$[1].details''',
                                                              ).toList();
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    upComingTripsDetails
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        upComingTripsDetailsIndex) {
                                                                  final upComingTripsDetailsItem =
                                                                      upComingTripsDetails[
                                                                          upComingTripsDetailsIndex];
                                                                  return TripsCardWidget(
                                                                    key: Key(
                                                                        'Keypcy_${upComingTripsDetailsIndex}_of_${upComingTripsDetails.length}'),
                                                                    title:
                                                                        getJsonField(
                                                                      upComingTripsDetailsItem,
                                                                      r'''$.title''',
                                                                    ).toString(),
                                                                    ownerUserName:
                                                                        getJsonField(
                                                                      upComingTripsDetailsItem,
                                                                      r'''$.ownerUserName''',
                                                                    ).toString(),
                                                                    ownerPhoneNumber:
                                                                        getJsonField(
                                                                      upComingTripsDetailsItem,
                                                                      r'''$.ownerPhoneNumber''',
                                                                    ).toString(),
                                                                    checkInDate:
                                                                        getJsonField(
                                                                      upComingTripsDetailsItem,
                                                                      r'''$.checkInDate''',
                                                                    ).toString(),
                                                                    checkOutDate:
                                                                        getJsonField(
                                                                      upComingTripsDetailsItem,
                                                                      r'''$.checkOutDate''',
                                                                    ).toString(),
                                                                    bookingRefId:
                                                                        getJsonField(
                                                                      upComingTripsDetailsItem,
                                                                      r'''$.bookingRefId''',
                                                                    ).toString(),
                                                                    bookingId:
                                                                        getJsonField(
                                                                      upComingTripsDetailsItem,
                                                                      r'''$.bookingId''',
                                                                    ).toString(),
                                                                    propImages:
                                                                        getJsonField(
                                                                      upComingTripsDetailsItem,
                                                                      r'''$.propertyImages''',
                                                                    ).toString(),
                                                                    locality:
                                                                        getJsonField(
                                                                      upComingTripsDetailsItem,
                                                                      r'''$.locality''',
                                                                    ).toString(),
                                                                    city:
                                                                        getJsonField(
                                                                      upComingTripsDetailsItem,
                                                                      r'''$.city''',
                                                                    ).toString(),
                                                                    cancelledDate:
                                                                        getJsonField(
                                                                      upComingTripsDetailsItem,
                                                                      r'''$.cancelledDate''',
                                                                    ).toString(),
                                                                    refundStatus:
                                                                        getJsonField(
                                                                      upComingTripsDetailsItem,
                                                                      r'''$.refundStatus''',
                                                                    ).toString(),
                                                                    isModifiable:
                                                                        getJsonField(
                                                                      upComingTripsDetailsItem,
                                                                      r'''$.modifiable''',
                                                                    ),
                                                                  );
                                                                },
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
                                          if ((FFAppState()
                                                      .tripsStatus
                                                      .upComing ==
                                                  true) &&
                                              (getJsonField(
                                                    columnUserTripsResponse
                                                        .jsonBody,
                                                    r'''$[1].details''',
                                                  ) ==
                                                  null))
                                            Expanded(
                                              child: wrapWithModel(
                                                model: _model
                                                    .tripsErrorMessageModel2,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child:
                                                    TripsErrorMessageWidget(),
                                              ),
                                            ),
                                          if ((FFAppState()
                                                      .tripsStatus
                                                      .completed ==
                                                  true) &&
                                              (getJsonField(
                                                    columnUserTripsResponse
                                                        .jsonBody,
                                                    r'''$[2].details''',
                                                  ) !=
                                                  null))
                                            Flexible(
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Completed',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Work Sans',
                                                              color: Color(
                                                                  0xFF101010),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 18.0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: FutureBuilder<
                                                          ApiCallResponse>(
                                                        future:
                                                            MicroserviceBookingAPIsGroup
                                                                .userTripsCall
                                                                .call(
                                                          userId: FFAppState()
                                                              .userData
                                                              .userId
                                                              .toString(),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 40.0,
                                                                height: 40.0,
                                                                child:
                                                                    SpinKitPulse(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 40.0,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          final listViewUserTripsResponse =
                                                              snapshot.data!;
                                                          return Builder(
                                                            builder: (context) {
                                                              final completedTripsDetails =
                                                                  getJsonField(
                                                                listViewUserTripsResponse
                                                                    .jsonBody,
                                                                r'''$[2].details''',
                                                              ).toList();
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    completedTripsDetails
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        completedTripsDetailsIndex) {
                                                                  final completedTripsDetailsItem =
                                                                      completedTripsDetails[
                                                                          completedTripsDetailsIndex];
                                                                  return TripsCardWidget(
                                                                    key: Key(
                                                                        'Keyr87_${completedTripsDetailsIndex}_of_${completedTripsDetails.length}'),
                                                                    title:
                                                                        getJsonField(
                                                                      completedTripsDetailsItem,
                                                                      r'''$.title''',
                                                                    ).toString(),
                                                                    ownerUserName:
                                                                        getJsonField(
                                                                      completedTripsDetailsItem,
                                                                      r'''$.ownerUserName''',
                                                                    ).toString(),
                                                                    ownerPhoneNumber:
                                                                        getJsonField(
                                                                      completedTripsDetailsItem,
                                                                      r'''$.ownerPhoneNumber''',
                                                                    ).toString(),
                                                                    checkInDate:
                                                                        getJsonField(
                                                                      completedTripsDetailsItem,
                                                                      r'''$.checkInDate''',
                                                                    ).toString(),
                                                                    checkOutDate:
                                                                        getJsonField(
                                                                      completedTripsDetailsItem,
                                                                      r'''$.checkOutDate''',
                                                                    ).toString(),
                                                                    bookingRefId:
                                                                        getJsonField(
                                                                      completedTripsDetailsItem,
                                                                      r'''$.bookingRefId''',
                                                                    ).toString(),
                                                                    bookingId:
                                                                        getJsonField(
                                                                      completedTripsDetailsItem,
                                                                      r'''$.bookingId''',
                                                                    ).toString(),
                                                                    propImages:
                                                                        getJsonField(
                                                                      completedTripsDetailsItem,
                                                                      r'''$.propertyImages''',
                                                                    ).toString(),
                                                                    locality:
                                                                        getJsonField(
                                                                      completedTripsDetailsItem,
                                                                      r'''$.locality''',
                                                                    ).toString(),
                                                                    city:
                                                                        getJsonField(
                                                                      completedTripsDetailsItem,
                                                                      r'''$.city''',
                                                                    ).toString(),
                                                                    cancelledDate:
                                                                        getJsonField(
                                                                      completedTripsDetailsItem,
                                                                      r'''$.cancelledDate''',
                                                                    ).toString(),
                                                                    refundStatus:
                                                                        getJsonField(
                                                                      completedTripsDetailsItem,
                                                                      r'''$.refundStatus''',
                                                                    ).toString(),
                                                                    isModifiable:
                                                                        getJsonField(
                                                                      completedTripsDetailsItem,
                                                                      r'''$.modifiable''',
                                                                    ),
                                                                  );
                                                                },
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
                                          if ((FFAppState()
                                                      .tripsStatus
                                                      .completed ==
                                                  true) &&
                                              (getJsonField(
                                                    columnUserTripsResponse
                                                        .jsonBody,
                                                    r'''$[2].details''',
                                                  ) ==
                                                  null))
                                            Expanded(
                                              child: wrapWithModel(
                                                model: _model
                                                    .tripsErrorMessageModel3,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child:
                                                    TripsErrorMessageWidget(),
                                              ),
                                            ),
                                          if ((FFAppState()
                                                      .tripsStatus
                                                      .cancelled ==
                                                  true) &&
                                              (getJsonField(
                                                    columnUserTripsResponse
                                                        .jsonBody,
                                                    r'''$[3].details''',
                                                  ) !=
                                                  null))
                                            Flexible(
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Cancelled',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Work Sans',
                                                              color: Color(
                                                                  0xFF101010),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 18.0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: FutureBuilder<
                                                          ApiCallResponse>(
                                                        future:
                                                            MicroserviceBookingAPIsGroup
                                                                .userTripsCall
                                                                .call(
                                                          userId: FFAppState()
                                                              .userData
                                                              .userId
                                                              .toString(),
                                                        ),
                                                        builder: (context,
                                                            snapshot) {
                                                          // Customize what your widget looks like when it's loading.
                                                          if (!snapshot
                                                              .hasData) {
                                                            return Center(
                                                              child: SizedBox(
                                                                width: 40.0,
                                                                height: 40.0,
                                                                child:
                                                                    SpinKitPulse(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  size: 40.0,
                                                                ),
                                                              ),
                                                            );
                                                          }
                                                          final listViewUserTripsResponse =
                                                              snapshot.data!;
                                                          return Builder(
                                                            builder: (context) {
                                                              final cancelledTripsDetails =
                                                                  getJsonField(
                                                                listViewUserTripsResponse
                                                                    .jsonBody,
                                                                r'''$[3].details''',
                                                              ).toList();
                                                              return ListView
                                                                  .builder(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                primary: false,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    cancelledTripsDetails
                                                                        .length,
                                                                itemBuilder:
                                                                    (context,
                                                                        cancelledTripsDetailsIndex) {
                                                                  final cancelledTripsDetailsItem =
                                                                      cancelledTripsDetails[
                                                                          cancelledTripsDetailsIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            10.0),
                                                                    child:
                                                                        TripsCardWidget(
                                                                      key: Key(
                                                                          'Keye6z_${cancelledTripsDetailsIndex}_of_${cancelledTripsDetails.length}'),
                                                                      title:
                                                                          getJsonField(
                                                                        cancelledTripsDetailsItem,
                                                                        r'''$.title''',
                                                                      ).toString(),
                                                                      ownerUserName:
                                                                          getJsonField(
                                                                        cancelledTripsDetailsItem,
                                                                        r'''$.ownerUserName''',
                                                                      ).toString(),
                                                                      ownerPhoneNumber:
                                                                          getJsonField(
                                                                        cancelledTripsDetailsItem,
                                                                        r'''$.ownerPhoneNumber''',
                                                                      ).toString(),
                                                                      checkInDate:
                                                                          getJsonField(
                                                                        cancelledTripsDetailsItem,
                                                                        r'''$.checkInDate''',
                                                                      ).toString(),
                                                                      checkOutDate:
                                                                          getJsonField(
                                                                        cancelledTripsDetailsItem,
                                                                        r'''$.checkOutDate''',
                                                                      ).toString(),
                                                                      bookingRefId:
                                                                          getJsonField(
                                                                        cancelledTripsDetailsItem,
                                                                        r'''$.bookingRefId''',
                                                                      ).toString(),
                                                                      bookingId:
                                                                          getJsonField(
                                                                        cancelledTripsDetailsItem,
                                                                        r'''$.bookingId''',
                                                                      ).toString(),
                                                                      propImages:
                                                                          getJsonField(
                                                                        cancelledTripsDetailsItem,
                                                                        r'''$.propertyImages''',
                                                                      ).toString(),
                                                                      locality:
                                                                          getJsonField(
                                                                        cancelledTripsDetailsItem,
                                                                        r'''$.locality''',
                                                                      ).toString(),
                                                                      city:
                                                                          getJsonField(
                                                                        cancelledTripsDetailsItem,
                                                                        r'''$.city''',
                                                                      ).toString(),
                                                                      cancelledDate:
                                                                          getJsonField(
                                                                        cancelledTripsDetailsItem,
                                                                        r'''$.cancelledDate''',
                                                                      ).toString(),
                                                                      refundStatus:
                                                                          getJsonField(
                                                                        cancelledTripsDetailsItem,
                                                                        r'''$.refundStatus''',
                                                                      ).toString(),
                                                                      isModifiable:
                                                                          getJsonField(
                                                                        cancelledTripsDetailsItem,
                                                                        r'''$.modifiable''',
                                                                      ),
                                                                    ),
                                                                  );
                                                                },
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
                                          if ((FFAppState()
                                                      .tripsStatus
                                                      .cancelled ==
                                                  true) &&
                                              (getJsonField(
                                                    columnUserTripsResponse
                                                        .jsonBody,
                                                    r'''$[3].details''',
                                                  ) ==
                                                  null))
                                            Expanded(
                                              child: wrapWithModel(
                                                model: _model
                                                    .tripsErrorMessageModel4,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child:
                                                    TripsErrorMessageWidget(),
                                              ),
                                            ),
                                        ],
                                      ),
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
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                        ))
                          Flexible(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 20.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: 50.0,
                                          decoration: BoxDecoration(),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 15.0, 0.0),
                                          child: Container(
                                            width: 250.0,
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 20.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    5.0,
                                                                    0.0,
                                                                    20.0,
                                                                    0.0),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryBackground,
                                                          borderRadius: 30.0,
                                                          borderWidth: 1.0,
                                                          buttonSize: 36.0,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          icon: Icon(
                                                            Icons.chevron_left,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 20.0,
                                                          ),
                                                          onPressed: () async {
                                                            context.pushNamed(
                                                                'home_page');
                                                          },
                                                        ),
                                                      ),
                                                      Text(
                                                        'My Trips',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color:
                                                              Color(0xFF101010),
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 24.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      phone: false,
                                                      tablet: false,
                                                      tabletLandscape: false,
                                                      desktop: false,
                                                    ))
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    20.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            FFAppState()
                                                                .updateTripsStatusStruct(
                                                              (e) => e
                                                                ..upComing =
                                                                    null
                                                                ..cancelled =
                                                                    null
                                                                ..completed =
                                                                    null
                                                                ..inProgress =
                                                                    true,
                                                            );
                                                            setState(() {});
                                                          },
                                                          child: Container(
                                                            width: 250.0,
                                                            height: 55.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FFAppState()
                                                                          .tripsStatus
                                                                          .inProgress ==
                                                                      true
                                                                  ? Color(
                                                                      0xFFEBF2F9)
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          18.0,
                                                                          0.0,
                                                                          18.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceAround,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/Vector.svg',
                                                                      width:
                                                                          55.0,
                                                                      height:
                                                                          35.0,
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'InProgress',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: FFAppState().tripsStatus.inProgress == true ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    getJsonField(
                                                                      columnUserTripsResponse
                                                                          .jsonBody,
                                                                      r'''$[0].count''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          fontSize:
                                                                              18.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    Opacity(
                                                      opacity: FFAppState()
                                                                  .tripsStatus
                                                                  .upComing ==
                                                              true
                                                          ? 1.0
                                                          : 0.7,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    20.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            FFAppState()
                                                                .updateTripsStatusStruct(
                                                              (e) => e
                                                                ..upComing =
                                                                    true
                                                                ..cancelled =
                                                                    null
                                                                ..completed =
                                                                    null
                                                                ..inProgress =
                                                                    null,
                                                            );
                                                            setState(() {});
                                                          },
                                                          child: Container(
                                                            width: 250.0,
                                                            height: 55.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FFAppState()
                                                                          .tripsStatus
                                                                          .upComing ==
                                                                      true
                                                                  ? Color(
                                                                      0xFFEBF2F9)
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          18.0,
                                                                          0.0,
                                                                          18.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceAround,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/exit.svg',
                                                                      width:
                                                                          55.0,
                                                                      height:
                                                                          45.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Upcoming',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Work Sans',
                                                                              color: FFAppState().tripsStatus.upComing == true ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    getJsonField(
                                                                      columnUserTripsResponse
                                                                          .jsonBody,
                                                                      r'''$[1].count''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          fontSize:
                                                                              18.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Opacity(
                                                      opacity: FFAppState()
                                                                  .tripsStatus
                                                                  .cancelled ==
                                                              true
                                                          ? 1.0
                                                          : 0.7,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    20.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            FFAppState()
                                                                .updateTripsStatusStruct(
                                                              (e) => e
                                                                ..upComing =
                                                                    null
                                                                ..cancelled =
                                                                    true
                                                                ..completed =
                                                                    null
                                                                ..inProgress =
                                                                    null,
                                                            );
                                                            setState(() {});
                                                          },
                                                          child: Container(
                                                            width: 250.0,
                                                            height: 55.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FFAppState()
                                                                          .tripsStatus
                                                                          .cancelled ==
                                                                      true
                                                                  ? Color(
                                                                      0xFFEBF2F9)
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          18.0,
                                                                          0.0,
                                                                          18.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceAround,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/Group_1000004760.svg',
                                                                      width:
                                                                          55.0,
                                                                      height:
                                                                          45.0,
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Cancelled',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Work Sans',
                                                                              color: FFAppState().tripsStatus.cancelled == true ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    getJsonField(
                                                                      columnUserTripsResponse
                                                                          .jsonBody,
                                                                      r'''$[3].count''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          fontSize:
                                                                              18.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Opacity(
                                                      opacity: FFAppState()
                                                                  .tripsStatus
                                                                  .completed ==
                                                              true
                                                          ? 1.0
                                                          : 0.7,
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    20.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            FFAppState()
                                                                .updateTripsStatusStruct(
                                                              (e) => e
                                                                ..upComing =
                                                                    null
                                                                ..cancelled =
                                                                    null
                                                                ..completed =
                                                                    true
                                                                ..inProgress =
                                                                    null,
                                                            );
                                                            setState(() {});
                                                          },
                                                          child: Container(
                                                            width: 250.0,
                                                            height: 55.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FFAppState()
                                                                          .tripsStatus
                                                                          .completed ==
                                                                      true
                                                                  ? Color(
                                                                      0xFFEBF2F9)
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          18.0,
                                                                          0.0,
                                                                          18.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceAround,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/exit_(1).svg',
                                                                      width:
                                                                          55.0,
                                                                      height:
                                                                          45.0,
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Completed',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Work Sans',
                                                                              color: FFAppState().tripsStatus.completed == true ? FlutterFlowTheme.of(context).primary : FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    getJsonField(
                                                                      columnUserTripsResponse
                                                                          .jsonBody,
                                                                      r'''$[2].count''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          fontSize:
                                                                              18.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ],
                                                              ),
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
                                        ),
                                        Flexible(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if ((FFAppState()
                                                          .tripsStatus
                                                          .inProgress ==
                                                      true) &&
                                                  (getJsonField(
                                                        columnUserTripsResponse
                                                            .jsonBody,
                                                        r'''$[0].details''',
                                                      ) !=
                                                      null))
                                                Flexible(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Text(
                                                              'InProgress',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: Color(
                                                                    0xFF101010),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 22.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Flexible(
                                                        child: FutureBuilder<
                                                            ApiCallResponse>(
                                                          future:
                                                              MicroserviceBookingAPIsGroup
                                                                  .userTripsCall
                                                                  .call(
                                                            userId: FFAppState()
                                                                .userData
                                                                .userId
                                                                .toString(),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 40.0,
                                                                  height: 40.0,
                                                                  child:
                                                                      SpinKitPulse(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 40.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            final staggeredViewUserTripsResponse =
                                                                snapshot.data!;
                                                            return Builder(
                                                              builder:
                                                                  (context) {
                                                                final inProgressTripDetails =
                                                                    getJsonField(
                                                                  staggeredViewUserTripsResponse
                                                                      .jsonBody,
                                                                  r'''$[0].details''',
                                                                ).toList();
                                                                return MasonryGridView
                                                                    .builder(
                                                                  gridDelegate:
                                                                      SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                                    crossAxisCount:
                                                                        3,
                                                                  ),
                                                                  crossAxisSpacing:
                                                                      10.0,
                                                                  mainAxisSpacing:
                                                                      10.0,
                                                                  itemCount:
                                                                      inProgressTripDetails
                                                                          .length,
                                                                  shrinkWrap:
                                                                      true,
                                                                  itemBuilder:
                                                                      (context,
                                                                          inProgressTripDetailsIndex) {
                                                                    final inProgressTripDetailsItem =
                                                                        inProgressTripDetails[
                                                                            inProgressTripDetailsIndex];
                                                                    return TripsCardWidget(
                                                                      key: Key(
                                                                          'Keywd9_${inProgressTripDetailsIndex}_of_${inProgressTripDetails.length}'),
                                                                      title:
                                                                          getJsonField(
                                                                        inProgressTripDetailsItem,
                                                                        r'''$.title''',
                                                                      ).toString(),
                                                                      ownerUserName:
                                                                          getJsonField(
                                                                        inProgressTripDetailsItem,
                                                                        r'''$.ownerUserName''',
                                                                      ).toString(),
                                                                      ownerPhoneNumber:
                                                                          getJsonField(
                                                                        inProgressTripDetailsItem,
                                                                        r'''$.ownerPhoneNumber''',
                                                                      ).toString(),
                                                                      checkInDate:
                                                                          getJsonField(
                                                                        inProgressTripDetailsItem,
                                                                        r'''$.checkInDate''',
                                                                      ).toString(),
                                                                      checkOutDate:
                                                                          getJsonField(
                                                                        inProgressTripDetailsItem,
                                                                        r'''$.checkOutDate''',
                                                                      ).toString(),
                                                                      bookingRefId:
                                                                          getJsonField(
                                                                        inProgressTripDetailsItem,
                                                                        r'''$.bookingRefId''',
                                                                      ).toString(),
                                                                      bookingId:
                                                                          getJsonField(
                                                                        inProgressTripDetailsItem,
                                                                        r'''$.bookingId''',
                                                                      ).toString(),
                                                                      propImages:
                                                                          getJsonField(
                                                                        inProgressTripDetailsItem,
                                                                        r'''$.propertyImages''',
                                                                      ).toString(),
                                                                      locality:
                                                                          getJsonField(
                                                                        inProgressTripDetailsItem,
                                                                        r'''$.locality''',
                                                                      ).toString(),
                                                                      city:
                                                                          getJsonField(
                                                                        inProgressTripDetailsItem,
                                                                        r'''$.city''',
                                                                      ).toString(),
                                                                      cancelledDate:
                                                                          getJsonField(
                                                                        inProgressTripDetailsItem,
                                                                        r'''$.cancelledDate''',
                                                                      ).toString(),
                                                                      refundStatus:
                                                                          getJsonField(
                                                                        inProgressTripDetailsItem,
                                                                        r'''$.refundStatus''',
                                                                      ).toString(),
                                                                      isModifiable:
                                                                          getJsonField(
                                                                        inProgressTripDetailsItem,
                                                                        r'''$.modifiable''',
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              if ((FFAppState()
                                                          .tripsStatus
                                                          .inProgress ==
                                                      true) &&
                                                  (getJsonField(
                                                        columnUserTripsResponse
                                                            .jsonBody,
                                                        r'''$[0].details''',
                                                      ) ==
                                                      null))
                                                Expanded(
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .tripsErrorMessageModel5,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        TripsErrorMessageWidget(),
                                                  ),
                                                ),
                                              if ((FFAppState()
                                                          .tripsStatus
                                                          .upComing ==
                                                      true) &&
                                                  (getJsonField(
                                                        columnUserTripsResponse
                                                            .jsonBody,
                                                        r'''$[1].details''',
                                                      ) !=
                                                      null))
                                                Flexible(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Text(
                                                              'Upcoming',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: Color(
                                                                    0xFF101010),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 22.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Flexible(
                                                        child: FutureBuilder<
                                                            ApiCallResponse>(
                                                          future:
                                                              MicroserviceBookingAPIsGroup
                                                                  .userTripsCall
                                                                  .call(
                                                            userId: FFAppState()
                                                                .userData
                                                                .userId
                                                                .toString(),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 40.0,
                                                                  height: 40.0,
                                                                  child:
                                                                      SpinKitPulse(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 40.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            final staggeredViewUserTripsResponse =
                                                                snapshot.data!;
                                                            return Builder(
                                                              builder:
                                                                  (context) {
                                                                final upComingTripDetails =
                                                                    getJsonField(
                                                                  staggeredViewUserTripsResponse
                                                                      .jsonBody,
                                                                  r'''$[1].details''',
                                                                ).toList();
                                                                return MasonryGridView
                                                                    .builder(
                                                                  gridDelegate:
                                                                      SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                                    crossAxisCount:
                                                                        3,
                                                                  ),
                                                                  crossAxisSpacing:
                                                                      10.0,
                                                                  mainAxisSpacing:
                                                                      10.0,
                                                                  itemCount:
                                                                      upComingTripDetails
                                                                          .length,
                                                                  shrinkWrap:
                                                                      true,
                                                                  itemBuilder:
                                                                      (context,
                                                                          upComingTripDetailsIndex) {
                                                                    final upComingTripDetailsItem =
                                                                        upComingTripDetails[
                                                                            upComingTripDetailsIndex];
                                                                    return TripsCardWidget(
                                                                      key: Key(
                                                                          'Keyuj6_${upComingTripDetailsIndex}_of_${upComingTripDetails.length}'),
                                                                      title:
                                                                          getJsonField(
                                                                        upComingTripDetailsItem,
                                                                        r'''$.title''',
                                                                      ).toString(),
                                                                      ownerUserName:
                                                                          getJsonField(
                                                                        upComingTripDetailsItem,
                                                                        r'''$.ownerUserName''',
                                                                      ).toString(),
                                                                      ownerPhoneNumber:
                                                                          getJsonField(
                                                                        upComingTripDetailsItem,
                                                                        r'''$.ownerPhoneNumber''',
                                                                      ).toString(),
                                                                      checkInDate:
                                                                          getJsonField(
                                                                        upComingTripDetailsItem,
                                                                        r'''$.checkInDate''',
                                                                      ).toString(),
                                                                      checkOutDate:
                                                                          getJsonField(
                                                                        upComingTripDetailsItem,
                                                                        r'''$.checkOutDate''',
                                                                      ).toString(),
                                                                      bookingRefId:
                                                                          getJsonField(
                                                                        upComingTripDetailsItem,
                                                                        r'''$.bookingRefId''',
                                                                      ).toString(),
                                                                      bookingId:
                                                                          getJsonField(
                                                                        upComingTripDetailsItem,
                                                                        r'''$.bookingId''',
                                                                      ).toString(),
                                                                      propImages:
                                                                          getJsonField(
                                                                        upComingTripDetailsItem,
                                                                        r'''$.propertyImages''',
                                                                      ).toString(),
                                                                      locality:
                                                                          getJsonField(
                                                                        upComingTripDetailsItem,
                                                                        r'''$.locality''',
                                                                      ).toString(),
                                                                      city:
                                                                          getJsonField(
                                                                        upComingTripDetailsItem,
                                                                        r'''$.city''',
                                                                      ).toString(),
                                                                      cancelledDate:
                                                                          getJsonField(
                                                                        upComingTripDetailsItem,
                                                                        r'''$.cancelledDate''',
                                                                      ).toString(),
                                                                      refundStatus:
                                                                          getJsonField(
                                                                        upComingTripDetailsItem,
                                                                        r'''$.refundStatus''',
                                                                      ).toString(),
                                                                      isModifiable:
                                                                          getJsonField(
                                                                        upComingTripDetailsItem,
                                                                        r'''$.modifiable''',
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              if ((FFAppState()
                                                          .tripsStatus
                                                          .upComing ==
                                                      true) &&
                                                  (getJsonField(
                                                        columnUserTripsResponse
                                                            .jsonBody,
                                                        r'''$[1].details''',
                                                      ) ==
                                                      null))
                                                Expanded(
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .tripsErrorMessageModel6,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        TripsErrorMessageWidget(),
                                                  ),
                                                ),
                                              if ((FFAppState()
                                                          .tripsStatus
                                                          .completed ==
                                                      true) &&
                                                  (getJsonField(
                                                        columnUserTripsResponse
                                                            .jsonBody,
                                                        r'''$[2].details''',
                                                      ) !=
                                                      null))
                                                Flexible(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Text(
                                                              'Completed',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: Color(
                                                                    0xFF101010),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 22.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Flexible(
                                                        child: FutureBuilder<
                                                            ApiCallResponse>(
                                                          future:
                                                              MicroserviceBookingAPIsGroup
                                                                  .userTripsCall
                                                                  .call(
                                                            userId: FFAppState()
                                                                .userData
                                                                .userId
                                                                .toString(),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 40.0,
                                                                  height: 40.0,
                                                                  child:
                                                                      SpinKitPulse(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 40.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            final staggeredViewUserTripsResponse =
                                                                snapshot.data!;
                                                            return Builder(
                                                              builder:
                                                                  (context) {
                                                                final completedTripDetails =
                                                                    getJsonField(
                                                                  staggeredViewUserTripsResponse
                                                                      .jsonBody,
                                                                  r'''$[2].details''',
                                                                ).toList();
                                                                return MasonryGridView
                                                                    .builder(
                                                                  gridDelegate:
                                                                      SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                                    crossAxisCount:
                                                                        3,
                                                                  ),
                                                                  crossAxisSpacing:
                                                                      10.0,
                                                                  mainAxisSpacing:
                                                                      10.0,
                                                                  itemCount:
                                                                      completedTripDetails
                                                                          .length,
                                                                  shrinkWrap:
                                                                      true,
                                                                  itemBuilder:
                                                                      (context,
                                                                          completedTripDetailsIndex) {
                                                                    final completedTripDetailsItem =
                                                                        completedTripDetails[
                                                                            completedTripDetailsIndex];
                                                                    return TripsCardWidget(
                                                                      key: Key(
                                                                          'Keytkl_${completedTripDetailsIndex}_of_${completedTripDetails.length}'),
                                                                      title:
                                                                          getJsonField(
                                                                        completedTripDetailsItem,
                                                                        r'''$.title''',
                                                                      ).toString(),
                                                                      ownerUserName:
                                                                          getJsonField(
                                                                        completedTripDetailsItem,
                                                                        r'''$.ownerUserName''',
                                                                      ).toString(),
                                                                      ownerPhoneNumber:
                                                                          getJsonField(
                                                                        completedTripDetailsItem,
                                                                        r'''$.ownerPhoneNumber''',
                                                                      ).toString(),
                                                                      checkInDate:
                                                                          getJsonField(
                                                                        completedTripDetailsItem,
                                                                        r'''$.checkInDate''',
                                                                      ).toString(),
                                                                      checkOutDate:
                                                                          getJsonField(
                                                                        completedTripDetailsItem,
                                                                        r'''$.checkOutDate''',
                                                                      ).toString(),
                                                                      bookingRefId:
                                                                          getJsonField(
                                                                        completedTripDetailsItem,
                                                                        r'''$.bookingRefId''',
                                                                      ).toString(),
                                                                      bookingId:
                                                                          getJsonField(
                                                                        completedTripDetailsItem,
                                                                        r'''$.bookingId''',
                                                                      ).toString(),
                                                                      propImages:
                                                                          getJsonField(
                                                                        completedTripDetailsItem,
                                                                        r'''$.propertyImages''',
                                                                      ).toString(),
                                                                      locality:
                                                                          getJsonField(
                                                                        completedTripDetailsItem,
                                                                        r'''$.locality''',
                                                                      ).toString(),
                                                                      city:
                                                                          getJsonField(
                                                                        completedTripDetailsItem,
                                                                        r'''$.city''',
                                                                      ).toString(),
                                                                      cancelledDate:
                                                                          getJsonField(
                                                                        completedTripDetailsItem,
                                                                        r'''$.cancelledDate''',
                                                                      ).toString(),
                                                                      refundStatus:
                                                                          getJsonField(
                                                                        completedTripDetailsItem,
                                                                        r'''$.refundStatus''',
                                                                      ).toString(),
                                                                      isModifiable:
                                                                          getJsonField(
                                                                        completedTripDetailsItem,
                                                                        r'''$.modifiable''',
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              if ((FFAppState()
                                                          .tripsStatus
                                                          .completed ==
                                                      true) &&
                                                  (getJsonField(
                                                        columnUserTripsResponse
                                                            .jsonBody,
                                                        r'''$[2].details''',
                                                      ) ==
                                                      null))
                                                Expanded(
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .tripsErrorMessageModel7,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        TripsErrorMessageWidget(),
                                                  ),
                                                ),
                                              if ((FFAppState()
                                                          .tripsStatus
                                                          .cancelled ==
                                                      true) &&
                                                  (getJsonField(
                                                        columnUserTripsResponse
                                                            .jsonBody,
                                                        r'''$[3].details''',
                                                      ) !=
                                                      null))
                                                Flexible(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Text(
                                                              'Cancelled',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: Color(
                                                                    0xFF101010),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 22.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Expanded(
                                                        child: FutureBuilder<
                                                            ApiCallResponse>(
                                                          future:
                                                              MicroserviceBookingAPIsGroup
                                                                  .userTripsCall
                                                                  .call(
                                                            userId: FFAppState()
                                                                .userData
                                                                .userId
                                                                .toString(),
                                                          ),
                                                          builder: (context,
                                                              snapshot) {
                                                            // Customize what your widget looks like when it's loading.
                                                            if (!snapshot
                                                                .hasData) {
                                                              return Center(
                                                                child: SizedBox(
                                                                  width: 40.0,
                                                                  height: 40.0,
                                                                  child:
                                                                      SpinKitPulse(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 40.0,
                                                                  ),
                                                                ),
                                                              );
                                                            }
                                                            final staggeredViewUserTripsResponse =
                                                                snapshot.data!;
                                                            return Builder(
                                                              builder:
                                                                  (context) {
                                                                final cancelledTripDetails =
                                                                    getJsonField(
                                                                  staggeredViewUserTripsResponse
                                                                      .jsonBody,
                                                                  r'''$[3].details''',
                                                                ).toList();
                                                                return MasonryGridView
                                                                    .builder(
                                                                  gridDelegate:
                                                                      SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                                    crossAxisCount:
                                                                        3,
                                                                  ),
                                                                  crossAxisSpacing:
                                                                      10.0,
                                                                  mainAxisSpacing:
                                                                      10.0,
                                                                  itemCount:
                                                                      cancelledTripDetails
                                                                          .length,
                                                                  shrinkWrap:
                                                                      true,
                                                                  itemBuilder:
                                                                      (context,
                                                                          cancelledTripDetailsIndex) {
                                                                    final cancelledTripDetailsItem =
                                                                        cancelledTripDetails[
                                                                            cancelledTripDetailsIndex];
                                                                    return TripsCardWidget(
                                                                      key: Key(
                                                                          'Keya5x_${cancelledTripDetailsIndex}_of_${cancelledTripDetails.length}'),
                                                                      title:
                                                                          getJsonField(
                                                                        cancelledTripDetailsItem,
                                                                        r'''$.title''',
                                                                      ).toString(),
                                                                      ownerUserName:
                                                                          getJsonField(
                                                                        cancelledTripDetailsItem,
                                                                        r'''$.ownerUserName''',
                                                                      ).toString(),
                                                                      ownerPhoneNumber:
                                                                          getJsonField(
                                                                        cancelledTripDetailsItem,
                                                                        r'''$.ownerPhoneNumber''',
                                                                      ).toString(),
                                                                      checkInDate:
                                                                          getJsonField(
                                                                        cancelledTripDetailsItem,
                                                                        r'''$.checkInDate''',
                                                                      ).toString(),
                                                                      checkOutDate:
                                                                          getJsonField(
                                                                        cancelledTripDetailsItem,
                                                                        r'''$.checkOutDate''',
                                                                      ).toString(),
                                                                      bookingRefId:
                                                                          getJsonField(
                                                                        cancelledTripDetailsItem,
                                                                        r'''$.bookingRefId''',
                                                                      ).toString(),
                                                                      bookingId:
                                                                          getJsonField(
                                                                        cancelledTripDetailsItem,
                                                                        r'''$.bookingId''',
                                                                      ).toString(),
                                                                      propImages:
                                                                          getJsonField(
                                                                        cancelledTripDetailsItem,
                                                                        r'''$.propertyImages''',
                                                                      ).toString(),
                                                                      locality:
                                                                          getJsonField(
                                                                        cancelledTripDetailsItem,
                                                                        r'''$.locality''',
                                                                      ).toString(),
                                                                      city:
                                                                          getJsonField(
                                                                        cancelledTripDetailsItem,
                                                                        r'''$.city''',
                                                                      ).toString(),
                                                                      cancelledDate:
                                                                          getJsonField(
                                                                        cancelledTripDetailsItem,
                                                                        r'''$.cancelledDate''',
                                                                      ).toString(),
                                                                      refundStatus:
                                                                          getJsonField(
                                                                        cancelledTripDetailsItem,
                                                                        r'''$.refundStatus''',
                                                                      ).toString(),
                                                                      isModifiable:
                                                                          getJsonField(
                                                                        cancelledTripDetailsItem,
                                                                        r'''$.modifiable''',
                                                                      ),
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              if ((FFAppState()
                                                          .tripsStatus
                                                          .cancelled ==
                                                      true) &&
                                                  (getJsonField(
                                                        columnUserTripsResponse
                                                            .jsonBody,
                                                        r'''$[3].details''',
                                                      ) ==
                                                      null))
                                                Expanded(
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .tripsErrorMessageModel8,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        TripsErrorMessageWidget(),
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
                                ),
                              ],
                            ),
                          ),
                      ],
                    );
                  },
                ),
              if (FFAppState().accessToken == null ||
                  FFAppState().accessToken == '')
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
                          height: 300.0,
                          fit: BoxFit.contain,
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
                                                .requestFocus(
                                                    _model.unfocusNode)
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
                      index: 2,
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
