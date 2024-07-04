import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/homepage_new_web_screens/trips/new_details_card_for_trips/new_details_card_for_trips_widget.dart';
import '/luxary_homes/homepage_new_web_screens/trips/new_trips_error_comp/new_trips_error_comp_widget.dart';
import '/luxary_homes/users/feedback/feedback_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'new_completed_trips_model.dart';
export 'new_completed_trips_model.dart';

class NewCompletedTripsWidget extends StatefulWidget {
  const NewCompletedTripsWidget({
    super.key,
    required this.count,
    required this.bookingStatus,
    required this.bookingId,
  });

  final int? count;
  final int? bookingStatus;
  final String? bookingId;

  @override
  State<NewCompletedTripsWidget> createState() =>
      _NewCompletedTripsWidgetState();
}

class _NewCompletedTripsWidgetState extends State<NewCompletedTripsWidget> {
  late NewCompletedTripsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewCompletedTripsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.count != 0)
          Flexible(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.28,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 0.0, 10.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'You have ',
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color: Color(0xFF475569),
                                  fontSize: 16.0,
                                ),
                              ),
                              TextSpan(
                                text: widget.count.toString(),
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextSpan(
                                text: ' Completed trips',
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color: Color(0xFF475569),
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
                      Flexible(
                        child: PagedListView<ApiPagingParams, dynamic>(
                          pagingController: _model.setListViewController(
                            (nextPageMarker) => MicroserviceBookingAPIsGroup
                                .tripsDetailCall
                                .call(
                              userId: FFAppState().userData.userId,
                              bookingStatus: widget.bookingStatus,
                              pageNo: functions.incrementOne(
                                          nextPageMarker.nextPageNumber) >
                                      0
                                  ? (nextPageMarker.nextPageNumber + 1)
                                  : -1,
                              pageSize: 10,
                            ),
                          ),
                          padding: EdgeInsets.zero,
                          reverse: false,
                          scrollDirection: Axis.vertical,
                          builderDelegate: PagedChildBuilderDelegate<dynamic>(
                            // Customize what your widget looks like when it's loading the first page.
                            firstPageProgressIndicatorBuilder: (_) => Center(
                              child: SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: SpinKitPulse(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 40.0,
                                ),
                              ),
                            ),
                            // Customize what your widget looks like when it's loading another page.
                            newPageProgressIndicatorBuilder: (_) => Center(
                              child: SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: SpinKitPulse(
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 40.0,
                                ),
                              ),
                            ),

                            itemBuilder: (context, _, completedTripsIndex) {
                              final completedTripsItem = _model
                                  .listViewPagingController!
                                  .itemList![completedTripsIndex];
                              return Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 5.0, 10.0, 5.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.bookingId = getJsonField(
                                      completedTripsItem,
                                      r'''$.bookingId''',
                                    ).toString();
                                    _model.tabs = 'bookingInfo';
                                    _model.updatePage(() {});
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: () {
                                            if (_model.bookingId ==
                                                getJsonField(
                                                  completedTripsItem,
                                                  r'''$.bookingId''',
                                                ).toString()) {
                                              return Color(0xFFE8E7FF);
                                            } else if ((_model.index ==
                                                    completedTripsIndex) &&
                                                (_model.bookingId == null ||
                                                    _model.bookingId == '')) {
                                              return Color(0xFFE8E7FF);
                                            } else {
                                              return Color(0xFFF8F8F8);
                                            }
                                          }(),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(12.0),
                                            topRight: Radius.circular(12.0),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(0.0),
                                                topLeft: Radius.circular(12.0),
                                                topRight: Radius.circular(0.0),
                                              ),
                                              child: CachedNetworkImage(
                                                fadeInDuration:
                                                    Duration(milliseconds: 500),
                                                fadeOutDuration:
                                                    Duration(milliseconds: 500),
                                                imageUrl: functions.getImage(
                                                    FFAppState().BaseUrl,
                                                    functions.imgToStrConv(
                                                        functions
                                                            .listDataConversion(
                                                                getJsonField(
                                                              completedTripsItem,
                                                              r'''$.propertyImages''',
                                                            ).toString())
                                                            ?.first))!,
                                                width: 120.0,
                                                height:
                                                    widget.bookingStatus == 0
                                                        ? 155.0
                                                        : 110.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        25.0, 0.0, 25.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    AutoSizeText(
                                                      getJsonField(
                                                        completedTripsItem,
                                                        r'''$.title''',
                                                      ).toString(),
                                                      textAlign:
                                                          TextAlign.start,
                                                      maxLines: 3,
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Work Sans',
                                                        color: Colors.black,
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
                                                                  10.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/house.svg',
                                                              width: 15.0,
                                                              height: 15.0,
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              getJsonField(
                                                                completedTripsItem,
                                                                r'''$.propertyType''',
                                                              ).toString(),
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/location-pin.svg',
                                                            width: 15.0,
                                                            height: 15.0,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              '${getJsonField(
                                                                completedTripsItem,
                                                                r'''$.locality''',
                                                              ).toString()}- ${getJsonField(
                                                                completedTripsItem,
                                                                r'''$.city''',
                                                              ).toString()}',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: Color(
                                                                    0xFF878787),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 12.0,
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
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 80.0,
                                        decoration: BoxDecoration(
                                          color: () {
                                            if (_model.bookingId ==
                                                getJsonField(
                                                  completedTripsItem,
                                                  r'''$.bookingId''',
                                                ).toString()) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .primary;
                                            } else if ((_model.index ==
                                                    completedTripsIndex) &&
                                                (_model.bookingId == null ||
                                                    _model.bookingId == '')) {
                                              return FlutterFlowTheme.of(
                                                      context)
                                                  .primary;
                                            } else {
                                              return Color(0xFFE8E7FF);
                                            }
                                          }(),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(12.0),
                                            bottomRight: Radius.circular(12.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  14.0, 0.0, 14.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Check-In',
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                      color: () {
                                                        if (_model.bookingId ==
                                                            getJsonField(
                                                              completedTripsItem,
                                                              r'''$.bookingId''',
                                                            ).toString()) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground;
                                                        } else if ((_model
                                                                    .index ==
                                                                completedTripsIndex) &&
                                                            (_model.bookingId ==
                                                                    null ||
                                                                _model.bookingId ==
                                                                    '')) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground;
                                                        } else {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText;
                                                        }
                                                      }(),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14.0,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 8.0),
                                                    child: Text(
                                                      getJsonField(
                                                        completedTripsItem,
                                                        r'''$.checkInDate''',
                                                      ).toString(),
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Work Sans',
                                                        color: () {
                                                          if (_model
                                                                  .bookingId ==
                                                              getJsonField(
                                                                completedTripsItem,
                                                                r'''$.bookingId''',
                                                              ).toString()) {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground;
                                                          } else if ((_model
                                                                      .index ==
                                                                  completedTripsIndex) &&
                                                              (_model.bookingId ==
                                                                      null ||
                                                                  _model.bookingId ==
                                                                      '')) {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground;
                                                          } else {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText;
                                                          }
                                                        }(),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Group_1000004811.svg',
                                                          width: 16.0,
                                                          height: 16.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '12:00 PM',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Work Sans',
                                                            color: () {
                                                              if (_model
                                                                      .bookingId ==
                                                                  getJsonField(
                                                                    completedTripsItem,
                                                                    r'''$.bookingId''',
                                                                  )
                                                                      .toString()) {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground;
                                                              } else if ((_model
                                                                          .index ==
                                                                      completedTripsIndex) &&
                                                                  (_model.bookingId ==
                                                                          null ||
                                                                      _model.bookingId ==
                                                                          '')) {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground;
                                                              } else {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText;
                                                              }
                                                            }(),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 12.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Check-Out',
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                      color: () {
                                                        if (_model.bookingId ==
                                                            getJsonField(
                                                              completedTripsItem,
                                                              r'''$.bookingId''',
                                                            ).toString()) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground;
                                                        } else if ((_model
                                                                    .index ==
                                                                completedTripsIndex) &&
                                                            (_model.bookingId ==
                                                                    null ||
                                                                _model.bookingId ==
                                                                    '')) {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground;
                                                        } else {
                                                          return FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText;
                                                        }
                                                      }(),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14.0,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 8.0),
                                                    child: Text(
                                                      getJsonField(
                                                        completedTripsItem,
                                                        r'''$.checkOutDate''',
                                                      ).toString(),
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Work Sans',
                                                        color: () {
                                                          if (_model
                                                                  .bookingId ==
                                                              getJsonField(
                                                                completedTripsItem,
                                                                r'''$.bookingId''',
                                                              ).toString()) {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground;
                                                          } else if ((_model
                                                                      .index ==
                                                                  completedTripsIndex) &&
                                                              (_model.bookingId ==
                                                                      null ||
                                                                  _model.bookingId ==
                                                                      '')) {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground;
                                                          } else {
                                                            return FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText;
                                                          }
                                                        }(),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Group_1000004811.svg',
                                                          width: 16.0,
                                                          height: 16.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '12:00 PM',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Work Sans',
                                                            color: () {
                                                              if (_model
                                                                      .bookingId ==
                                                                  getJsonField(
                                                                    completedTripsItem,
                                                                    r'''$.bookingId''',
                                                                  )
                                                                      .toString()) {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground;
                                                              } else if ((_model
                                                                          .index ==
                                                                      completedTripsIndex) &&
                                                                  (_model.bookingId ==
                                                                          null ||
                                                                      _model.bookingId ==
                                                                          '')) {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground;
                                                              } else {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText;
                                                              }
                                                            }(),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 12.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Flexible(
                                                child: Stack(
                                                  children: [
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Booking ID:',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Work Sans',
                                                            color: () {
                                                              if (_model
                                                                      .bookingId ==
                                                                  getJsonField(
                                                                    completedTripsItem,
                                                                    r'''$.bookingId''',
                                                                  )
                                                                      .toString()) {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground;
                                                              } else if ((_model
                                                                          .index ==
                                                                      completedTripsIndex) &&
                                                                  (_model.bookingId ==
                                                                          null ||
                                                                      _model.bookingId ==
                                                                          '')) {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground;
                                                              } else {
                                                                return FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText;
                                                              }
                                                            }(),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 14.0,
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
                                                            getJsonField(
                                                              completedTripsItem,
                                                              r'''$.bookingRefId''',
                                                            ).toString(),
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Work Sans',
                                                              color: () {
                                                                if (_model
                                                                        .bookingId ==
                                                                    getJsonField(
                                                                      completedTripsItem,
                                                                      r'''$.bookingId''',
                                                                    )
                                                                        .toString()) {
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground;
                                                                } else if ((_model
                                                                            .index ==
                                                                        completedTripsIndex) &&
                                                                    (_model.bookingId ==
                                                                            null ||
                                                                        _model.bookingId ==
                                                                            '')) {
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground;
                                                                } else {
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary;
                                                                }
                                                              }(),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 12.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    if (widget.bookingStatus ==
                                                            0
                                                        ? true
                                                        : false)
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Refund Status :',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Work Sans',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 14.0,
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
                                                              'PENDING',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 12.0,
                                                              ),
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
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                    child: FutureBuilder<ApiCallResponse>(
                      future: MicroserviceBookingAPIsGroup
                          .viewBookingDetailsCall
                          .call(
                        bookingId:
                            _model.bookingId != null && _model.bookingId != ''
                                ? _model.bookingId
                                : widget.bookingId,
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
                        final containerViewBookingDetailsResponse =
                            snapshot.data!;
                        return Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: SingleChildScrollView(
                              primary: false,
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 24.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Material(
                                            color: Colors.transparent,
                                            elevation: 0.5,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.3,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.38,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                child: Image.network(
                                                  _model.heroImage != null &&
                                                          _model.heroImage != ''
                                                      ? _model.heroImage!
                                                      : functions
                                                          .initImg(
                                                              functions
                                                                  .listDataConversion(
                                                                      getJsonField(
                                                                    containerViewBookingDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.propertyImages''',
                                                                  ).toString())
                                                                  ?.toList(),
                                                              FFAppState()
                                                                  .BaseUrl)!
                                                          .first,
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.3,
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.38,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
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
                                                        containerViewBookingDetailsResponse
                                                            .jsonBody,
                                                        r'''$.propertyImages''',
                                                      ).toString())
                                                      ?.toList(),
                                                  FFAppState().BaseUrl)
                                              ?.toList() ??
                                          [];
                                      return SingleChildScrollView(
                                        scrollDirection: Axis.horizontal,
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children:
                                              List.generate(imagesList.length,
                                                  (imagesListIndex) {
                                            final imagesListItem =
                                                imagesList[imagesListIndex];
                                            return Material(
                                              color: Colors.transparent,
                                              elevation: 0.5,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
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
                                                    _model.heroImage =
                                                        functions.initImg(
                                                                functions
                                                                    .listDataConversion(
                                                                        getJsonField(
                                                                      containerViewBookingDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.propertyImages''',
                                                                    ).toString())
                                                                    ?.toList(),
                                                                FFAppState()
                                                                    .BaseUrl)?[
                                                            imagesListIndex];
                                                    _model.updatePage(() {});
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                    child: Image.network(
                                                      imagesListItem,
                                                      width: 100.0,
                                                      height: 100.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }).divide(SizedBox(width: 15.0)),
                                        ),
                                      );
                                    },
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.tabs = 'bookingInfo';
                                          setState(() {});
                                        },
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      8.0, 16.0, 8.0, 16.0),
                                              child: Text(
                                                'Booking Information',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                            if (_model.tabs == 'bookingInfo')
                                              Container(
                                                width: 155.0,
                                                height: 3.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            _model.tabs = 'propertyInfo';
                                            setState(() {});
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(16.0),
                                                child: Text(
                                                  'Property Information',
                                                  style: GoogleFonts.getFont(
                                                    'Work Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                              ),
                                              if (_model.tabs == 'propertyInfo')
                                                Container(
                                                  width: 155.0,
                                                  height: 3.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(1.0, 0.0),
                                          child: Builder(
                                            builder: (context) => Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 20.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  var _shouldSetState = false;
                                                  _model.refreshTokenRespFeedbackWeb =
                                                      await RefreshTokenAPICall
                                                          .call(
                                                    clientId:
                                                        FFAppConstants.clientId,
                                                    clientSecret: FFAppConstants
                                                        .clientSecret,
                                                    grantType: FFAppConstants
                                                        .refreshGrantType,
                                                    refreshToken: FFAppState()
                                                        .refreshToken,
                                                  );

                                                  _shouldSetState = true;
                                                  if ((_model
                                                          .refreshTokenRespFeedbackWeb
                                                          ?.succeeded ??
                                                      true)) {
                                                    FFAppState().accessToken =
                                                        getJsonField(
                                                      (_model.refreshTokenRespFeedbackWeb
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.access_token''',
                                                    ).toString();
                                                    FFAppState().refreshToken =
                                                        getJsonField(
                                                      (_model.refreshTokenRespFeedbackWeb
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.refresh_token''',
                                                    ).toString();
                                                    setState(() {});
                                                    await showDialog(
                                                      barrierColor:
                                                          Color(0xCC000D3E),
                                                      barrierDismissible: false,
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child: Container(
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.8,
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.3,
                                                            child:
                                                                FeedbackWidget(
                                                              bookingId: FFAppState()
                                                                  .ManageBookingDetails
                                                                  .bookingId,
                                                              propertyId:
                                                                  getJsonField(
                                                                containerViewBookingDetailsResponse
                                                                    .jsonBody,
                                                                r'''$.propertyId''',
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
                                                          title: Text('Error'),
                                                          content: Text(
                                                              'Your session is expired, please re-login.'),
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
                                                    _model.shareReviewRequestResponse =
                                                        await RefreshTokenAPICall
                                                            .call(
                                                      clientId: FFAppConstants
                                                          .clientId,
                                                      clientSecret:
                                                          FFAppConstants
                                                              .clientSecret,
                                                      grantType: FFAppConstants
                                                          .refreshGrantType,
                                                      refreshToken: FFAppState()
                                                          .refreshToken,
                                                    );

                                                    _shouldSetState = true;
                                                    if ((_model
                                                            .shareReviewRequestResponse
                                                            ?.succeeded ??
                                                        true)) {
                                                      FFAppState().accessToken =
                                                          getJsonField(
                                                        (_model.shareReviewRequestResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.access_token''',
                                                      ).toString();
                                                      FFAppState()
                                                              .refreshToken =
                                                          getJsonField(
                                                        (_model.shareReviewRequestResponse
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.refresh_token''',
                                                      ).toString();
                                                      FFAppState()
                                                          .update(() {});
                                                      _model.logoutAPIRespShareReview =
                                                          await LogOutCall.call(
                                                        accessToken:
                                                            FFAppState()
                                                                .accessToken,
                                                        refreshToken:
                                                            FFAppState()
                                                                .refreshToken,
                                                      );

                                                      _shouldSetState = true;
                                                      if ((_model
                                                              .logoutAPIRespShareReview
                                                              ?.succeeded ??
                                                          true)) {
                                                        Navigator.pop(context);
                                                        FFAppState()
                                                            .accessToken = '';
                                                        FFAppState()
                                                            .refreshToken = '';
                                                        FFAppState()
                                                            .searchDates = [];
                                                        FFAppState()
                                                            .searchCity = '';
                                                        FFAppState()
                                                            .searchGuests = 0;
                                                        FFAppState()
                                                            .searchLocality = '';
                                                        FFAppState().priceMin =
                                                            500.0;
                                                        FFAppState().priceMax =
                                                            99999.0;
                                                        FFAppState()
                                                            .userFilterPropertyType = [];
                                                        FFAppState()
                                                            .searchResultCount = 0;
                                                        setState(() {});
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title:
                                                                  Text('Info'),
                                                              content: Text(
                                                                  'Please Login to share you feedback !'),
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
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title:
                                                                  Text('Info'),
                                                              content: Text(
                                                                  'Please Login to share you feedback !'),
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
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text('Info'),
                                                            content: Text(
                                                                'Please Login to share you feedback !'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                      if (_shouldSetState)
                                                        setState(() {});
                                                      return;
                                                    }
                                                  }

                                                  if (_shouldSetState)
                                                    setState(() {});
                                                },
                                                child: Container(
                                                  width: 150.0,
                                                  height: 46.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Vector_(1).svg',
                                                          width: 24.0,
                                                          height: 18.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Write review',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: 1.0,
                                    thickness: 2.0,
                                    endIndent: 20.0,
                                    color: Color(0xFFE2E8F0),
                                  ),
                                  if (_model.tabs == 'propertyInfo')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF8F8F8),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 15.0, 15.0, 15.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                GradientText(
                                                  valueOrDefault<String>(
                                                    getJsonField(
                                                      containerViewBookingDetailsResponse
                                                          .jsonBody,
                                                      r'''$.title''',
                                                    )?.toString(),
                                                    'NA',
                                                  ),
                                                  style: GoogleFonts.getFont(
                                                    'Work Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 24.0,
                                                  ),
                                                  colors: [
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                    Color(0xFFA51FF6)
                                                  ],
                                                  gradientDirection:
                                                      GradientDirection.ltr,
                                                  gradientType:
                                                      GradientType.linear,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Property details',
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 18.0, 16.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Property Type',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color:
                                                              Color(0xFFB6BFE0),
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
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    getJsonField(
                                                                  containerViewBookingDetailsResponse
                                                                      .jsonBody,
                                                                  r'''$.propertyType''',
                                                                ).toString(),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              )
                                                            ],
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Work Sans',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontSize: 16.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 24.0, 0.0, 0.0),
                                                  child: Wrap(
                                                    spacing: 10.0,
                                                    runSpacing: 18.0,
                                                    alignment:
                                                        WrapAlignment.start,
                                                    crossAxisAlignment:
                                                        WrapCrossAlignment
                                                            .start,
                                                    direction: Axis.horizontal,
                                                    runAlignment:
                                                        WrapAlignment.start,
                                                    verticalDirection:
                                                        VerticalDirection.down,
                                                    clipBehavior: Clip.none,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
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
                                                                height: 18.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  containerViewBookingDetailsResponse
                                                                      .jsonBody,
                                                                  r'''$.city''',
                                                                ).toString(),
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
                                                                      16.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      if (MicroserviceBookingAPIsGroup
                                                              .viewBookingDetailsCall
                                                              .isSharedAllowed(
                                                            containerViewBookingDetailsResponse
                                                                .jsonBody,
                                                          ) ==
                                                          false)
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      8.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            0.0),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/images/house_chimney_blank.svg',
                                                                  width: 18.0,
                                                                  height: 18.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  '${getJsonField(
                                                                    containerViewBookingDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.propertyTotalGuests''',
                                                                  ).toString()} Guests',
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
                                                                        16.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      if (MicroserviceBookingAPIsGroup
                                                              .viewBookingDetailsCall
                                                              .isSharedAllowed(
                                                            containerViewBookingDetailsResponse
                                                                .jsonBody,
                                                          ) ==
                                                          true)
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/house_chimney_blank.svg',
                                                                width: 18.0,
                                                                height: 18.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                '${getJsonField(
                                                                  containerViewBookingDetailsResponse
                                                                      .jsonBody,
                                                                  r'''$.propertyTotalGuests''',
                                                                ).toString()} GuestsPerRoom',
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
                                                                      16.0,
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
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width: 8.0,
                                                              height: 8.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                '${getJsonField(
                                                                  containerViewBookingDetailsResponse
                                                                      .jsonBody,
                                                                  r'''$.totalBedRooms''',
                                                                ).toString()} bedroom',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
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
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width: 8.0,
                                                              height: 8.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                '${getJsonField(
                                                                  containerViewBookingDetailsResponse
                                                                      .jsonBody,
                                                                  r'''$.propertyTotalBeds''',
                                                                ).toString()} beds',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
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
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Container(
                                                              width: 8.0,
                                                              height: 8.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                shape: BoxShape
                                                                    .circle,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                '${getJsonField(
                                                                  containerViewBookingDetailsResponse
                                                                      .jsonBody,
                                                                  r'''$.propertyTotalWashrooms''',
                                                                ).toString()} bathrooms',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Container(
                                                            width: 8.0,
                                                            height: 8.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              '${getJsonField(
                                                                containerViewBookingDetailsResponse
                                                                    .jsonBody,
                                                                r'''$.sharedWashrooms''',
                                                              ).toString()} SharedBathrooms',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 16.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 18.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Property address',
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                      color: Color(0xFFB6BFE0),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 16.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 12.0, 0.0, 0.0),
                                                  child: RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: valueOrDefault<
                                                              String>(
                                                            getJsonField(
                                                              containerViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.fullAddress''',
                                                            )?.toString(),
                                                            'NA',
                                                          ),
                                                          style: TextStyle(),
                                                        )
                                                      ],
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Work Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 16.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Description',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 18.0,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    15.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          getJsonField(
                                                            containerViewBookingDetailsResponse
                                                                .jsonBody,
                                                            r'''$.description''',
                                                          ).toString(),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Work Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontSize: 16.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  18.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, -1.0),
                                                            child: Text(
                                                              'Property amenities',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 16.0,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        14.0,
                                                                        55.0,
                                                                        14.0),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final amenitiess = functions
                                                                        .listMapConversion(getJsonField(
                                                                          containerViewBookingDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.amenities''',
                                                                        ).toString())
                                                                        ?.toList() ??
                                                                    [];
                                                                return GridView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  gridDelegate:
                                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                                    crossAxisCount:
                                                                        3,
                                                                    crossAxisSpacing:
                                                                        10.0,
                                                                    mainAxisSpacing:
                                                                        10.0,
                                                                    childAspectRatio:
                                                                        10.0,
                                                                  ),
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      amenitiess
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          amenitiessIndex) {
                                                                    final amenitiessItem =
                                                                        amenitiess[
                                                                            amenitiessIndex];
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              8.0,
                                                                          height:
                                                                              8.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            getJsonField(
                                                                              amenitiessItem,
                                                                              r'''$.name''',
                                                                            ).toString(),
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontWeight: FontWeight.normal,
                                                                              fontSize: 16.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
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
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: Text(
                                                    'Guest details',
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 18.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      35.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Name',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize:
                                                                      14.0,
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
                                                                  '${FFAppState().userData.firstName} ${FFAppState().userData.lastName}',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Colors
                                                                        .black,
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
                                                      ),
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      35.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Email',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize:
                                                                      14.0,
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
                                                                  FFAppState()
                                                                      .userData
                                                                      .emailAddress,
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Colors
                                                                        .black,
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
                                                      ),
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      35.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Mobile Number',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize:
                                                                      14.0,
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
                                                                  FFAppState()
                                                                      .userData
                                                                      .phoneNumber,
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Colors
                                                                        .black,
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
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  if (_model.tabs == 'bookingInfo')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 15.0, 0.0, 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xFFF8F8F8),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(15.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Flexible(
                                                child: Stack(
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              1.0, 0.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/Group_1707478317.svg',
                                                          width: 250.0,
                                                          height: 300.0,
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
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
                                                                Text(
                                                                  'Check In Date - Check Out Date',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        18.0,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          15.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            25.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                  child: Text(
                                                                                    'Check In',
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Work Sans',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                  child: SvgPicture.asset(
                                                                                    'assets/images/Frame_1707478343.svg',
                                                                                    width: 21.0,
                                                                                    height: 24.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 10.0),
                                                                              child: Text(
                                                                                dateTimeFormat(
                                                                                    'dd MMM yyyy',
                                                                                    functions.strToDateTimeConversion(getJsonField(
                                                                                      containerViewBookingDetailsResponse.jsonBody,
                                                                                      r'''$.checkInDate''',
                                                                                    ).toString())),
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                FaIcon(
                                                                                  FontAwesomeIcons.clock,
                                                                                  color: Color(0xFF5642ED),
                                                                                  size: 16.0,
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    '12:00 PM',
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Work Sans',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        '--',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          fontSize:
                                                                              18.0,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            25.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                  child: Text(
                                                                                    'Check Out',
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Work Sans',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontSize: 12.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                  child: Image.asset(
                                                                                    'assets/images/Frame_1707478466.png',
                                                                                    width: 21.0,
                                                                                    height: 24.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 10.0),
                                                                              child: Text(
                                                                                dateTimeFormat(
                                                                                    'dd MMM yyyy',
                                                                                    functions.strToDateTimeConversion(getJsonField(
                                                                                      containerViewBookingDetailsResponse.jsonBody,
                                                                                      r'''$.checkOutDate''',
                                                                                    ).toString())),
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                FaIcon(
                                                                                  FontAwesomeIcons.clock,
                                                                                  color: Color(0xFF5642ED),
                                                                                  size: 16.0,
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    '11:00 AM',
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Work Sans',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontSize: 12.0,
                                                                                    ),
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
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.25,
                                                              height: 124.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFE8E7FF),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceEvenly,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
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
                                                                        Text(
                                                                          'No. of nights:',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                14.0,
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              functions
                                                                                  .daysCalculation(functions
                                                                                      .fromToDateConversion(
                                                                                          getJsonField(
                                                                                            containerViewBookingDetailsResponse.jsonBody,
                                                                                            r'''$.checkInDate''',
                                                                                          ).toString(),
                                                                                          getJsonField(
                                                                                            containerViewBookingDetailsResponse.jsonBody,
                                                                                            r'''$.checkOutDate''',
                                                                                          ).toString())
                                                                                      ?.toList())
                                                                                  .toString(),
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              functions.daysCalculation(functions
                                                                                          .fromToDateConversion(
                                                                                              getJsonField(
                                                                                                containerViewBookingDetailsResponse.jsonBody,
                                                                                                r'''$.checkInDate''',
                                                                                              ).toString(),
                                                                                              getJsonField(
                                                                                                containerViewBookingDetailsResponse.jsonBody,
                                                                                                r'''$.checkOutDate''',
                                                                                              ).toString())
                                                                                          ?.toList()) >
                                                                                      1
                                                                                  ? 'Nights'
                                                                                  : 'Night',
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
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
                                                                        Text(
                                                                          'Booked on:',
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                14.0,
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                30.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              getJsonField(
                                                                                containerViewBookingDetailsResponse.jsonBody,
                                                                                r'''$.bookingDate''',
                                                                              ).toString(),
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            10.0,
                                                                            0.0,
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
                                                                        Text(
                                                                          'Booking ID:',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                14.0,
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                20.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              getJsonField(
                                                                                containerViewBookingDetailsResponse.jsonBody,
                                                                                r'''$.bookingRefId''',
                                                                              ).toString(),
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14.0,
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
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                if (MicroserviceBookingAPIsGroup
                                                                        .viewBookingDetailsCall
                                                                        .entirePropertyBooking(
                                                                      containerViewBookingDetailsResponse
                                                                          .jsonBody,
                                                                    ) ==
                                                                    true)
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            15.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'You\'ve booked entire property',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontSize:
                                                                                18.0,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          15.0),
                                                                  child:
                                                                      RichText(
                                                                    textScaler:
                                                                        MediaQuery.of(context)
                                                                            .textScaler,
                                                                    text:
                                                                        TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              'Total amount paid',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontSize:
                                                                                14.0,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              '   (Inc taxes)',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                10.0,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              '    INR. ',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                Color(0xFFD70000),
                                                                            fontSize:
                                                                                16.0,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              getJsonField(
                                                                            containerViewBookingDetailsResponse.jsonBody,
                                                                            r'''$.amountPaid''',
                                                                          ).toString(),
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                Color(0xFFD70000),
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontSize:
                                                                                16.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontSize:
                                                                            14.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          2.0,
                                                                          0.0),
                                                                  child:
                                                                      RichText(
                                                                    textScaler:
                                                                        MediaQuery.of(context)
                                                                            .textScaler,
                                                                    text:
                                                                        TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              'Price per night                    ',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontSize:
                                                                                14.0,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              '    INR. ',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                Color(0xFFD70000),
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              getJsonField(
                                                                            containerViewBookingDetailsResponse.jsonBody,
                                                                            r'''$.pricePerRoom''',
                                                                          ).toString(),
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                Color(0xFFD70000),
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontSize:
                                                                                12.0,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              ' / night',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontSize:
                                                                                10.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontSize:
                                                                            14.0,
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
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    50.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'No of guests & rooms',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 18.0,
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
                                                              child: Container(
                                                                width: 150.0,
                                                                height: 130.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFF0F0F0),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            15.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/co-living.svg',
                                                                            width:
                                                                                64.0,
                                                                            height:
                                                                                64.0,
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Flexible(
                                                                        child:
                                                                            RichText(
                                                                          textScaler:
                                                                              MediaQuery.of(context).textScaler,
                                                                          text:
                                                                              TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                text: 'Guests : ',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  color: Color(0xFF293216),
                                                                                  fontWeight: FontWeight.w600,
                                                                                  fontSize: 16.0,
                                                                                ),
                                                                              ),
                                                                              TextSpan(
                                                                                text: getJsonField(
                                                                                  containerViewBookingDetailsResponse.jsonBody,
                                                                                  r'''$.guests''',
                                                                                ).toString(),
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  color: Color(0xFF293216),
                                                                                  fontSize: 20.0,
                                                                                ),
                                                                              )
                                                                            ],
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 16.0,
                                                                            ),
                                                                          ),
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
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 150.0,
                                                                height: 125.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFF0F0F0),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            15.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/room.svg',
                                                                            width:
                                                                                64.0,
                                                                            height:
                                                                                64.0,
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Flexible(
                                                                        child:
                                                                            RichText(
                                                                          textScaler:
                                                                              MediaQuery.of(context).textScaler,
                                                                          text:
                                                                              TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                text: 'Rooms : ',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  color: Color(0xFF293216),
                                                                                  fontWeight: FontWeight.w600,
                                                                                  fontSize: 16.0,
                                                                                ),
                                                                              ),
                                                                              TextSpan(
                                                                                text: getJsonField(
                                                                                  containerViewBookingDetailsResponse.jsonBody,
                                                                                  r'''$.roomsBooked''',
                                                                                ).toString(),
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  color: Color(0xFF293216),
                                                                                  fontSize: 20.0,
                                                                                ),
                                                                              )
                                                                            ],
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                            ),
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
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
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
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: wrapWithModel(
                                        model:
                                            _model.newDetailsCardForTripsModel,
                                        updateCallback: () => setState(() {}),
                                        child: NewDetailsCardForTripsWidget(
                                          roomsCount: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.bedrooms''',
                                          ),
                                          guestCount: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.totalGuests''',
                                          ),
                                          propertyId: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.propertyId''',
                                          ),
                                          entirePropertyPricePerNight:
                                              getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.entirePropertyPrice''',
                                          ),
                                          roomPricePerNight: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.totalPrice''',
                                          ),
                                          propertyType: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.propertyType''',
                                          ).toString(),
                                          title: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.title''',
                                          ).toString(),
                                          description: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.description''',
                                          ).toString(),
                                          locality: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.locality''',
                                          ).toString(),
                                          city: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.city''',
                                          ).toString(),
                                          streetAddress: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.street''',
                                          ).toString(),
                                          landmark: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.landmark''',
                                          ).toString(),
                                          state: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.state''',
                                          ).toString(),
                                          country: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.country''',
                                          ).toString(),
                                          zipcode: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.zipcode''',
                                          ).toString(),
                                          plotNo: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.plotNo''',
                                          ).toString(),
                                          taxPercent: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.taxPercent''',
                                          ),
                                          bedsCount: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.beds''',
                                          ),
                                          bathroomCount: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.totalWashrooms''',
                                          ),
                                          tripsTab: 'upcoming',
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        if (widget.count == 0)
          Flexible(
            child: Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 1.0,
              decoration: BoxDecoration(
                color: Color(0xFFF2F2F2),
              ),
              child: wrapWithModel(
                model: _model.newTripsErrorCompModel,
                updateCallback: () => setState(() {}),
                child: NewTripsErrorCompWidget(
                  propertyStatus: widget.bookingStatus!,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
