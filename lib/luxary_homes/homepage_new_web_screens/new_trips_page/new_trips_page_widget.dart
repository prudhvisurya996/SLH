import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_cancelled_trips/new_cancelled_trips_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_completed_trips/new_completed_trips_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_upcoming_trips/new_upcoming_trips_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_trips_page_model.dart';
export 'new_trips_page_model.dart';

class NewTripsPageWidget extends StatefulWidget {
  const NewTripsPageWidget({super.key});

  @override
  State<NewTripsPageWidget> createState() => _NewTripsPageWidgetState();
}

class _NewTripsPageWidgetState extends State<NewTripsPageWidget> {
  late NewTripsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewTripsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.propertyStatus = 2;
      _model.pageNo = 1;
      _model.pageSize = 8;
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

    return FutureBuilder<ApiCallResponse>(
      future: MicroserviceBookingAPIsGroup.userTripsCall.call(
        userId: FFAppState().userData.userId.toString(),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: SpinKitPulse(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 40.0,
                ),
              ),
            ),
          );
        }
        final newTripsPageUserTripsResponse = snapshot.data!;
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
                child: Visibility(
                  visible: responsiveVisibility(
                    context: context,
                    phone: false,
                  ),
                  child: wrapWithModel(
                    model: _model.loginFormModel,
                    updateCallback: () => setState(() {}),
                    child: LoginFormWidget(),
                  ),
                ),
              ),
            ),
            body: SafeArea(
              top: true,
              child: Visibility(
                visible: responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
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
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'LOGIN',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      TextSpan(
                                        text: ' / ',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'SIGNUP',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0,
                                        ),
                                      )
                                    ],
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 1.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 15.0, 24.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 25.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.propertyStatus = 2;
                                      _model.pageNo = null;
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 40.0,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 0.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: SvgPicture.asset(
                                                    'assets/images/Vector.svg',
                                                    width: 30.0,
                                                    height: 30.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Upcoming Trips',
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 225.0,
                                            child: Divider(
                                              height: 3.0,
                                              thickness: 3.0,
                                              color: _model.propertyStatus == 2
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 25.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.propertyStatus = 3;
                                      _model.pageNo = null;
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 40.0,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              if (_model.propertyStatus != 3)
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: SvgPicture.asset(
                                                    'assets/images/Layer_2_(1).svg',
                                                    width: 30.0,
                                                    height: 30.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              if (_model.propertyStatus == 3)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 5.0, 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: SvgPicture.asset(
                                                      'assets/images/active_property_icon.svg',
                                                      width: 30.0,
                                                      height: 30.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Completed Trips',
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color:
                                                        _model.propertyStatus ==
                                                                1
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : Color(0x805246ED),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 235.0,
                                            child: Divider(
                                              height: 3.0,
                                              thickness: 3.0,
                                              color: _model.propertyStatus == 3
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 25.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.propertyStatus = 0;
                                      _model.pageNo = null;
                                      setState(() {});
                                    },
                                    child: Container(
                                      height: 40.0,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              if (_model.propertyStatus != 0)
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: SvgPicture.asset(
                                                    'assets/images/Group_(1).svg',
                                                    width: 30.0,
                                                    height: 30.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              if (_model.propertyStatus == 0)
                                                FaIcon(
                                                  FontAwesomeIcons.timesCircle,
                                                  color: Color(0xA3D70000),
                                                  size: 30.0,
                                                ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Cancelled Trips',
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color:
                                                        _model.propertyStatus ==
                                                                0
                                                            ? FlutterFlowTheme
                                                                    .of(context)
                                                                .primary
                                                            : Color(0x805246ED),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            width: 230.0,
                                            child: Divider(
                                              height: 3.0,
                                              thickness: 3.0,
                                              color: _model.propertyStatus == 0
                                                  ? FlutterFlowTheme.of(context)
                                                      .primary
                                                  : FlutterFlowTheme.of(context)
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
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 16.0, 24.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  if (_model.propertyStatus == 2)
                                    Flexible(
                                      child: wrapWithModel(
                                        model: _model.newUpcomingTripsModel,
                                        updateCallback: () => setState(() {}),
                                        child: NewUpcomingTripsWidget(),
                                      ),
                                    ),
                                  if (_model.propertyStatus == 3)
                                    wrapWithModel(
                                      model: _model.newCompletedTripsModel,
                                      updateCallback: () => setState(() {}),
                                      child: NewCompletedTripsWidget(),
                                    ),
                                  if (_model.propertyStatus == 0)
                                    wrapWithModel(
                                      model: _model.newCancelledTripsModel,
                                      updateCallback: () => setState(() {}),
                                      child: NewCancelledTripsWidget(),
                                    ),
                                ],
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
          ),
        );
      },
    );
  }
}
