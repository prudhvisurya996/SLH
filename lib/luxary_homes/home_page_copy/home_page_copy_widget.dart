import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/users/user_components/property_components/property_card/property_card_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'home_page_copy_model.dart';
export 'home_page_copy_model.dart';

class HomePageCopyWidget extends StatefulWidget {
  const HomePageCopyWidget({super.key});

  @override
  State<HomePageCopyWidget> createState() => _HomePageCopyWidgetState();
}

class _HomePageCopyWidgetState extends State<HomePageCopyWidget> {
  late HomePageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().updateBookingDetailsPageStruct(
          (e) => e
            ..priceValue = null
            ..taxPercent = null
            ..title = null
            ..locality = null
            ..city = null
            ..guestCount = null
            ..availableFromDate = null
            ..bookedDates = null
            ..propTypes = null
            ..bedCount = null
            ..bedRoomCount = null
            ..propId = null
            ..bathRoomCount = null
            ..articleId = null,
        );
        FFAppState().updateAdminLeasePropertyDetailViewStruct(
          (e) => e
            ..status = null
            ..propertyId = null
            ..city = null
            ..articleId = null,
        );
        FFAppState().updateManageBookingDetailsStruct(
          (e) => e..bookingId = null,
        );
        FFAppState().userFilterPropertyType = [];
        FFAppState().priceMin = 500.0;
        FFAppState().priceMax = 99999.0;
        FFAppState().searchCity = '';
        FFAppState().searchLocality = '';
        FFAppState().searchGuests = 0;
        FFAppState().searchDates = [];
        FFAppState().searchResultCount = 0;
      });
      if (FFAppState().launchApp != null) {
        setState(() {
          FFAppState().skipforHome = true;
        });
      }
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
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: SafeArea(
            top: true,
            child: Stack(
              children: [
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFE3C9FF), Color(0xFF7FD2D8)],
                              stops: [0.0, 1.0],
                              begin: AlignmentDirectional(0.69, -1.0),
                              end: AlignmentDirectional(-0.69, 1.0),
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      32.0, 17.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Get the perfect  ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Work Sans',
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: Text(
                                          'Home',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Work Sans',
                                                color: Color(0xFF5246ED),
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Text(
                                          '25% Off',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Work Sans',
                                                color: Color(0xFFAC341A),
                                                fontSize: 26.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: SvgPicture.asset(
                                    'assets/images/Group_13_Copy.svg',
                                    width: 135.0,
                                    height: 135.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 0.0, 0.0),
                          child: Text(
                            'What are you',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Work Sans',
                                  fontSize: 35.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w300,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 5.0, 0.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Looking ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFF072A3E),
                                        fontSize: 35.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                                TextSpan(
                                  text: 'for ?',
                                  style: GoogleFonts.getFont(
                                    'Work Sans',
                                    fontWeight: FontWeight.w300,
                                    fontSize: 35.0,
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
                      Flexible(
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 12.0, 16.0, 0.0),
                                  child: FutureBuilder<ApiCallResponse>(
                                    future: LiferayBaseUrlGroup
                                        .getPropertyTypesCall
                                        .call(),
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
                                      final rowGetPropertyTypesResponse =
                                          snapshot.data!;
                                      return SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 50.0,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFE1E7FE),
                                                borderRadius:
                                                    BorderRadius.circular(50.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(10.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.0),
                                                  child: SvgPicture.asset(
                                                    'assets/images/house.svg',
                                                    width: 2.0,
                                                    height: 2.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState()
                                                        .addToUserFilterPropertyType(
                                                            getJsonField(
                                                      rowGetPropertyTypesResponse
                                                          .jsonBody,
                                                      r'''$[0].categoryId''',
                                                    ));
                                                  });
                                                  if (FFAppState()
                                                      .isEnableSearch) {
                                                    context.goNamed(
                                                      'HelperPage',
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
                                                  }

                                                  context.pushNamed(
                                                    'SearchPage',
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

                                                  _model.filterOutput =
                                                      await MicroserviceAvailabilityAPIsGroup
                                                          .searchFilterAPICall
                                                          .call(
                                                    priceLowerLimit:
                                                        FFAppState().priceMin,
                                                    priceUpperLimit:
                                                        FFAppState().priceMax,
                                                    pageNumber: 1,
                                                    loaditemsCount:
                                                        MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <=
                                                                500.0
                                                            ? 4
                                                            : 8,
                                                    propertyTypeIds: functions
                                                        .listTostrConversion(
                                                            FFAppState()
                                                                .userFilterPropertyType
                                                                .toList()),
                                                    locality: FFAppState()
                                                        .searchLocality,
                                                    city:
                                                        FFAppState().searchCity,
                                                    totalGuests: FFAppState()
                                                        .searchGuests,
                                                    checkInDate: FFAppState()
                                                                .searchDates
                                                                .length >
                                                            0
                                                        ? dateTimeFormat(
                                                            'yyyy-MM-dd',
                                                            FFAppState()
                                                                .searchDates
                                                                .first)
                                                        : null,
                                                    checkOutDate: FFAppState()
                                                                .searchDates
                                                                .length >
                                                            0
                                                        ? dateTimeFormat(
                                                            'yyyy-MM-dd',
                                                            FFAppState()
                                                                .searchDates
                                                                .last)
                                                        : null,
                                                  );
                                                  if ((_model.filterOutput
                                                          ?.succeeded ??
                                                      true)) {
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                              .searchResultCount =
                                                          getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$.totalCount''',
                                                      );
                                                    });
                                                  } else {
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                          .searchResultCount = 0;
                                                    });
                                                  }

                                                  setState(() {});
                                                },
                                                child: Text(
                                                  getJsonField(
                                                    rowGetPropertyTypesResponse
                                                        .jsonBody,
                                                    r'''$[0].name''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      27.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFF6E6F6),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(6.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    child: SvgPicture.asset(
                                                      'assets/images/villa.svg',
                                                      width: 3.0,
                                                      height: 3.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState()
                                                        .addToUserFilterPropertyType(
                                                            getJsonField(
                                                      rowGetPropertyTypesResponse
                                                          .jsonBody,
                                                      r'''$[1].categoryId''',
                                                    ));
                                                  });
                                                  if (FFAppState()
                                                      .isEnableSearch) {
                                                    context.goNamed(
                                                      'HelperPage',
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
                                                  }

                                                  context.pushNamed(
                                                    'SearchPage',
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

                                                  _model.filter1 =
                                                      await MicroserviceAvailabilityAPIsGroup
                                                          .searchFilterAPICall
                                                          .call(
                                                    priceLowerLimit:
                                                        FFAppState().priceMin,
                                                    priceUpperLimit:
                                                        FFAppState().priceMax,
                                                    pageNumber: 1,
                                                    loaditemsCount:
                                                        MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <=
                                                                500.0
                                                            ? 4
                                                            : 8,
                                                    propertyTypeIds: functions
                                                        .listTostrConversion(
                                                            FFAppState()
                                                                .userFilterPropertyType
                                                                .toList()),
                                                    locality: FFAppState()
                                                        .searchLocality,
                                                    city:
                                                        FFAppState().searchCity,
                                                    totalGuests: FFAppState()
                                                        .searchGuests,
                                                    checkInDate: FFAppState()
                                                                .searchDates
                                                                .length >
                                                            0
                                                        ? dateTimeFormat(
                                                            'yyyy-MM-dd',
                                                            FFAppState()
                                                                .searchDates
                                                                .first)
                                                        : null,
                                                    checkOutDate: FFAppState()
                                                                .searchDates
                                                                .length >
                                                            0
                                                        ? dateTimeFormat(
                                                            'yyyy-MM-dd',
                                                            FFAppState()
                                                                .searchDates
                                                                .last)
                                                        : null,
                                                  );
                                                  if ((_model
                                                          .filter1?.succeeded ??
                                                      true)) {
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                              .searchResultCount =
                                                          getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$.totalCount''',
                                                      );
                                                    });
                                                  } else {
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                          .searchResultCount = 0;
                                                    });
                                                  }

                                                  setState(() {});
                                                },
                                                child: Text(
                                                  getJsonField(
                                                    rowGetPropertyTypesResponse
                                                        .jsonBody,
                                                    r'''$[1].name''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      27.0, 0.0, 0.0, 0.0),
                                              child: Container(
                                                width: 50.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFCDEDF1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50.0),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.45, -0.08),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/apartment-svgrepo-com_1.svg',
                                                          width: 49.0,
                                                          height: 30.0,
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -0.48, -0.1),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(2.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/Group.svg',
                                                            width: 30.0,
                                                            height: 30.0,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  setState(() {
                                                    FFAppState()
                                                        .addToUserFilterPropertyType(
                                                            getJsonField(
                                                      rowGetPropertyTypesResponse
                                                          .jsonBody,
                                                      r'''$[2].categoryId''',
                                                    ));
                                                  });
                                                  if (FFAppState()
                                                      .isEnableSearch) {
                                                    context.goNamed(
                                                      'HelperPage',
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
                                                  }

                                                  context.pushNamed(
                                                    'SearchPage',
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

                                                  _model.filter2 =
                                                      await MicroserviceAvailabilityAPIsGroup
                                                          .searchFilterAPICall
                                                          .call(
                                                    priceLowerLimit:
                                                        FFAppState().priceMin,
                                                    priceUpperLimit:
                                                        FFAppState().priceMax,
                                                    pageNumber: 1,
                                                    loaditemsCount:
                                                        MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <=
                                                                500.0
                                                            ? 4
                                                            : 8,
                                                    propertyTypeIds: functions
                                                        .listTostrConversion(
                                                            FFAppState()
                                                                .userFilterPropertyType
                                                                .toList()),
                                                    locality: FFAppState()
                                                        .searchLocality,
                                                    city:
                                                        FFAppState().searchCity,
                                                    totalGuests: FFAppState()
                                                        .searchGuests,
                                                    checkInDate: FFAppState()
                                                                .searchDates
                                                                .length >
                                                            0
                                                        ? dateTimeFormat(
                                                            'yyyy-MM-dd',
                                                            FFAppState()
                                                                .searchDates
                                                                .first)
                                                        : null,
                                                    checkOutDate: FFAppState()
                                                                .searchDates
                                                                .length >
                                                            0
                                                        ? dateTimeFormat(
                                                            'yyyy-MM-dd',
                                                            FFAppState()
                                                                .searchDates
                                                                .last)
                                                        : null,
                                                  );
                                                  if ((_model
                                                          .filter2?.succeeded ??
                                                      true)) {
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                              .searchResultCount =
                                                          getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$.totalCount''',
                                                      );
                                                    });
                                                  } else {
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                          .searchResultCount = 0;
                                                    });
                                                  }

                                                  setState(() {});
                                                },
                                                child: Text(
                                                  getJsonField(
                                                    rowGetPropertyTypesResponse
                                                        .jsonBody,
                                                    r'''$[2].name''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
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
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 25.0, 16.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 84.0,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFF4980D3), Color(0xFF111D49)],
                              stops: [0.0, 1.0],
                              begin: AlignmentDirectional(1.0, -0.98),
                              end: AlignmentDirectional(-1.0, 0.98),
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 0.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: Image.asset(
                                    'assets/images/aviso_1.png',
                                    width: 57.0,
                                    height: 57.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 2.0),
                                      child: Text(
                                        '15% discount',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 20.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 2.0, 0.0, 0.0),
                                      child: Text(
                                        'on all our packages',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      11.0, 0.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/image_2.png',
                                      width: 119.0,
                                      height: 119.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 25.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Recent Properties',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Work Sans',
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('listings');
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'See All',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Work Sans',
                                                color: Color(0xFF375FE3),
                                                fontSize: 15.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: Icon(
                                            Icons.navigate_next,
                                            color: Color(0xFF325EF1),
                                            size: 24.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.sizeOf(context).height * 0.73,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 0.0),
                                child: RefreshIndicator(
                                  onRefresh: () async {
                                    setState(() => _model
                                        .listViewPagingController
                                        ?.refresh());
                                    await _model.waitForOnePageForListView();
                                  },
                                  child: PagedListView<ApiPagingParams,
                                      dynamic>.separated(
                                    pagingController:
                                        _model.setListViewController(
                                      (nextPageMarker) =>
                                          MicroserviceAvailabilityAPIsGroup
                                              .propertyListingsCall
                                              .call(
                                        pageLoadItemsCount:
                                            MediaQuery.sizeOf(context).width <=
                                                    500.0
                                                ? 4
                                                : 8,
                                        pageNoCount: functions.incrementOne(
                                                    nextPageMarker
                                                        .nextPageNumber) >=
                                                0
                                            ? (nextPageMarker.nextPageNumber +
                                                1)
                                            : -1,
                                      ),
                                    ),
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    reverse: false,
                                    scrollDirection: Axis.vertical,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 3.0),
                                    builderDelegate:
                                        PagedChildBuilderDelegate<dynamic>(
                                      // Customize what your widget looks like when it's loading the first page.
                                      firstPageProgressIndicatorBuilder: (_) =>
                                          Center(
                                        child: SizedBox(
                                          width: 40.0,
                                          height: 40.0,
                                          child: SpinKitPulse(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 40.0,
                                          ),
                                        ),
                                      ),
                                      // Customize what your widget looks like when it's loading another page.
                                      newPageProgressIndicatorBuilder: (_) =>
                                          Center(
                                        child: SizedBox(
                                          width: 40.0,
                                          height: 40.0,
                                          child: SpinKitPulse(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 40.0,
                                          ),
                                        ),
                                      ),

                                      itemBuilder: (context, _,
                                          propertyListingDataIndex) {
                                        final propertyListingDataItem = _model
                                                .listViewPagingController!
                                                .itemList![
                                            propertyListingDataIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 10.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                FFAppState()
                                                        .PropertyDetailsPage =
                                                    PropertyDetailsPageStruct(
                                                  articleId: getJsonField(
                                                    propertyListingDataItem,
                                                    r'''$.articleId''',
                                                  ).toString(),
                                                );
                                              });

                                              context.pushNamed(
                                                  'PropertyDetailsPage');
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(),
                                              child: Hero(
                                                tag: 'propertyDetailsPage',
                                                transitionOnUserGestures: true,
                                                child: Material(
                                                  color: Colors.transparent,
                                                  child: PropertyCardWidget(
                                                    key: Key(
                                                        'Keyrwc_${propertyListingDataIndex}_of_${_model.listViewPagingController!.itemList!.length}'),
                                                    pageName: 'home',
                                                    title:
                                                        valueOrDefault<String>(
                                                      getJsonField(
                                                        propertyListingDataItem,
                                                        r'''$.title''',
                                                      )?.toString(),
                                                      'NA',
                                                    ),
                                                    price:
                                                        valueOrDefault<double>(
                                                      getJsonField(
                                                        propertyListingDataItem,
                                                        r'''$.basePrice''',
                                                      ),
                                                      0.0,
                                                    ),
                                                    propertyType:
                                                        valueOrDefault<String>(
                                                      getJsonField(
                                                        propertyListingDataItem,
                                                        r'''$.propertyType''',
                                                      )?.toString(),
                                                      'NA',
                                                    ),
                                                    imageList: functions
                                                        .listDataConversion(
                                                            getJsonField(
                                                      propertyListingDataItem,
                                                      r'''$.imageURLs''',
                                                    ).toString()),
                                                    propertyArticleid:
                                                        valueOrDefault<String>(
                                                      getJsonField(
                                                        propertyListingDataItem,
                                                        r'''$.articleId''',
                                                      )?.toString(),
                                                      'NA',
                                                    ),
                                                    locality: getJsonField(
                                                      propertyListingDataItem,
                                                      r'''$.locality''',
                                                    ).toString(),
                                                    city: getJsonField(
                                                      propertyListingDataItem,
                                                      r'''$.city''',
                                                    ).toString(),
                                                    averageRating: getJsonField(
                                                      propertyListingDataItem,
                                                      r'''$.averageRating''',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
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
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.navBarModel,
                    updateCallback: () => setState(() {}),
                    child: NavBarWidget(
                      index: 8,
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
