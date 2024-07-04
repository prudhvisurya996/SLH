import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/host_information/ex_hostdetails/ex_hostdetails_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'exhost_detail_view_model.dart';
export 'exhost_detail_view_model.dart';

class ExhostDetailViewWidget extends StatefulWidget {
  const ExhostDetailViewWidget({super.key});

  @override
  State<ExhostDetailViewWidget> createState() => _ExhostDetailViewWidgetState();
}

class _ExhostDetailViewWidgetState extends State<ExhostDetailViewWidget> {
  late ExhostDetailViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExhostDetailViewModel());

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
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
                desktop: false,
              ))
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 15.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.safePop();
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: SvgPicture.asset(
                            'assets/images/Secondary_Button_Copy.svg',
                            width: 36.0,
                            height: 36.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: Text(
                          () {
                            if (FFAppState().HostDetailView.status == 2) {
                              return 'Property request status';
                            } else if (FFAppState().HostDetailView.status ==
                                0) {
                              return 'Rejected property';
                            } else {
                              return 'Listed property details';
                            }
                          }(),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
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
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: MicroserviceAvailabilityAPIsGroup
                          .externalHostDashboardFullViewCall
                          .call(
                        articleId:
                            FFAppState().ExHostDetailView.articleId.toString(),
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
                        final columnExternalHostDashboardFullViewResponse =
                            snapshot.data!;
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (FFAppState().HostDetailView.status == 3)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 38.0,
                                                    height: 38.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFF80BB01),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Icon(
                                                      Icons.check_outlined,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      size: 18.0,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      width: 4.0,
                                                      height: 78.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFF80BB01),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Flexible(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          15.0, 0.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Submitted',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Your Application Submitted Successfully Our SID Luxury homes team will contact you shortly',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
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
                                                        Text(
                                                          'Yet to assign',
                                                          style: TextStyle(
                                                            fontSize: 14.0,
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
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: 38.0,
                                                height: 38.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFFCD3D),
                                                  shape: BoxShape.circle,
                                                ),
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: FaIcon(
                                                  FontAwesomeIcons
                                                      .hourglassHalf,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  size: 18.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Property Inspector',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
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
                              if (FFAppState().HostDetailView.status == 0)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 38.0,
                                                        height: 38.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFF80BB01),
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                        child: Icon(
                                                          Icons.check_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          size: 18.0,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 4.0,
                                                          height: 78.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFF80BB01),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Submitted',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Your Application Submitted Successfully Our SID Luxury homes team will contact you shortly',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                            tablet: false,
                                                            tabletLandscape:
                                                                false,
                                                            desktop: false,
                                                          ))
                                                            Text(
                                                              'Yet to assign',
                                                              style: TextStyle(
                                                                fontSize: 14.0,
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: 38.0,
                                                    height: 38.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFD70000),
                                                      shape: BoxShape.circle,
                                                    ),
                                                    child: Icon(
                                                      Icons.clear_sharp,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      size: 18.0,
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Rejected',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                ),
                                                          ),
                                                          if (responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                            tablet: false,
                                                            tabletLandscape:
                                                                false,
                                                            desktop: false,
                                                          ))
                                                            Text(
                                                              'Yet to assign',
                                                              style: TextStyle(
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            if ((_model.propertyStatus == 2) &&
                                                responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                  desktop: false,
                                                ))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 12.0, 12.0, 0.0),
                                                child: Card(
                                                  clipBehavior: Clip
                                                      .antiAliasWithSaveLayer,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
                                                  elevation: 2.0,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(12.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/image_7_(4).png',
                                                                width: 110.0,
                                                                height: 100.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            15.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Flexible(
                                                                          child:
                                                                              Text(
                                                                            'SID Luxury Homes',
                                                                            maxLines:
                                                                                2,
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Poppins',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 14.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Text(
                                                                                '₹.2022',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                              ),
                                                                              Text(
                                                                                ' /night',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: Color(0xFF878787),
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          10.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 1.0),
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: SvgPicture.asset(
                                                                                'assets/images/location-pin.svg',
                                                                                width: 15.0,
                                                                                height: 15.0,
                                                                                fit: BoxFit.contain,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'somajiguda - hyderabad',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Poppins',
                                                                                  color: Color(0xFF878787),
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontSize: 12.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Vector_(1).svg',
                                                                            width:
                                                                                15.0,
                                                                            height:
                                                                                15.0,
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              '27 June 2022',
                                                                              style: GoogleFonts.getFont(
                                                                                'Poppins',
                                                                                color: Color(0xFF878787),
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 12.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              1.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'View Status',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontSize:
                                                                                12.0,
                                                                            decoration:
                                                                                TextDecoration.underline,
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
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Text(
                                          'Reason for Rejection',
                                          style: FlutterFlowTheme.of(context)
                                              .displaySmall
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFD70000),
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 12.0, 0.0, 0.0),
                                        child: Text(
                                          getJsonField(
                                            columnExternalHostDashboardFullViewResponse
                                                .jsonBody,
                                            r'''$.comments''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
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
                                    12.0, 15.0, 12.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Property title',
                                        style: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Text(
                                          getJsonField(
                                            columnExternalHostDashboardFullViewResponse
                                                .jsonBody,
                                            r'''$.title''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Text(
                                          'Property type',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Text(
                                          getJsonField(
                                            columnExternalHostDashboardFullViewResponse
                                                .jsonBody,
                                            r'''$.propertyType''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Text(
                                          'Property address',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: SvgPicture.asset(
                                                'assets/images/map_location_dot.svg',
                                                width: 20.0,
                                                height: 20.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  '${getJsonField(
                                                    columnExternalHostDashboardFullViewResponse
                                                        .jsonBody,
                                                    r'''$.plotNo''',
                                                  ).toString()},${getJsonField(
                                                    columnExternalHostDashboardFullViewResponse
                                                        .jsonBody,
                                                    r'''$.street''',
                                                  ).toString()},${getJsonField(
                                                    columnExternalHostDashboardFullViewResponse
                                                        .jsonBody,
                                                    r'''$.locality''',
                                                  ).toString()}, ${getJsonField(
                                                    columnExternalHostDashboardFullViewResponse
                                                        .jsonBody,
                                                    r'''$.city''',
                                                  ).toString()}, ${getJsonField(
                                                    columnExternalHostDashboardFullViewResponse
                                                        .jsonBody,
                                                    r'''$.state''',
                                                  ).toString()}, ${getJsonField(
                                                    columnExternalHostDashboardFullViewResponse
                                                        .jsonBody,
                                                    r'''$.zipcode''',
                                                  ).toString()}, ${getJsonField(
                                                    columnExternalHostDashboardFullViewResponse
                                                        .jsonBody,
                                                    r'''$.country''',
                                                  ).toString()}.',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: SvgPicture.asset(
                                                'assets/images/house_chimney_blank.svg',
                                                width: 20.0,
                                                height: 20.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  getJsonField(
                                                    columnExternalHostDashboardFullViewResponse
                                                        .jsonBody,
                                                    r'''$.propertySubType''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Text(
                                          'Property Availability',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: dateTimeFormat(
                                                    'dd-MM-yyyy',
                                                    functions
                                                        .strToDateTimeConversion(
                                                            getJsonField(
                                                      columnExternalHostDashboardFullViewResponse
                                                          .jsonBody,
                                                      r'''$.availableFrom''',
                                                    ).toString())),
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Color(0xFF000D3E),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: '  to  ',
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
                                                text: dateTimeFormat(
                                                    'dd-MM-yyyy',
                                                    functions
                                                        .strToDateTimeConversion(
                                                            getJsonField(
                                                      columnExternalHostDashboardFullViewResponse
                                                          .jsonBody,
                                                      r'''$.availableTo''',
                                                    ).toString())),
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
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Price per month:  ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: '₹${getJsonField(
                                                  columnExternalHostDashboardFullViewResponse
                                                      .jsonBody,
                                                  r'''$.expectedPrice''',
                                                ).toString()}',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
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
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Text(
                                          'Description',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Text(
                                          getJsonField(
                                            columnExternalHostDashboardFullViewResponse
                                                .jsonBody,
                                            r'''$.description''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Text(
                                          'What’s included',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Builder(
                                          builder: (context) {
                                            final amenitiesList = functions
                                                    .listMapConversion(
                                                        getJsonField(
                                                      columnExternalHostDashboardFullViewResponse
                                                          .jsonBody,
                                                      r'''$.amenities''',
                                                    ).toString())
                                                    ?.toList() ??
                                                [];
                                            return GridView.builder(
                                              padding: EdgeInsets.zero,
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                                childAspectRatio: 4.5,
                                              ),
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: amenitiesList.length,
                                              itemBuilder: (context,
                                                  amenitiesListIndex) {
                                                final amenitiesListItem =
                                                    amenitiesList[
                                                        amenitiesListIndex];
                                                return Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                5.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          width: 6.0,
                                                          height: 6.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        7.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              height: 26.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFF5F5F5),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .only(
                                                                  bottomLeft: Radius
                                                                      .circular(
                                                                          8.0),
                                                                  bottomRight: Radius
                                                                      .circular(
                                                                          8.0),
                                                                  topLeft: Radius
                                                                      .circular(
                                                                          8.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          8.0),
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          6.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      amenitiesListItem,
                                                                      r'''$.name''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                        ),
                                      ),
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                        tablet: false,
                                        tabletLandscape: false,
                                        desktop: false,
                                      ))
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Text(
                                            'safety items',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
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
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 0.0),
                                          child: GridView(
                                            padding: EdgeInsets.zero,
                                            gridDelegate:
                                                SliverGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 2,
                                              childAspectRatio: 4.5,
                                            ),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(0.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(0.0),
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        width: 6.0,
                                                        height: 6.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          shape:
                                                              BoxShape.circle,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    7.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          height: 26.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFF5F5F5),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      8.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          8.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      8.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      8.0),
                                                            ),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          6.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Smoke alarm',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
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
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Text(
                                          'Property Images',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 3.0),
                                        child: Builder(
                                          builder: (context) {
                                            final imagesList = functions
                                                    .initImg(
                                                        functions
                                                            .listDataConversion(
                                                                getJsonField(
                                                              columnExternalHostDashboardFullViewResponse
                                                                  .jsonBody,
                                                              r'''$.imageURLs''',
                                                            ).toString())
                                                            ?.toList(),
                                                        FFAppState().BaseUrl)
                                                    ?.toList() ??
                                                [];
                                            return Wrap(
                                              spacing: 12.0,
                                              runSpacing: 12.0,
                                              alignment: WrapAlignment.start,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.start,
                                              direction: Axis.horizontal,
                                              runAlignment: WrapAlignment.start,
                                              verticalDirection:
                                                  VerticalDirection.down,
                                              clipBehavior: Clip.none,
                                              children: List.generate(
                                                  imagesList.length,
                                                  (imagesListIndex) {
                                                final imagesListItem =
                                                    imagesList[imagesListIndex];
                                                return ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.network(
                                                    imagesListItem,
                                                    width: 109.0,
                                                    height: 109.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                );
                                              }),
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
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 68.0,
                        decoration: BoxDecoration(),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
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
                                        fillColor: Color(0x4CBBD1EA),
                                        icon: Icon(
                                          Icons.chevron_left_sharp,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
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
                                                          .ExHostDetailView
                                                          .status ==
                                                      2) {
                                                    return 'View property request status';
                                                  } else if (FFAppState()
                                                          .ExHostDetailView
                                                          .status ==
                                                      0) {
                                                    return 'Rejected property';
                                                  } else if (FFAppState()
                                                          .ExHostDetailView
                                                          .status ==
                                                      1) {
                                                    return 'Listed property details';
                                                  } else {
                                                    return 'NA';
                                                  }
                                                }(),
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                            ),
                            if (FFAppState().ExHostDetailView.status == 3)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 26.0, 0.0, 0.0),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text:
                                            'Property verification assigned to ',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 22.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Property Inspector',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
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
                            if (FFAppState().ExHostDetailView.status == 3)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF80BB01),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Icon(
                                        Icons.check_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        size: 16.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Submitted',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 5.0, 0.0, 0.0),
                                                child: Container(
                                                  width: 144.0,
                                                  height: 4.0,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Color(0xFF80BB01),
                                                        Color(0xFFFFCD3D)
                                                      ],
                                                      stops: [0.4, 0.6],
                                                      begin:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      end: AlignmentDirectional(
                                                          1.0, 0),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Your Application Submitted ',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0x80000000),
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            'Successfully Our SID Luxury homes ',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0x80000000),
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            'team will contact you shortly',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0x80000000),
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFFCD3D),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: FaIcon(
                                          FontAwesomeIcons.hourglassHalf,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          size: 18.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Property Inspector',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            if (FFAppState().ExHostDetailView.status == 0)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFF80BB01),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Icon(
                                        Icons.check_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        size: 16.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Submitted',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 5.0, 0.0, 0.0),
                                                child: Container(
                                                  width: 144.0,
                                                  height: 4.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFD70000),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            'Your Application Submitted ',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0x80000000),
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            'Successfully Our SID Luxury homes ',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0x80000000),
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          Text(
                                            'team will contact you shortly',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0x80000000),
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFD70000),
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      child: Icon(
                                        Icons.clear_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        size: 16.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                'Rejected',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 24.0, 0.0, 24.0),
                                child: FutureBuilder<ApiCallResponse>(
                                  future: MicroserviceAvailabilityAPIsGroup
                                      .externalHostDashboardFullViewCall
                                      .call(
                                    articleId: FFAppState()
                                        .ExHostDetailView
                                        .articleId
                                        .toString(),
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 40.0,
                                          height: 40.0,
                                          child: SpinKitPulse(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 40.0,
                                          ),
                                        ),
                                      );
                                    }
                                    final columnExternalHostDashboardFullViewResponse =
                                        snapshot.data!;
                                    return SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          if (FFAppState()
                                                  .ExHostDetailView
                                                  .status ==
                                              0)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 24.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Flexible(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Reason for rejection:',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: Color(
                                                                0xFFD70000),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 16.0,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                columnExternalHostDashboardFullViewResponse
                                                                    .jsonBody,
                                                                r'''$.comments''',
                                                              )?.toString(),
                                                              '--',
                                                            ),
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Colors
                                                                      .black,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 24.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Expanded(
                                                  child: Material(
                                                    color: Colors.transparent,
                                                    elevation: 0.5,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.3,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.38,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        child: Image.network(
                                                          functions
                                                              .initImg(
                                                                  functions
                                                                      .listDataConversion(
                                                                          getJsonField(
                                                                        columnExternalHostDashboardFullViewResponse
                                                                            .jsonBody,
                                                                        r'''$.imageURLs''',
                                                                      )
                                                                              .toString())
                                                                      ?.toList(),
                                                                  FFAppState()
                                                                      .BaseUrl)!
                                                              .first,
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.3,
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.38,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(26.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          getJsonField(
                                                            columnExternalHostDashboardFullViewResponse
                                                                .jsonBody,
                                                            r'''$.title''',
                                                          ).toString(),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: Color(
                                                                0xFF000D3E),
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 22.0,
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      15.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Text(
                                                            'Property type:',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: Color(
                                                                  0xFF000D3E),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          getJsonField(
                                                            columnExternalHostDashboardFullViewResponse
                                                                .jsonBody,
                                                            r'''$.propertyType''',
                                                          ).toString(),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      15.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Text(
                                                            'Property address:',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: Color(
                                                                  0xFF000D3E),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/map_location_dot.svg',
                                                                width: 18.0,
                                                                height: 16.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Text(
                                                                '${getJsonField(
                                                                  columnExternalHostDashboardFullViewResponse
                                                                      .jsonBody,
                                                                  r'''$.plotNo''',
                                                                ).toString()},${getJsonField(
                                                                  columnExternalHostDashboardFullViewResponse
                                                                      .jsonBody,
                                                                  r'''$.street''',
                                                                ).toString()},${getJsonField(
                                                                  columnExternalHostDashboardFullViewResponse
                                                                      .jsonBody,
                                                                  r'''$.locality''',
                                                                ).toString()}, ${getJsonField(
                                                                  columnExternalHostDashboardFullViewResponse
                                                                      .jsonBody,
                                                                  r'''$.city''',
                                                                ).toString()}, ${getJsonField(
                                                                  columnExternalHostDashboardFullViewResponse
                                                                      .jsonBody,
                                                                  r'''$.state''',
                                                                ).toString()}, ${getJsonField(
                                                                  columnExternalHostDashboardFullViewResponse
                                                                      .jsonBody,
                                                                  r'''$.zipcode''',
                                                                ).toString()}, ${getJsonField(
                                                                  columnExternalHostDashboardFullViewResponse
                                                                      .jsonBody,
                                                                  r'''$.country''',
                                                                ).toString()}.',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 5.0)),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      14.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Wrap(
                                                            spacing: 15.0,
                                                            runSpacing: 0.0,
                                                            alignment:
                                                                WrapAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
                                                            direction:
                                                                Axis.horizontal,
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.none,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/house_chimney_blank.svg',
                                                                      width:
                                                                          18.0,
                                                                      height:
                                                                          16.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    getJsonField(
                                                                      columnExternalHostDashboardFullViewResponse
                                                                          .jsonBody,
                                                                      r'''$.propertySubType''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    width:
                                                                        5.0)),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      15.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Text(
                                                            'Property Availability',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: Color(
                                                                  0xFF000D3E),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18.0,
                                                            ),
                                                          ),
                                                        ),
                                                        RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: dateTimeFormat(
                                                                    'dd-MM-yyyy',
                                                                    functions.strToDateTimeConversion(getJsonField(
                                                                      columnExternalHostDashboardFullViewResponse
                                                                          .jsonBody,
                                                                      r'''$.availableFrom''',
                                                                    ).toString())),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: Color(
                                                                      0xFF000D3E),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: '  to  ',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: dateTimeFormat(
                                                                    'dd-MM-yyyy',
                                                                    functions.strToDateTimeConversion(getJsonField(
                                                                      columnExternalHostDashboardFullViewResponse
                                                                          .jsonBody,
                                                                      r'''$.availableTo''',
                                                                    ).toString())),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      24.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Price per month:',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              RichText(
                                                                textScaler: MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text: '₹',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: Color(
                                                                            0xFFD70000),
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            14.0,
                                                                      ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          getJsonField(
                                                                        columnExternalHostDashboardFullViewResponse
                                                                            .jsonBody,
                                                                        r'''$.expectedPrice''',
                                                                      ).toString(),
                                                                      style:
                                                                          TextStyle(
                                                                        color: Color(
                                                                            0xFFD70000),
                                                                        fontSize:
                                                                            14.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        14.0,
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
                                              ],
                                            ),
                                          ),
                                          Builder(
                                            builder: (context) {
                                              final imagesList = functions
                                                      .initImg(
                                                          functions
                                                              .listDataConversion(
                                                                  getJsonField(
                                                                columnExternalHostDashboardFullViewResponse
                                                                    .jsonBody,
                                                                r'''$.imageURLs''',
                                                              ).toString())
                                                              ?.toList(),
                                                          FFAppState().BaseUrl)
                                                      ?.toList() ??
                                                  [];
                                              return SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: List.generate(
                                                      imagesList.length,
                                                      (imagesListIndex) {
                                                    final imagesListItem =
                                                        imagesList[
                                                            imagesListIndex];
                                                    return Material(
                                                      color: Colors.transparent,
                                                      elevation: 0.5,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                          child: Image.network(
                                                            imagesListItem,
                                                            width: 100.0,
                                                            height: 100.0,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }).divide(
                                                      SizedBox(width: 15.0)),
                                                ),
                                              );
                                            },
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 24.0, 0.0, 0.0),
                                            child: Wrap(
                                              spacing: 0.0,
                                              runSpacing: 0.0,
                                              alignment: WrapAlignment.start,
                                              crossAxisAlignment:
                                                  WrapCrossAlignment.start,
                                              direction: Axis.horizontal,
                                              runAlignment: WrapAlignment.start,
                                              verticalDirection:
                                                  VerticalDirection.down,
                                              clipBehavior: Clip.none,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, -1.0),
                                                                            child:
                                                                                Text(
                                                                              'Summary',
                                                                              style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 18.0,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              16.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            getJsonField(
                                                                              columnExternalHostDashboardFullViewResponse.jsonBody,
                                                                              r'''$.description''',
                                                                            ).toString(),
                                                                            textAlign:
                                                                                TextAlign.start,
                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  lineHeight: 1.5,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            12.0,
                                                                            0.0,
                                                                            12.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              -1.0),
                                                                          child:
                                                                              Text(
                                                                            'What’s Existed',
                                                                            style: FlutterFlowTheme.of(context).titleLarge.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 18.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              24.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Builder(
                                                                            builder:
                                                                                (context) {
                                                                              final amenitiesList = functions
                                                                                      .listMapConversion(getJsonField(
                                                                                        columnExternalHostDashboardFullViewResponse.jsonBody,
                                                                                        r'''$.amenities''',
                                                                                      ).toString())
                                                                                      ?.toList() ??
                                                                                  [];
                                                                              return Wrap(
                                                                                spacing: 5.0,
                                                                                runSpacing: 5.0,
                                                                                alignment: WrapAlignment.start,
                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                direction: Axis.horizontal,
                                                                                runAlignment: WrapAlignment.start,
                                                                                verticalDirection: VerticalDirection.down,
                                                                                clipBehavior: Clip.none,
                                                                                children: List.generate(amenitiesList.length, (amenitiesListIndex) {
                                                                                  final amenitiesListItem = amenitiesList[amenitiesListIndex];
                                                                                  return Padding(
                                                                                    padding: EdgeInsets.all(5.0),
                                                                                    child: Row(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      children: [
                                                                                        Container(
                                                                                          width: 6.0,
                                                                                          height: 6.0,
                                                                                          decoration: BoxDecoration(
                                                                                            color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                            borderRadius: BorderRadius.circular(6.0),
                                                                                          ),
                                                                                        ),
                                                                                        ClipRRect(
                                                                                          borderRadius: BorderRadius.circular(0.0),
                                                                                          child: Image.network(
                                                                                            functions.getImage(
                                                                                                FFAppState().BaseUrl,
                                                                                                getJsonField(
                                                                                                  amenitiesListItem,
                                                                                                  r'''$.imageIcon''',
                                                                                                ).toString())!,
                                                                                            width: 20.0,
                                                                                            height: 15.0,
                                                                                            fit: BoxFit.contain,
                                                                                          ),
                                                                                        ),
                                                                                        Text(
                                                                                          getJsonField(
                                                                                            amenitiesListItem,
                                                                                            r'''$.name''',
                                                                                          ).toString(),
                                                                                          textAlign: TextAlign.center,
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Poppins',
                                                                                            color: Color(0xFF000D3E),
                                                                                            fontWeight: FontWeight.w500,
                                                                                            fontSize: 14.0,
                                                                                          ),
                                                                                        ),
                                                                                      ].divide(SizedBox(width: 15.0)),
                                                                                    ),
                                                                                  );
                                                                                }),
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            50.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                      child:
                                                                          Text(
                                                                        'User personal document:',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              fontSize: 18.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          '(${getJsonField(
                                                                            functions.getDocName(
                                                                                functions
                                                                                    .listMapConversionEx(getJsonField(
                                                                                      columnExternalHostDashboardFullViewResponse.jsonBody,
                                                                                      r'''$.fileURLs''',
                                                                                    ))
                                                                                    ?.toList(),
                                                                                'govId'),
                                                                            r'''$.DocName''',
                                                                          ).toString()})',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                Colors.black,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                        ),
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
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    setState(
                                                                        () {
                                                                      _model.fileURL =
                                                                          getJsonField(
                                                                        functions.getDocName(
                                                                            functions
                                                                                .listMapConversionEx(getJsonField(
                                                                                  columnExternalHostDashboardFullViewResponse.jsonBody,
                                                                                  r'''$.fileURLs''',
                                                                                ))
                                                                                ?.toList(),
                                                                            'govId'),
                                                                        r'''$.fileURL''',
                                                                      ).toString();
                                                                    });
                                                                    await launchURL(
                                                                        '${FFAppState().BaseUrl}${_model.fileURL}');
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.6,
                                                                    height:
                                                                        50.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        colors: [
                                                                          Color(
                                                                              0xFFA51FF6),
                                                                          Color(
                                                                              0xFFA51FF6),
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary
                                                                        ],
                                                                        stops: [
                                                                          0.0,
                                                                          0.0,
                                                                          0.6,
                                                                          0.6
                                                                        ],
                                                                        begin: AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                        end: AlignmentDirectional(
                                                                            -1.0,
                                                                            0),
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF60A5FA),
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.attach_file,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                getJsonField(
                                                                                  functions.getDocName(
                                                                                      functions
                                                                                          .listMapConversionEx(getJsonField(
                                                                                            columnExternalHostDashboardFullViewResponse.jsonBody,
                                                                                            r'''$.fileURLs''',
                                                                                          ))
                                                                                          ?.toList(),
                                                                                      'govId'),
                                                                                  r'''$.fileName''',
                                                                                ).toString(),
                                                                                style: GoogleFonts.getFont(
                                                                                  'Poppins',
                                                                                  color: Color(0xFFC3C3C3),
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'View & Download',
                                                                              style: GoogleFonts.getFont(
                                                                                'Poppins',
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                      child:
                                                                          Text(
                                                                        'Property document:',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleLarge
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          '(${getJsonField(
                                                                            functions.getDocName(
                                                                                functions
                                                                                    .listMapConversionEx(getJsonField(
                                                                                      columnExternalHostDashboardFullViewResponse.jsonBody,
                                                                                      r'''$.fileURLs''',
                                                                                    ))
                                                                                    ?.toList(),
                                                                                'propDoc'),
                                                                            r'''$.DocName''',
                                                                          ).toString()})',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                Colors.black,
                                                                            fontWeight:
                                                                                FontWeight.normal,
                                                                            fontSize:
                                                                                14.0,
                                                                          ),
                                                                        ),
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
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    setState(
                                                                        () {
                                                                      _model.fileURL =
                                                                          getJsonField(
                                                                        functions.getDocName(
                                                                            functions
                                                                                .listMapConversionEx(getJsonField(
                                                                                  columnExternalHostDashboardFullViewResponse.jsonBody,
                                                                                  r'''$.fileURLs''',
                                                                                ))
                                                                                ?.toList(),
                                                                            'propDoc'),
                                                                        r'''$.fileURL''',
                                                                      ).toString();
                                                                    });
                                                                    await launchURL(
                                                                        '${FFAppState().BaseUrl}${_model.fileURL}');
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.6,
                                                                    height:
                                                                        50.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      gradient:
                                                                          LinearGradient(
                                                                        colors: [
                                                                          Color(
                                                                              0xFFA51FF6),
                                                                          Color(
                                                                              0xFFA51FF6),
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary,
                                                                          FlutterFlowTheme.of(context)
                                                                              .primary
                                                                        ],
                                                                        stops: [
                                                                          0.0,
                                                                          0.0,
                                                                          0.6,
                                                                          0.6
                                                                        ],
                                                                        begin: AlignmentDirectional(
                                                                            1.0,
                                                                            0.0),
                                                                        end: AlignmentDirectional(
                                                                            -1.0,
                                                                            0),
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFF60A5FA),
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Icon(
                                                                            Icons.attach_file,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBackground,
                                                                            size:
                                                                                20.0,
                                                                          ),
                                                                          Expanded(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                getJsonField(
                                                                                  functions.getDocName(
                                                                                      functions
                                                                                          .listMapConversionEx(getJsonField(
                                                                                            columnExternalHostDashboardFullViewResponse.jsonBody,
                                                                                            r'''$.fileURLs''',
                                                                                          ))
                                                                                          ?.toList(),
                                                                                      'propDoc'),
                                                                                  r'''$.fileName''',
                                                                                ).toString(),
                                                                                style: GoogleFonts.getFont(
                                                                                  'Poppins',
                                                                                  color: Color(0xFFC3C3C3),
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'View & Download',
                                                                              style: GoogleFonts.getFont(
                                                                                'Poppins',
                                                                                color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14.0,
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
                                                      ),
                                                    ),
                                                    wrapWithModel(
                                                      model: _model
                                                          .exHostdetailsModel,
                                                      updateCallback: () =>
                                                          setState(() {}),
                                                      child:
                                                          ExHostdetailsWidget(
                                                        userName: getJsonField(
                                                          columnExternalHostDashboardFullViewResponse
                                                              .jsonBody,
                                                          r'''$.createdByUserName''',
                                                        ).toString(),
                                                        phoneNumber:
                                                            getJsonField(
                                                          columnExternalHostDashboardFullViewResponse
                                                              .jsonBody,
                                                          r'''$.ownerPhoneNumber''',
                                                        ).toString(),
                                                        emailAddress:
                                                            getJsonField(
                                                          columnExternalHostDashboardFullViewResponse
                                                              .jsonBody,
                                                          r'''$.ownerEmailAddress''',
                                                        ).toString(),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
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
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                wrapWithModel(
                  model: _model.webBottomCopyWriteModel,
                  updateCallback: () => setState(() {}),
                  child: WebBottomCopyWriteWidget(),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
