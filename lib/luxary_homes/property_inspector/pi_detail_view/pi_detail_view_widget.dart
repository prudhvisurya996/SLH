import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/external_host_journey/ex_host_details/ex_host_details_widget.dart';
import '/luxary_homes/property_inspector/m_pi_accept_confirm/m_pi_accept_confirm_widget.dart';
import '/luxary_homes/property_inspector/pi_property_success/pi_property_success_widget.dart';
import '/luxary_homes/property_inspector/pi_reject/pi_reject_widget.dart';
import '/luxary_homes/users/m_image_pop_up/m_image_pop_up_widget.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pi_detail_view_model.dart';
export 'pi_detail_view_model.dart';

class PiDetailViewWidget extends StatefulWidget {
  const PiDetailViewWidget({super.key});

  @override
  State<PiDetailViewWidget> createState() => _PiDetailViewWidgetState();
}

class _PiDetailViewWidgetState extends State<PiDetailViewWidget>
    with TickerProviderStateMixin {
  late PiDetailViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PiDetailViewModel());

    _model.cRTextFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'textOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 2000.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
                    children: [
                      wrapWithModel(
                        model: _model.commonTopBarModel,
                        updateCallback: () => setState(() {}),
                        child: CommonTopBarWidget(
                          showSearchFilter: false,
                        ),
                      ),
                      Flexible(
                        child: FutureBuilder<ApiCallResponse>(
                          future: MicroserviceExternalHostGroup
                              .pIATDashboardPropertyDetailViewCall
                              .call(
                            reviewId: FFAppState().PIdetailView.reviewId,
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
                            final columnPIATDashboardPropertyDetailViewResponse =
                                snapshot.data!;
                            return Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 12.0, 15.0, 12.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30.0, 0.0, 0.0, 0.0),
                                        child: FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          fillColor: Color(0x4DBBD1EA),
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
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          () {
                                            if ((FFAppState().PIdetailView.propertyStatus == 0) ||
                                                (FFAppState()
                                                        .PIdetailView
                                                        .propertyStatus ==
                                                    1) ||
                                                (FFAppState()
                                                        .PIdetailView
                                                        .propertyStatus ==
                                                    2)) {
                                              return 'View Property';
                                            } else if (FFAppState()
                                                    .PIdetailView
                                                    .propertyStatus ==
                                                4) {
                                              return 'Property Rejection';
                                            } else {
                                              return 'NA';
                                            }
                                          }(),
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: Color(0xFF000D3E),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        52.0, 8.0, 45.0, 24.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          if (FFAppState()
                                                  .PIdetailView
                                                  .propertyStatus ==
                                              4)
                                            Text(
                                              'Reason for Rejection',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20.0,
                                              ),
                                            ),
                                          if (FFAppState()
                                                  .PIdetailView
                                                  .propertyStatus ==
                                              4)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(12.0),
                                                    bottomRight:
                                                        Radius.circular(12.0),
                                                    topLeft:
                                                        Radius.circular(12.0),
                                                    topRight:
                                                        Radius.circular(12.0),
                                                  ),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .errorText,
                                                  ),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(24.0, 16.0,
                                                          24.0, 16.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.reviewComments''',
                                                      )?.toString(),
                                                      '--',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 24.0, 0.0, 24.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
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
                                                                        columnPIATDashboardPropertyDetailViewResponse
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
                                                                  0.48,
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
                                                            columnPIATDashboardPropertyDetailViewResponse
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
                                                                      10.0,
                                                                      0.0,
                                                                      5.0),
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
                                                            columnPIATDashboardPropertyDetailViewResponse
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
                                                                      10.0,
                                                                      0.0,
                                                                      5.0),
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
                                                                  columnPIATDashboardPropertyDetailViewResponse
                                                                      .jsonBody,
                                                                  r'''$.plotNo''',
                                                                ).toString()},${getJsonField(
                                                                  columnPIATDashboardPropertyDetailViewResponse
                                                                      .jsonBody,
                                                                  r'''$.street''',
                                                                ).toString()},${getJsonField(
                                                                  columnPIATDashboardPropertyDetailViewResponse
                                                                      .jsonBody,
                                                                  r'''$.locality''',
                                                                ).toString()}, ${getJsonField(
                                                                  columnPIATDashboardPropertyDetailViewResponse
                                                                      .jsonBody,
                                                                  r'''$.city''',
                                                                ).toString()}, ${getJsonField(
                                                                  columnPIATDashboardPropertyDetailViewResponse
                                                                      .jsonBody,
                                                                  r'''$.state''',
                                                                ).toString()}, ${getJsonField(
                                                                  columnPIATDashboardPropertyDetailViewResponse
                                                                      .jsonBody,
                                                                  r'''$.zipcode''',
                                                                ).toString()}, ${getJsonField(
                                                                  columnPIATDashboardPropertyDetailViewResponse
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
                                                                      8.0,
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
                                                                      columnPIATDashboardPropertyDetailViewResponse
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
                                                                      10.0,
                                                                      0.0,
                                                                      5.0),
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
                                                                      columnPIATDashboardPropertyDetailViewResponse
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
                                                                      columnPIATDashboardPropertyDetailViewResponse
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
                                                                      12.0,
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
                                                                        columnPIATDashboardPropertyDetailViewResponse
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
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      5.0,
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
                                                                  'Assigned On:',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        18.0,
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
                                                                      text: dateTimeFormat(
                                                                          'dd-MM-yyyy',
                                                                          functions.strToDateTimeConversion(getJsonField(
                                                                            columnPIATDashboardPropertyDetailViewResponse.jsonBody,
                                                                            r'''$.taskAssignedDate''',
                                                                          ).toString())),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontWeight:
                                                                            FontWeight.w500,
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
                                                                        16.0,
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
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
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
                                                                  'Priority:',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        18.0,
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
                                                                      text: () {
                                                                        if (MicroserviceExternalHostGroup.pIATDashboardPropertyDetailViewCall.priority(
                                                                              columnPIATDashboardPropertyDetailViewResponse.jsonBody,
                                                                            ) ==
                                                                            0) {
                                                                          return 'Low';
                                                                        } else if (MicroserviceExternalHostGroup.pIATDashboardPropertyDetailViewCall.priority(
                                                                              columnPIATDashboardPropertyDetailViewResponse.jsonBody,
                                                                            ) ==
                                                                            1) {
                                                                          return 'Medium';
                                                                        } else if (MicroserviceExternalHostGroup.pIATDashboardPropertyDetailViewCall.priority(
                                                                              columnPIATDashboardPropertyDetailViewResponse.jsonBody,
                                                                            ) ==
                                                                            2) {
                                                                          return 'High';
                                                                        } else {
                                                                          return 'N/A';
                                                                        }
                                                                      }(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color:
                                                                            () {
                                                                          if (MicroserviceExternalHostGroup.pIATDashboardPropertyDetailViewCall.priority(
                                                                                columnPIATDashboardPropertyDetailViewResponse.jsonBody,
                                                                              ) ==
                                                                              0) {
                                                                            return Color(0xFFFFC700);
                                                                          } else if (MicroserviceExternalHostGroup.pIATDashboardPropertyDetailViewCall.priority(
                                                                                columnPIATDashboardPropertyDetailViewResponse.jsonBody,
                                                                              ) ==
                                                                              1) {
                                                                            return Color(0xFFFFA500);
                                                                          } else if (MicroserviceExternalHostGroup.pIATDashboardPropertyDetailViewCall.priority(
                                                                                columnPIATDashboardPropertyDetailViewResponse.jsonBody,
                                                                              ) ==
                                                                              2) {
                                                                            return Color(0xFFFF0000);
                                                                          } else {
                                                                            return FlutterFlowTheme.of(context).primaryText;
                                                                          }
                                                                        }(),
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: () {
                                                                      if (MicroserviceExternalHostGroup
                                                                              .pIATDashboardPropertyDetailViewCall
                                                                              .priority(
                                                                            columnPIATDashboardPropertyDetailViewResponse.jsonBody,
                                                                          ) ==
                                                                          0) {
                                                                        return Color(
                                                                            0xFFFFC700);
                                                                      } else if (MicroserviceExternalHostGroup
                                                                              .pIATDashboardPropertyDetailViewCall
                                                                              .priority(
                                                                            columnPIATDashboardPropertyDetailViewResponse.jsonBody,
                                                                          ) ==
                                                                          1) {
                                                                        return Color(
                                                                            0xFFFFA500);
                                                                      } else if (MicroserviceExternalHostGroup
                                                                              .pIATDashboardPropertyDetailViewCall
                                                                              .priority(
                                                                            columnPIATDashboardPropertyDetailViewResponse.jsonBody,
                                                                          ) ==
                                                                          2) {
                                                                        return Color(
                                                                            0xFFFF0000);
                                                                      } else {
                                                                        return FlutterFlowTheme.of(context)
                                                                            .primaryText;
                                                                      }
                                                                    }(),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
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
                                                                columnPIATDashboardPropertyDetailViewResponse
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
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 30.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Flexible(
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.6,
                                                          decoration:
                                                              BoxDecoration(),
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
                                                                              columnPIATDashboardPropertyDetailViewResponse.jsonBody,
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
                                                                                        columnPIATDashboardPropertyDetailViewResponse.jsonBody,
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
                                                                                      columnPIATDashboardPropertyDetailViewResponse.jsonBody,
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
                                                                    _model.fileURL =
                                                                        getJsonField(
                                                                      functions.getDocName(
                                                                          functions
                                                                              .listMapConversionEx(getJsonField(
                                                                                columnPIATDashboardPropertyDetailViewResponse.jsonBody,
                                                                                r'''$.fileURLs''',
                                                                              ))
                                                                              ?.toList(),
                                                                          'govId'),
                                                                      r'''$.fileURL''',
                                                                    ).toString();
                                                                    setState(
                                                                        () {});
                                                                    await launchURL(
                                                                        '${FFAppState().BaseUrl}${_model.fileURL}');
                                                                  },
                                                                  child:
                                                                      Container(
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
                                                                                            columnPIATDashboardPropertyDetailViewResponse.jsonBody,
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
                                                                                      columnPIATDashboardPropertyDetailViewResponse.jsonBody,
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
                                                                    _model.fileURL =
                                                                        getJsonField(
                                                                      functions.getDocName(
                                                                          functions
                                                                              .listMapConversionEx(getJsonField(
                                                                                columnPIATDashboardPropertyDetailViewResponse.jsonBody,
                                                                                r'''$.fileURLs''',
                                                                              ))
                                                                              ?.toList(),
                                                                          'propDoc'),
                                                                      r'''$.fileURL''',
                                                                    ).toString();
                                                                    setState(
                                                                        () {});
                                                                    await launchURL(
                                                                        '${FFAppState().BaseUrl}${_model.fileURL}');
                                                                  },
                                                                  child:
                                                                      Container(
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
                                                                                            columnPIATDashboardPropertyDetailViewResponse.jsonBody,
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
                                                      wrapWithModel(
                                                        model: _model
                                                            .exHostDetailsModel,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            ExHostDetailsWidget(
                                                          userName:
                                                              getJsonField(
                                                            columnPIATDashboardPropertyDetailViewResponse
                                                                .jsonBody,
                                                            r'''$.createdByUserName''',
                                                          ).toString(),
                                                          phoneNumber:
                                                              valueOrDefault<
                                                                  String>(
                                                            getJsonField(
                                                              columnPIATDashboardPropertyDetailViewResponse
                                                                  .jsonBody,
                                                              r'''$.ownerPhoneNumber''',
                                                            )?.toString(),
                                                            '--',
                                                          ),
                                                          emailAddress:
                                                              getJsonField(
                                                            columnPIATDashboardPropertyDetailViewResponse
                                                                .jsonBody,
                                                            r'''$.ownerEmailAddress''',
                                                          ).toString(),
                                                        ),
                                                      ),
                                                    ],
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
                                Align(
                                  alignment: AlignmentDirectional(0.0, 1.0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        if (FFAppState()
                                                .PIdetailView
                                                .propertyStatus ==
                                            0)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    30.0, 16.0, 30.0, 16.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Builder(
                                                  builder: (context) => Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                12.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        var _shouldSetState =
                                                            false;
                                                        _model.refreshRespForPI =
                                                            await RefreshTokenAPICall
                                                                .call(
                                                          clientId:
                                                              FFAppConstants
                                                                  .clientId,
                                                          clientSecret:
                                                              FFAppConstants
                                                                  .clientSecret,
                                                          grantType: FFAppConstants
                                                              .refreshGrantType,
                                                          refreshToken:
                                                              FFAppState()
                                                                  .refreshToken,
                                                        );

                                                        _shouldSetState = true;
                                                        if ((_model
                                                                .refreshRespForPI
                                                                ?.succeeded ??
                                                            true)) {
                                                          FFAppState()
                                                                  .accessToken =
                                                              getJsonField(
                                                            (_model.refreshRespForPI
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.access_token''',
                                                          ).toString();
                                                          FFAppState()
                                                                  .refreshToken =
                                                              getJsonField(
                                                            (_model.refreshRespForPI
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.refresh_token''',
                                                          ).toString();
                                                          setState(() {});
                                                          _model.piStatusUpdateResp =
                                                              await LiferayBaseUrlGroup
                                                                  .pIStatusUpdateCall
                                                                  .call(
                                                            accessToken:
                                                                FFAppState()
                                                                    .accessToken,
                                                            reviewId:
                                                                getJsonField(
                                                              columnPIATDashboardPropertyDetailViewResponse
                                                                  .jsonBody,
                                                              r'''$.reviewId''',
                                                            ),
                                                            status: 1,
                                                            comments:
                                                                getJsonField(
                                                              columnPIATDashboardPropertyDetailViewResponse
                                                                  .jsonBody,
                                                              r'''$.reviewComments''',
                                                            ).toString(),
                                                          );

                                                          _shouldSetState =
                                                              true;
                                                          if ((_model
                                                                  .piStatusUpdateResp
                                                                  ?.succeeded ??
                                                              true)) {
                                                            await showDialog(
                                                              barrierDismissible:
                                                                  false,
                                                              context: context,
                                                              builder:
                                                                  (dialogContext) {
                                                                return Dialog(
                                                                  elevation: 0,
                                                                  insetPadding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  backgroundColor:
                                                                      Colors
                                                                          .transparent,
                                                                  alignment: AlignmentDirectional(
                                                                          0.0,
                                                                          0.0)
                                                                      .resolve(
                                                                          Directionality.of(
                                                                              context)),
                                                                  child:
                                                                      GestureDetector(
                                                                    onTap: () => _model
                                                                            .unfocusNode
                                                                            .canRequestFocus
                                                                        ? FocusScope.of(context).requestFocus(_model
                                                                            .unfocusNode)
                                                                        : FocusScope.of(context)
                                                                            .unfocus(),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.3,
                                                                      child:
                                                                          PiPropertySuccessWidget(
                                                                        message:
                                                                            'Property Accepted successfully!',
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                setState(
                                                                    () {}));

                                                            if (_shouldSetState)
                                                              setState(() {});
                                                            return;
                                                          } else {
                                                            await showDialog(
                                                              context: context,
                                                              builder:
                                                                  (alertDialogContext) {
                                                                return AlertDialog(
                                                                  title: Text(
                                                                      'Information'),
                                                                  content: Text(
                                                                      'Something went wrong'),
                                                                  actions: [
                                                                    TextButton(
                                                                      onPressed:
                                                                          () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                      child: Text(
                                                                          'Ok'),
                                                                    ),
                                                                  ],
                                                                );
                                                              },
                                                            );
                                                            if (_shouldSetState)
                                                              setState(() {});
                                                            return;
                                                          }
                                                        } else {
                                                          FFAppState()
                                                              .accessToken = '';
                                                          FFAppState()
                                                              .refreshToken = '';
                                                          FFAppState()
                                                              .update(() {});
                                                          await showDialog(
                                                            barrierColor: Color(
                                                                0xCC000D3E),
                                                            barrierDismissible:
                                                                false,
                                                            context: context,
                                                            builder:
                                                                (dialogContext) {
                                                              return Dialog(
                                                                elevation: 0,
                                                                insetPadding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                alignment: AlignmentDirectional(
                                                                        0.0,
                                                                        0.0)
                                                                    .resolve(
                                                                        Directionality.of(
                                                                            context)),
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () => _model
                                                                          .unfocusNode
                                                                          .canRequestFocus
                                                                      ? FocusScope.of(
                                                                              context)
                                                                          .requestFocus(_model
                                                                              .unfocusNode)
                                                                      : FocusScope.of(
                                                                              context)
                                                                          .unfocus(),
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        MediaQuery.sizeOf(context).height *
                                                                            0.9,
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.3,
                                                                    child:
                                                                        PhoneNumLoginWidget(),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              setState(() {}));

                                                          if (_shouldSetState)
                                                            setState(() {});
                                                          return;
                                                        }

                                                        if (_shouldSetState)
                                                          setState(() {});
                                                      },
                                                      text: 'Accept',
                                                      options: FFButtonOptions(
                                                        width: 320.0,
                                                        height: 36.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    24.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        textStyle:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Builder(
                                                  builder: (context) => Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                0.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        await showDialog(
                                                          barrierDismissible:
                                                              false,
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: AlignmentDirectional(
                                                                      0.0, -1.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () => _model
                                                                        .unfocusNode
                                                                        .canRequestFocus
                                                                    ? FocusScope.of(
                                                                            context)
                                                                        .requestFocus(_model
                                                                            .unfocusNode)
                                                                    : FocusScope.of(
                                                                            context)
                                                                        .unfocus(),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.3,
                                                                  child:
                                                                      PiRejectWidget(
                                                                    reviewId:
                                                                        getJsonField(
                                                                      columnPIATDashboardPropertyDetailViewResponse
                                                                          .jsonBody,
                                                                      r'''$.reviewId''',
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() {}));
                                                      },
                                                      text: 'Reject',
                                                      options: FFButtonOptions(
                                                        width: 320.0,
                                                        height: 36.0,
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    24.0,
                                                                    0.0),
                                                        iconPadding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            Color(0xFFD70000),
                                                        textStyle:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: Colors.white,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16.0,
                                                        ),
                                                        elevation: 4.0,
                                                        borderSide: BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        if (FFAppState()
                                                .PIdetailView
                                                .propertyStatus ==
                                            1)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 16.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Builder(
                                                  builder: (context) =>
                                                      FFButtonWidget(
                                                    onPressed: () async {
                                                      var _shouldSetState =
                                                          false;
                                                      _model.refreshRespForPIStarted =
                                                          await RefreshTokenAPICall
                                                              .call(
                                                        clientId: FFAppConstants
                                                            .clientId,
                                                        clientSecret:
                                                            FFAppConstants
                                                                .clientSecret,
                                                        grantType: FFAppConstants
                                                            .refreshGrantType,
                                                        refreshToken:
                                                            FFAppState()
                                                                .refreshToken,
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model
                                                              .refreshRespForPIStarted
                                                              ?.succeeded ??
                                                          true)) {
                                                        FFAppState()
                                                                .accessToken =
                                                            getJsonField(
                                                          (_model.refreshRespForPIStarted
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.access_token''',
                                                        ).toString();
                                                        FFAppState()
                                                                .refreshToken =
                                                            getJsonField(
                                                          (_model.refreshRespForPIStarted
                                                                  ?.jsonBody ??
                                                              ''),
                                                          r'''$.refresh_token''',
                                                        ).toString();
                                                        setState(() {});
                                                        _model.piStatusUpdateRespStarted =
                                                            await LiferayBaseUrlGroup
                                                                .pIStatusUpdateCall
                                                                .call(
                                                          accessToken:
                                                              FFAppState()
                                                                  .accessToken,
                                                          reviewId:
                                                              getJsonField(
                                                            columnPIATDashboardPropertyDetailViewResponse
                                                                .jsonBody,
                                                            r'''$.reviewId''',
                                                          ),
                                                          status: 2,
                                                          comments:
                                                              getJsonField(
                                                            columnPIATDashboardPropertyDetailViewResponse
                                                                .jsonBody,
                                                            r'''$.reviewComments''',
                                                          ).toString(),
                                                        );

                                                        _shouldSetState = true;
                                                        if ((_model
                                                                .piStatusUpdateRespStarted
                                                                ?.succeeded ??
                                                            true)) {
                                                          await showDialog(
                                                            barrierDismissible:
                                                                false,
                                                            context: context,
                                                            builder:
                                                                (dialogContext) {
                                                              return Dialog(
                                                                elevation: 0,
                                                                insetPadding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                alignment: AlignmentDirectional(
                                                                        0.0,
                                                                        0.0)
                                                                    .resolve(
                                                                        Directionality.of(
                                                                            context)),
                                                                child:
                                                                    GestureDetector(
                                                                  onTap: () => _model
                                                                          .unfocusNode
                                                                          .canRequestFocus
                                                                      ? FocusScope.of(
                                                                              context)
                                                                          .requestFocus(_model
                                                                              .unfocusNode)
                                                                      : FocusScope.of(
                                                                              context)
                                                                          .unfocus(),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.3,
                                                                    child:
                                                                        PiPropertySuccessWidget(
                                                                      message:
                                                                          'Property Inspection Started successfully!',
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              setState(() {}));

                                                          if (_shouldSetState)
                                                            setState(() {});
                                                          return;
                                                        } else {
                                                          await showDialog(
                                                            context: context,
                                                            builder:
                                                                (alertDialogContext) {
                                                              return AlertDialog(
                                                                title: Text(
                                                                    'Information'),
                                                                content: Text(
                                                                    'Something went wrong'),
                                                                actions: [
                                                                  TextButton(
                                                                    onPressed: () =>
                                                                        Navigator.pop(
                                                                            alertDialogContext),
                                                                    child: Text(
                                                                        'Ok'),
                                                                  ),
                                                                ],
                                                              );
                                                            },
                                                          );
                                                          if (_shouldSetState)
                                                            setState(() {});
                                                          return;
                                                        }
                                                      } else {
                                                        FFAppState()
                                                            .accessToken = '';
                                                        FFAppState()
                                                            .refreshToken = '';
                                                        FFAppState()
                                                            .update(() {});
                                                        await showDialog(
                                                          barrierColor:
                                                              Color(0xCC000D3E),
                                                          barrierDismissible:
                                                              false,
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () => _model
                                                                        .unfocusNode
                                                                        .canRequestFocus
                                                                    ? FocusScope.of(
                                                                            context)
                                                                        .requestFocus(_model
                                                                            .unfocusNode)
                                                                    : FocusScope.of(
                                                                            context)
                                                                        .unfocus(),
                                                                child:
                                                                    Container(
                                                                  height: MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
                                                                      0.9,
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.3,
                                                                  child:
                                                                      PhoneNumLoginWidget(),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() {}));

                                                        if (_shouldSetState)
                                                          setState(() {});
                                                        return;
                                                      }

                                                      if (_shouldSetState)
                                                        setState(() {});
                                                    },
                                                    text: 'Start Inspection',
                                                    options: FFButtonOptions(
                                                      width: 320.0,
                                                      height: 36.0,
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  0.0,
                                                                  24.0,
                                                                  0.0),
                                                      iconPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      textStyle:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 12.0, 0.0, 0.0),
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
                                                      context.pop();
                                                    },
                                                    child: Text(
                                                      'Cancel',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Work Sans',
                                                        color:
                                                            Color(0xFF5246ED),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16.0,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        if (FFAppState()
                                                .PIdetailView
                                                .propertyStatus ==
                                            2)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 24.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                context.pushNamed(
                                                  'pi_form',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                      duration: Duration(
                                                          milliseconds: 0),
                                                    ),
                                                  },
                                                );
                                              },
                                              text: 'Feedback Form',
                                              options: FFButtonOptions(
                                                width: 320.0,
                                                height: 36.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
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
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                desktop: false,
              ))
                Flexible(
                  child: FutureBuilder<ApiCallResponse>(
                    future: MicroserviceExternalHostGroup
                        .pIATDashboardPropertyDetailViewCall
                        .call(
                      reviewId: FFAppState().PIdetailView.reviewId,
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
                      final columnPIATDashboardPropertyDetailViewResponse =
                          snapshot.data!;
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 10.0, 12.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  buttonSize: 36.0,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  icon: Icon(
                                    Icons.chevron_left,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 20.0,
                                  ),
                                  onPressed: () async {
                                    context.safePop();
                                  },
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'View Property  ',
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 12.0),
                              child: SingleChildScrollView(
                                primary: false,
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (FFAppState()
                                            .PIdetailView
                                            .propertyStatus ==
                                        4)
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                'Reason for Rejection',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    if (FFAppState()
                                            .PIdetailView
                                            .propertyStatus ==
                                        4)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 16.0),
                                        child: TextFormField(
                                          controller: _model
                                                  .cRTextFieldTextController ??=
                                              TextEditingController(
                                            text: getJsonField(
                                              columnPIATDashboardPropertyDetailViewResponse
                                                  .jsonBody,
                                              r'''$.reviewComments''',
                                            ).toString(),
                                          ),
                                          focusNode:
                                              _model.cRTextFieldFocusNode,
                                          autofocus: false,
                                          readOnly: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: false,
                                            errorStyle:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmall
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .errorText,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .errorText,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .errorText,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    14.0, 10.0, 14.0, 10.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Work Sans',
                                                letterSpacing: 0.0,
                                              ),
                                          textAlign: TextAlign.start,
                                          maxLines: null,
                                          maxLength: 250,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.enforced,
                                          buildCounter: (context,
                                                  {required currentLength,
                                                  required isFocused,
                                                  maxLength}) =>
                                              null,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          validator: _model
                                              .cRTextFieldTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    Stack(
                                      alignment: AlignmentDirectional(1.0, 0.0),
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
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
                                                                0.0, 5.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.network(
                                                        functions
                                                            .initImg(
                                                                functions
                                                                    .listDataConversion(
                                                                        getJsonField(
                                                                      columnPIATDashboardPropertyDetailViewResponse
                                                                          .jsonBody,
                                                                      r'''$.imageURLs''',
                                                                    ).toString())
                                                                    ?.toList(),
                                                                FFAppState().BaseUrl)!
                                                            .first,
                                                        width: 258.0,
                                                        height: 120.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Builder(
                                                      builder: (context) {
                                                        final imagesListPI = functions
                                                                .initImg(
                                                                    functions
                                                                        .listDataConversion(getJsonField(
                                                                          columnPIATDashboardPropertyDetailViewResponse
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
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: List.generate(
                                                                imagesListPI
                                                                    .length,
                                                                (imagesListPIIndex) {
                                                              final imagesListPIItem =
                                                                  imagesListPI[
                                                                      imagesListPIIndex];
                                                              return Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .network(
                                                                    imagesListPIItem,
                                                                    width: 73.0,
                                                                    height:
                                                                        120.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              );
                                                            }),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Opacity(
                                                    opacity: 0.4,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.network(
                                                        functions
                                                            .initImg(
                                                                functions
                                                                    .listDataConversion(
                                                                        getJsonField(
                                                                      columnPIATDashboardPropertyDetailViewResponse
                                                                          .jsonBody,
                                                                      r'''$.imageURLs''',
                                                                    ).toString())
                                                                    ?.toList(),
                                                                FFAppState().BaseUrl)!
                                                            .last,
                                                        width: 110.0,
                                                        height: 250.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.94, -0.05),
                                          child: Builder(
                                            builder: (context) => InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                await showDialog(
                                                  context: context,
                                                  builder: (dialogContext) {
                                                    return Dialog(
                                                      elevation: 0,
                                                      insetPadding:
                                                          EdgeInsets.zero,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      alignment:
                                                          AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                      child: GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Container(
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.5,
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.25,
                                                          child:
                                                              MImagePopUpWidget(
                                                            imageUrls: functions.initImg(
                                                                functions
                                                                    .listDataConversion(getJsonField(
                                                                      columnPIATDashboardPropertyDetailViewResponse
                                                                          .jsonBody,
                                                                      r'''$.imageURLs''',
                                                                    ).toString())
                                                                    ?.toList(),
                                                                FFAppState().BaseUrl),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              },
                                              child: Text(
                                                'View Photos',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: Color(0xFF686868),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14.0,
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'textOnPageLoadAnimation']!),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        getJsonField(
                                          columnPIATDashboardPropertyDetailViewResponse
                                              .jsonBody,
                                          r'''$.title''',
                                        ).toString(),
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'property Type:',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: Text(
                                              getJsonField(
                                                columnPIATDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.propertyType''',
                                              ).toString(),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Property Address :',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
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
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: SvgPicture.asset(
                                                    'assets/images/map_location_dot.svg',
                                                    width: 25.0,
                                                    height: 20.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Text(
                                                      '${getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.plotNo''',
                                                      ).toString()} ,${getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.street''',
                                                      ).toString()},${getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.locality''',
                                                      ).toString()},${getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.city''',
                                                      ).toString()},${getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.state''',
                                                      ).toString()},${getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.country''',
                                                      ).toString()},${getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.zipcode''',
                                                      ).toString()}.',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Work Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 16.0, 0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: SvgPicture.asset(
                                                    'assets/images/house_chimney_blank.svg',
                                                    width: 25.0,
                                                    height: 20.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    getJsonField(
                                                      columnPIATDashboardPropertyDetailViewResponse
                                                          .jsonBody,
                                                      r'''$.propertySubType''',
                                                    ).toString(),
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: 14.0,
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Property Availability',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ],
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
                                              text: dateTimeFormat(
                                                  'dd-MM-yyyy',
                                                  functions
                                                      .convertStringToDatetime(
                                                          getJsonField(
                                                    columnPIATDashboardPropertyDetailViewResponse
                                                        .jsonBody,
                                                    r'''$.availableFrom''',
                                                  ).toString())),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: ' - ',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: dateTimeFormat(
                                                  'dd-MM-yyyy',
                                                  functions
                                                      .convertStringToDatetime(
                                                          getJsonField(
                                                    columnPIATDashboardPropertyDetailViewResponse
                                                        .jsonBody,
                                                    r'''$.availableTo''',
                                                  ).toString())),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16.0,
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
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Price per month:  ',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: '₹.',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: Color(0xFFD70000),
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: getJsonField(
                                                columnPIATDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.expectedPrice''',
                                              ).toString(),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: Color(0xFFD70000),
                                                fontSize: 14.0,
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
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Assigned On : ',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: dateTimeFormat(
                                                  'dd-MM-yyyy',
                                                  functions
                                                      .convertStringToDatetime(
                                                          getJsonField(
                                                    columnPIATDashboardPropertyDetailViewResponse
                                                        .jsonBody,
                                                    r'''$.taskAssignedDate''',
                                                  ).toString())),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 14.0,
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
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Priority :  ',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: valueOrDefault<String>(
                                                functions.getPriorityTitle(
                                                    int.parse(getJsonField(
                                                  columnPIATDashboardPropertyDetailViewResponse
                                                      .jsonBody,
                                                  r'''$.priority''',
                                                ).toString())),
                                                'NA',
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: Color(0xFFD70000),
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14.0,
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
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Description :',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Text(
                                              getJsonField(
                                                columnPIATDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.description''',
                                              ).toString(),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w300,
                                                fontSize: 14.0,
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
                                        'What’s existed',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Text(
                                        'Amenities',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 5.0, 0.0, 0.0),
                                      child: Builder(
                                        builder: (context) {
                                          final amenitiesListPI = functions
                                                  .listMapConversion(
                                                      getJsonField(
                                                    columnPIATDashboardPropertyDetailViewResponse
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
                                              childAspectRatio: 6.0,
                                            ),
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: amenitiesListPI.length,
                                            itemBuilder: (context,
                                                amenitiesListPIIndex) {
                                              final amenitiesListPIItem =
                                                  amenitiesListPI[
                                                      amenitiesListPIIndex];
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
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      width: 6.0,
                                                      height: 6.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        shape: BoxShape.circle,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        getJsonField(
                                                          amenitiesListPIItem,
                                                          r'''$.name''',
                                                        ).toString(),
                                                        style:
                                                            FlutterFlowTheme.of(
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
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 10.0),
                                      child: Text(
                                        'Host Information',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 12.0, 0.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0x66BBD1EA),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(12.0),
                                            topRight: Radius.circular(12.0),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 14.0, 0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        100.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/user-unfocus.svg',
                                                  width: 111.0,
                                                  height: 111.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 14.0, 0.0, 14.0),
                                              child: Text(
                                                getJsonField(
                                                  columnPIATDashboardPropertyDetailViewResponse
                                                      .jsonBody,
                                                  r'''$.createdByUserName''',
                                                ).toString(),
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 20.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Birthday',
                                                  style: GoogleFonts.getFont(
                                                    'Work Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Text(
                                                    '01/12/1998',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 14.0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Mobile Number',
                                                  style: GoogleFonts.getFont(
                                                    'Work Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Text(
                                                    getJsonField(
                                                      columnPIATDashboardPropertyDetailViewResponse
                                                          .jsonBody,
                                                      r'''$.ownerPhoneNumber''',
                                                    ).toString(),
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 14.0,
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Email',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 8.0, 0.0, 0.0),
                                            child: Text(
                                              getJsonField(
                                                columnPIATDashboardPropertyDetailViewResponse
                                                    .jsonBody,
                                                r'''$.ownerEmailAddress''',
                                              ).toString(),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 14.0,
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
                                        'User Personal Document :',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 12.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await launchURL(
                                              '${FFAppState().BaseUrl}${getJsonField(
                                            functions.getDocName(
                                                functions
                                                    .listMapConversion(
                                                        getJsonField(
                                                      columnPIATDashboardPropertyDetailViewResponse
                                                          .jsonBody,
                                                      r'''$.fileURLs''',
                                                    ).toString())
                                                    ?.toList(),
                                                'govId'),
                                            r'''$.fileURL''',
                                          ).toString()}');
                                        },
                                        child: Container(
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFFA51FF6),
                                                Color(0xFFA51FF6),
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                                FlutterFlowTheme.of(context)
                                                    .primary
                                              ],
                                              stops: [0.0, 0.0, 0.6, 0.6],
                                              begin: AlignmentDirectional(
                                                  1.0, 0.0),
                                              end:
                                                  AlignmentDirectional(-1.0, 0),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color: Color(0xFF60A5FA),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.attach_file,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  size: 20.0,
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      getJsonField(
                                                        functions.getDocName(
                                                            functions
                                                                .listMapConversion(
                                                                    getJsonField(
                                                                  columnPIATDashboardPropertyDetailViewResponse
                                                                      .jsonBody,
                                                                  r'''$.fileURLs''',
                                                                ).toString())
                                                                ?.toList(),
                                                            'govId'),
                                                        r'''$.fileName''',
                                                      ).toString(),
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Noto Serif',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'View',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        'Property document :',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 12.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await launchURL(
                                              '${FFAppState().BaseUrl}${getJsonField(
                                            functions.getDocName(
                                                functions
                                                    .listMapConversion(
                                                        getJsonField(
                                                      columnPIATDashboardPropertyDetailViewResponse
                                                          .jsonBody,
                                                      r'''$.fileURLs''',
                                                    ).toString())
                                                    ?.toList(),
                                                'propDoc'),
                                            r'''$.fileURL''',
                                          ).toString()}');
                                        },
                                        child: Container(
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFFA51FF6),
                                                Color(0xFFA51FF6),
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                                FlutterFlowTheme.of(context)
                                                    .primary
                                              ],
                                              stops: [0.0, 0.0, 0.6, 0.6],
                                              begin: AlignmentDirectional(
                                                  1.0, 0.0),
                                              end:
                                                  AlignmentDirectional(-1.0, 0),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                            border: Border.all(
                                              color: Color(0xFF60A5FA),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.attach_file,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  size: 20.0,
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      getJsonField(
                                                        functions.getDocName(
                                                            functions
                                                                .listMapConversion(
                                                                    getJsonField(
                                                                  columnPIATDashboardPropertyDetailViewResponse
                                                                      .jsonBody,
                                                                  r'''$.fileURLs''',
                                                                ).toString())
                                                                ?.toList(),
                                                            'propDoc'),
                                                        r'''$.fileName''',
                                                      ).toString(),
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Noto Serif',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'View',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (FFAppState().PIdetailView.propertyStatus == 0)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 16.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Builder(
                                        builder: (context) => FFButtonWidget(
                                          onPressed: () async {
                                            await showDialog(
                                              barrierDismissible: false,
                                              context: context,
                                              builder: (dialogContext) {
                                                return Dialog(
                                                  elevation: 0,
                                                  insetPadding: EdgeInsets.zero,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  alignment:
                                                      AlignmentDirectional(
                                                              0.0, 0.0)
                                                          .resolve(
                                                              Directionality.of(
                                                                  context)),
                                                  child: GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Container(
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.2,
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.5,
                                                      child:
                                                          MPiAcceptConfirmWidget(
                                                        reviewId: getJsonField(
                                                          columnPIATDashboardPropertyDetailViewResponse
                                                              .jsonBody,
                                                          r'''$.reviewId''',
                                                        ),
                                                        reviewComments:
                                                            getJsonField(
                                                          columnPIATDashboardPropertyDetailViewResponse
                                                              .jsonBody,
                                                          r'''$.reviewComments''',
                                                        ).toString(),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then((value) => setState(() {}));
                                          },
                                          text: 'Accept',
                                          options: FFButtonOptions(
                                            width: 120.0,
                                            height: 36.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () async {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            isDismissible: false,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: Container(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.28,
                                                    child: PiRejectWidget(
                                                      reviewId: getJsonField(
                                                        columnPIATDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.reviewId''',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
                                        },
                                        text: 'Reject',
                                        options: FFButtonOptions(
                                          width: 120.0,
                                          height: 36.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: Color(0xFFD70000),
                                          textStyle: GoogleFonts.getFont(
                                            'Work Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                          elevation: 3.0,
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              if (FFAppState().PIdetailView.propertyStatus == 1)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 14.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          FFAppState().PIdetailView =
                                              PIDetailViewStruct(
                                            reviewId: getJsonField(
                                              columnPIATDashboardPropertyDetailViewResponse
                                                  .jsonBody,
                                              r'''$.reviewId''',
                                            ),
                                            propertyStatus: 0,
                                          );
                                          setState(() {});

                                          context.pushNamed(
                                            'm_pi_dashboard',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                                duration:
                                                    Duration(milliseconds: 0),
                                              ),
                                            },
                                          );
                                        },
                                        child: Text(
                                          'Cancel',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      Builder(
                                        builder: (context) => FFButtonWidget(
                                          onPressed: () async {
                                            var _shouldSetState = false;
                                            _model.refreshRespForPIStartedMobile =
                                                await RefreshTokenAPICall.call(
                                              clientId: FFAppConstants.clientId,
                                              clientSecret:
                                                  FFAppConstants.clientSecret,
                                              grantType: FFAppConstants
                                                  .refreshGrantType,
                                              refreshToken:
                                                  FFAppState().refreshToken,
                                            );

                                            _shouldSetState = true;
                                            if ((_model
                                                    .refreshRespForPIStartedMobile
                                                    ?.succeeded ??
                                                true)) {
                                              FFAppState().accessToken =
                                                  getJsonField(
                                                (_model.refreshRespForPIStartedMobile
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.access_token''',
                                              ).toString();
                                              FFAppState().refreshToken =
                                                  getJsonField(
                                                (_model.refreshRespForPIStartedMobile
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.refresh_token''',
                                              ).toString();
                                              setState(() {});
                                              _model.piStatusUpdateRespStartedMobile =
                                                  await LiferayBaseUrlGroup
                                                      .pIStatusUpdateCall
                                                      .call(
                                                accessToken:
                                                    FFAppState().accessToken,
                                                reviewId: getJsonField(
                                                  columnPIATDashboardPropertyDetailViewResponse
                                                      .jsonBody,
                                                  r'''$.reviewId''',
                                                ),
                                                status: 2,
                                                comments: getJsonField(
                                                  columnPIATDashboardPropertyDetailViewResponse
                                                      .jsonBody,
                                                  r'''$.reviewComments''',
                                                ).toString(),
                                              );

                                              _shouldSetState = true;
                                              if ((_model
                                                      .piStatusUpdateRespStartedMobile
                                                      ?.succeeded ??
                                                  true)) {
                                                if (MediaQuery.sizeOf(context)
                                                        .width >
                                                    661.0) {
                                                  await showDialog(
                                                    barrierDismissible: false,
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: GestureDetector(
                                                          onTap: () => _model
                                                                  .unfocusNode
                                                                  .canRequestFocus
                                                              ? FocusScope.of(
                                                                      context)
                                                                  .requestFocus(
                                                                      _model
                                                                          .unfocusNode)
                                                              : FocusScope.of(
                                                                      context)
                                                                  .unfocus(),
                                                          child:
                                                              PiPropertySuccessWidget(
                                                            message:
                                                                'Property Inspection Started successfully!',
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));

                                                  if (_shouldSetState)
                                                    setState(() {});
                                                  return;
                                                } else {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    isDismissible: false,
                                                    enableDrag: false,
                                                    context: context,
                                                    builder: (context) {
                                                      return GestureDetector(
                                                        onTap: () => _model
                                                                .unfocusNode
                                                                .canRequestFocus
                                                            ? FocusScope.of(
                                                                    context)
                                                                .requestFocus(_model
                                                                    .unfocusNode)
                                                            : FocusScope.of(
                                                                    context)
                                                                .unfocus(),
                                                        child: Padding(
                                                          padding: MediaQuery
                                                              .viewInsetsOf(
                                                                  context),
                                                          child: Container(
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.47,
                                                            child:
                                                                PiPropertySuccessWidget(
                                                              message:
                                                                  'Property Inspection Started successfully!',
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));

                                                  if (_shouldSetState)
                                                    setState(() {});
                                                  return;
                                                }
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title:
                                                          Text('Information'),
                                                      content: Text(
                                                          'Something went wrong'),
                                                      actions: [
                                                        TextButton(
                                                          onPressed: () =>
                                                              Navigator.pop(
                                                                  alertDialogContext),
                                                          child: Text('Ok'),
                                                        ),
                                                      ],
                                                    );
                                                  },
                                                );
                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              }
                                            } else {
                                              FFAppState().accessToken = '';
                                              FFAppState().refreshToken = '';
                                              FFAppState().update(() {});
                                              await showDialog(
                                                barrierColor: Color(0xCC000D3E),
                                                barrierDismissible: false,
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child: Container(
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.9,
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.3,
                                                        child:
                                                            PhoneNumLoginWidget(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));

                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            }

                                            if (_shouldSetState)
                                              setState(() {});
                                          },
                                          text: 'Start Inspection',
                                          options: FFButtonOptions(
                                            width: 150.0,
                                            height: 36.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(12.0),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ],
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
