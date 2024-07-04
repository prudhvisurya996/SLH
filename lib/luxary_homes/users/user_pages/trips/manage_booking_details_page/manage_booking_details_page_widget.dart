import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_login_component/phone_login_component_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import '/luxary_homes/users/user_pages/reviews_ratings/feed_back_comp/feed_back_comp_widget.dart';
import '/luxary_homes/users/user_pages/trips/cancellation_trips/reason_for_cancellation_comp/reason_for_cancellation_comp_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'manage_booking_details_page_model.dart';
export 'manage_booking_details_page_model.dart';

class ManageBookingDetailsPageWidget extends StatefulWidget {
  const ManageBookingDetailsPageWidget({super.key});

  @override
  State<ManageBookingDetailsPageWidget> createState() =>
      _ManageBookingDetailsPageWidgetState();
}

class _ManageBookingDetailsPageWidgetState
    extends State<ManageBookingDetailsPageWidget> {
  late ManageBookingDetailsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ManageBookingDetailsPageModel());

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
          child: FutureBuilder<ApiCallResponse>(
            future: MicroserviceBookingAPIsGroup.viewBookingDetailsCall.call(
              bookingId: FFAppState().ManageBookingDetails.bookingId,
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
              final columnViewBookingDetailsResponse = snapshot.data!;
              return Column(
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
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Color(0x4CBBD1EA),
                                borderRadius: BorderRadius.circular(14.0),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 20.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 36.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          icon: Icon(
                                            Icons.arrow_back_ios_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 18.0,
                                          ),
                                          onPressed: () async {
                                            context.safePop();
                                          },
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  18.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            FFAppState().tripsStatus.upComing ==
                                                    true
                                                ? 'View and Manage Booking'
                                                : 'View',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 16.0, 12.0, 16.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 16.0, 20.0, 16.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                20.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      5.0),
                                                          child: Text(
                                                            getJsonField(
                                                              columnViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.title''',
                                                            ).toString(),
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 14.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          getJsonField(
                                                            columnViewBookingDetailsResponse
                                                                .jsonBody,
                                                            r'''$.fullAddress''',
                                                          ).toString(),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 10.0,
                                                          ),
                                                        ),
                                                        if (FFAppState()
                                                                .tripsStatus
                                                                .cancelled ==
                                                            true)
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
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Cancelled Date :',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  '17th Dec 2023',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        Text(
                                                          'Contact Owner',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 14.0,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: CachedNetworkImage(
                                                    fadeInDuration: Duration(
                                                        milliseconds: 500),
                                                    fadeOutDuration: Duration(
                                                        milliseconds: 500),
                                                    imageUrl:
                                                        functions.getImage(
                                                            FFAppState()
                                                                .BaseUrl,
                                                            functions.imgToStrConv(
                                                                functions
                                                                    .listDataConversion(
                                                                        getJsonField(
                                                                      columnViewBookingDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.propertyImages''',
                                                                    ).toString())
                                                                    ?.first))!,
                                                    width: 80.0,
                                                    height: 80.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 12.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/user_profile_icon.svg',
                                                                width: 22.0,
                                                                height: 22.0,
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
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  columnViewBookingDetailsResponse
                                                                      .jsonBody,
                                                                  r'''$.ownerUserName''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFF878787),
                                                                      fontSize:
                                                                          12.0,
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
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Icon(
                                                              Icons.phone,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              size: 17.0,
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
                                                                  columnViewBookingDetailsResponse
                                                                      .jsonBody,
                                                                  r'''$.ownerPhoneNumber''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
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
                                            Divider(
                                              thickness: 1.0,
                                              color: Color(0xFFBBD1EA),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 8.0, 12.0, 12.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  if ((FFAppState()
                                                              .tripsStatus
                                                              .upComing ==
                                                          true) ||
                                                      (FFAppState()
                                                              .tripsStatus
                                                              .cancelled ==
                                                          true))
                                                    Column(
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
                                                          'Check-In',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Text(
                                                            dateTimeFormat(
                                                                'dd MMM yyyy',
                                                                functions
                                                                    .strToDateTimeConversion(
                                                                        getJsonField(
                                                                  columnViewBookingDetailsResponse
                                                                      .jsonBody,
                                                                  r'''$.checkInDate''',
                                                                ).toString())),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            FaIcon(
                                                              FontAwesomeIcons
                                                                  .clock,
                                                              color: Color(
                                                                  0xFF5642ED),
                                                              size: 16.0,
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
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  if ((FFAppState()
                                                              .tripsStatus
                                                              .upComing ==
                                                          true) ||
                                                      (FFAppState()
                                                              .tripsStatus
                                                              .cancelled ==
                                                          true))
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Check-Out',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: Text(
                                                            dateTimeFormat(
                                                                'dd MMM yyyy',
                                                                functions
                                                                    .strToDateTimeConversion(
                                                                        getJsonField(
                                                                  columnViewBookingDetailsResponse
                                                                      .jsonBody,
                                                                  r'''$.checkOutDate''',
                                                                ).toString())),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            FaIcon(
                                                              FontAwesomeIcons
                                                                  .clock,
                                                              color: Color(
                                                                  0xFF5642ED),
                                                              size: 16.0,
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
                                                                '11:00 AM',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                ],
                                              ),
                                            ),
                                            if ((FFAppState()
                                                        .ManageBookingDetails
                                                        .modifiable ==
                                                    true) &&
                                                functions
                                                    .isModifyBookingAllowed(
                                                        getJsonField(
                                                  columnViewBookingDetailsResponse
                                                      .jsonBody,
                                                  r'''$.checkInDate''',
                                                ).toString())! &&
                                                (FFAppState()
                                                        .tripsStatus
                                                        .cancelled !=
                                                    true))
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 6.0, 0.0, 0.0),
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
                                                      var _shouldSetState =
                                                          false;
                                                      _model.propertyDetailsAPIRespo =
                                                          await MicroserviceAvailabilityAPIsGroup
                                                              .propertyDetailsCall
                                                              .call(
                                                        articleID: getJsonField(
                                                          columnViewBookingDetailsResponse
                                                              .jsonBody,
                                                          r'''$.articleId''',
                                                        ).toString(),
                                                        bookingId: getJsonField(
                                                          columnViewBookingDetailsResponse
                                                              .jsonBody,
                                                          r'''$.bookingId''',
                                                        ).toString(),
                                                      );
                                                      _shouldSetState = true;
                                                      if ((_model
                                                              .propertyDetailsAPIRespo
                                                              ?.succeeded ??
                                                          true)) {
                                                        setState(() {
                                                          FFAppState()
                                                                  .ModifyBookingPage =
                                                              ModifyBookingPageStruct(
                                                            title: getJsonField(
                                                              columnViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.title''',
                                                            ).toString(),
                                                            locality:
                                                                getJsonField(
                                                              columnViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.locality''',
                                                            ).toString(),
                                                            city: getJsonField(
                                                              columnViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.city''',
                                                            ).toString(),
                                                            guestCount:
                                                                getJsonField(
                                                              columnViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.totalGuests''',
                                                            ),
                                                            totalAmount:
                                                                getJsonField(
                                                              columnViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.amountPaid''',
                                                            ),
                                                            basePrice:
                                                                getJsonField(
                                                              columnViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.basePrice''',
                                                            ),
                                                            taxPaid:
                                                                getJsonField(
                                                              columnViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.taxPaid''',
                                                            ),
                                                            checkInDate:
                                                                getJsonField(
                                                              columnViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.checkInDate''',
                                                            ).toString(),
                                                            checkOutDate:
                                                                getJsonField(
                                                              columnViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.checkOutDate''',
                                                            ).toString(),
                                                            articleId:
                                                                getJsonField(
                                                              columnViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.articleId''',
                                                            ).toString(),
                                                            propBookedDates:
                                                                getJsonField(
                                                              (_model.propertyDetailsAPIRespo
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.bookedDates''',
                                                            ).toString(),
                                                            propType:
                                                                getJsonField(
                                                              (_model.propertyDetailsAPIRespo
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.propertyType''',
                                                            ).toString(),
                                                            propAvailableFrom:
                                                                getJsonField(
                                                              (_model.propertyDetailsAPIRespo
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.availableFrom''',
                                                            ).toString(),
                                                            propertyId:
                                                                getJsonField(
                                                              columnViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.propertyId''',
                                                            ),
                                                            bookingId:
                                                                getJsonField(
                                                              columnViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.bookingId''',
                                                            ).toString(),
                                                          );
                                                          FFAppState().rangeOfSelectedDates = functions
                                                              .strTolstDateConversion(
                                                                  functions.strToDateTimeConversion(
                                                                      FFAppState()
                                                                          .ModifyBookingPage
                                                                          .checkInDate),
                                                                  functions.strToDateTimeConversion(
                                                                      FFAppState()
                                                                          .ModifyBookingPage
                                                                          .checkOutDate))!
                                                              .toList()
                                                              .cast<DateTime>();
                                                        });

                                                        context.pushNamed(
                                                          'ModifyBookingPage',
                                                          extra: <String,
                                                              dynamic>{
                                                            kTransitionInfoKey:
                                                                TransitionInfo(
                                                              hasTransition:
                                                                  true,
                                                              transitionType:
                                                                  PageTransitionType
                                                                      .fade,
                                                              duration: Duration(
                                                                  milliseconds:
                                                                      0),
                                                            ),
                                                          },
                                                        );

                                                        if (_shouldSetState)
                                                          setState(() {});
                                                        return;
                                                      } else {
                                                        if (_shouldSetState)
                                                          setState(() {});
                                                        return;
                                                      }

                                                      if (_shouldSetState)
                                                        setState(() {});
                                                    },
                                                    child: Text(
                                                      'Modify Booking Dates',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14.0,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 16.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(14.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Booking ID: ',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 12.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: getJsonField(
                                                        columnViewBookingDetailsResponse
                                                            .jsonBody,
                                                        r'''$.bookingRefId''',
                                                      ).toString(),
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14.0,
                                                      ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                textAlign: TextAlign.center,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.stretch,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 16.0,
                                                                0.0, 8.0),
                                                    child: Text(
                                                      'Booking Details',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'No. of rooms',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                      ),
                                                      Expanded(
                                                        child: Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Text(
                                                            getJsonField(
                                                              columnViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.totalBedRooms''',
                                                            ).toString(),
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
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 6.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Text(
                                                          'No. of guests',
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
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Text(
                                                              getJsonField(
                                                                columnViewBookingDetailsResponse
                                                                    .jsonBody,
                                                                r'''$.totalGuests''',
                                                              ).toString(),
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
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 18.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Property booked by',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 6.0,
                                                                0.0, 6.0),
                                                    child: Text(
                                                      '${FFAppState().userData.firstName} ${FFAppState().userData.lastName}',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  Text(
                                                    FFAppState()
                                                        .userData
                                                        .emailAddress,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 18.0,
                                                                0.0, 12.0),
                                                    child: Text(
                                                      'Property amenities',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                0.0, 16.0),
                                                    child: Builder(
                                                      builder: (context) {
                                                        final amenitiesList =
                                                            functions
                                                                    .getAmenitieNames(
                                                                        getJsonField(
                                                                      columnViewBookingDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.amenities''',
                                                                    ).toString())
                                                                    ?.toList() ??
                                                                [];
                                                        return Wrap(
                                                          spacing: 20.0,
                                                          runSpacing: 10.0,
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
                                                          children: List.generate(
                                                              amenitiesList
                                                                  .length,
                                                              (amenitiesListIndex) {
                                                            final amenitiesListItem =
                                                                amenitiesList[
                                                                    amenitiesListIndex];
                                                            return Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Container(
                                                                  width: 3.0,
                                                                  height: 3.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Colors
                                                                        .black,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    amenitiesListItem,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            );
                                                          }),
                                                        );
                                                      },
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
                                ],
                              ),
                            ),
                            if ((FFAppState().tripsStatus.completed == true) ||
                                (FFAppState().tripsStatus.upComing == true))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        32.0, 16.0, 32.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, 0.0),
                                          child: Text(
                                            'Fare Details',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: functions
                                                          .daysCalculation(functions
                                                              .fromToDateConversion(
                                                                  getJsonField(
                                                                    columnViewBookingDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.checkInDate''',
                                                                  ).toString(),
                                                                  getJsonField(
                                                                    columnViewBookingDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.checkOutDate''',
                                                                  ).toString())
                                                              ?.toList())
                                                          .toString(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: ' nights',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: ' x ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: '₹',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: getJsonField(
                                                        columnViewBookingDetailsResponse
                                                            .jsonBody,
                                                        r'''$.basePrice''',
                                                      ).toString(),
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
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
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '₹',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: formatNumber(
                                                        functions.getPrice(
                                                            functions.daysCalculation(functions
                                                                .fromToDateConversion(
                                                                    getJsonField(
                                                                      columnViewBookingDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.checkInDate''',
                                                                    ).toString(),
                                                                    getJsonField(
                                                                      columnViewBookingDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.checkOutDate''',
                                                                    ).toString())
                                                                ?.toList()),
                                                            getJsonField(
                                                              columnViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.basePrice''',
                                                            )),
                                                        formatType:
                                                            FormatType.custom,
                                                        format: '0.00',
                                                        locale: '',
                                                      ),
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16.0,
                                                      ),
                                                    )
                                                  ],
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 16.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: 'Taxes',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: ' (Inc all taxes)',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 8.0,
                                                      ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '₹',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: getJsonField(
                                                        columnViewBookingDetailsResponse
                                                            .jsonBody,
                                                        r'''$.taxPaid''',
                                                      ).toString(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    )
                                                  ],
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        StyledDivider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          lineStyle: DividerLineStyle.dashed,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                'Total: ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '₹',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            Color(0xFFD70000),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: getJsonField(
                                                        columnViewBookingDetailsResponse
                                                            .jsonBody,
                                                        r'''$.amountPaid''',
                                                      ).toString(),
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            Color(0xFFD70000),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14.0,
                                                      ),
                                                    )
                                                  ],
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16.0,
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
                            if (FFAppState().tripsStatus.upComing == true)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Color(0x4CBBD1EA),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        32.0, 16.0, 32.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: '*',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: Color(0xFFD70000),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14.0,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text:
                                                        'Important information for check-in',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: Colors.black,
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
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 6.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 3.0,
                                                height: 3.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Passport, Aadhaar & Govt Id are accepted as ID Proofs.',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: Colors.black,
                                                      fontSize: 12.0,
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
                                                  0.0, 0.0, 0.0, 16.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: 3.0,
                                                height: 3.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Expanded(
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Local Id proofs are Not allowed.',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: Colors.black,
                                                      fontSize: 12.0,
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
                              ),
                            if (FFAppState().tripsStatus.upComing == true)
                              Container(
                                decoration: BoxDecoration(
                                  color: Color(0x4CBBD1EA),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      32.0, 16.0, 32.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 10.0),
                                        child: Text(
                                          'Cancellation',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 16.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: 3.0,
                                                height: 3.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Before ${dateTimeFormat('dd MMM yyyy', functions.beforeCheckInDate(getJsonField(
                                                            columnViewBookingDetailsResponse
                                                                .jsonBody,
                                                            r'''$.checkInDate''',
                                                          ).toString()))},',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            Color(0xFF80BB01),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '11:59 AM',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            Color(0xFF80BB01),
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                                    'Full refundable',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: Color(0xFF80BB01),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Full Refundable (You will get 100% Refund).',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
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
                                            0.0, 0.0, 0.0, 16.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Container(
                                                width: 3.0,
                                                height: 3.0,
                                                decoration: BoxDecoration(
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'After ${dateTimeFormat('dd MMM yyyy', functions.beforeCheckInDate(getJsonField(
                                                            columnViewBookingDetailsResponse
                                                                .jsonBody,
                                                            r'''$.checkInDate''',
                                                          ).toString()))},',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            Color(0xFFD70000),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '12:00 PM',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            Color(0xFFD70000),
                                                        fontWeight:
                                                            FontWeight.bold,
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
                                                    'Cancellation not possible ',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: Color(0xFFD70000),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 14.0,
                                                    ),
                                                  ),
                                                  Text(
                                                    'Non cancellable, no Refunding.',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
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
                            if (FFAppState().tripsStatus.cancelled == true)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 20.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        32.0, 16.0, 32.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 10.0),
                                          child: Text(
                                            'Refund Status',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 3.0,
                                              height: 3.0,
                                              decoration: BoxDecoration(
                                                color: Colors.black,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                getJsonField(
                                                  columnViewBookingDetailsResponse
                                                      .jsonBody,
                                                  r'''$.refundStatus''',
                                                ).toString(),
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Color(0xFFEB5435),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 10.0),
                                          child: Text(
                                            'Refund',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: SvgPicture.asset(
                                                    'assets/images/Refund_Icon.svg',
                                                    width: 15.0,
                                                    height: 15.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Refund Amount: ',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: Colors.black,
                                                      fontSize: 14.0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      14.0, 0.0, 0.0, 0.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '₹',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            Color(0xFFD70000),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: getJsonField(
                                                        columnViewBookingDetailsResponse
                                                            .jsonBody,
                                                        r'''$.refundAmount''',
                                                      ).toString(),
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            Color(0xFFD70000),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14.0,
                                                      ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 10.0),
                                          child: Text(
                                            'Reason for Cancellation',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w600,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 3.0,
                                                    height: 3.0,
                                                    decoration: BoxDecoration(
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      getJsonField(
                                                        columnViewBookingDetailsResponse
                                                            .jsonBody,
                                                        r'''$.cancelledReason''',
                                                      ).toString(),
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        fontSize: 12.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
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
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    Expanded(
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 20.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 48.0,
                                    decoration: BoxDecoration(),
                                  ),
                                  Flexible(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 20.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              FlutterFlowIconButton(
                                                borderColor: Colors.transparent,
                                                borderRadius: 20.0,
                                                borderWidth: 1.0,
                                                buttonSize: 36.0,
                                                fillColor: Color(0x4CBBD1EA),
                                                icon: Icon(
                                                  Icons.arrow_back_ios_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 18.0,
                                                ),
                                                onPressed: () async {
                                                  context.safePop();
                                                },
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        32.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  FFAppState()
                                                              .tripsStatus
                                                              .upComing ==
                                                          true
                                                      ? 'View and Manage Booking'
                                                      : 'View',
                                                  style: GoogleFonts.getFont(
                                                    'Work Sans',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 24.0),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0x4CBBD1EA),
                                              borderRadius:
                                                  BorderRadius.circular(14.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 24.0,
                                                                0.0, 12.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    16.0,
                                                                    16.0,
                                                                    16.0,
                                                                    16.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Text(
                                                                        getJsonField(
                                                                          columnViewBookingDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.title''',
                                                                        ).toString(),
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontSize:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          30.0),
                                                                      child:
                                                                          Text(
                                                                        getJsonField(
                                                                          columnViewBookingDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.fullAddress''',
                                                                        ).toString(),
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              14.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (FFAppState()
                                                                            .tripsStatus
                                                                            .cancelled ==
                                                                        true)
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            10.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.end,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                              child: Text(
                                                                                'Cancelled Date :',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Poppins',
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              getJsonField(
                                                                                columnViewBookingDetailsResponse.jsonBody,
                                                                                r'''$.cancelledDate''',
                                                                              ).toString(),
                                                                              style: GoogleFonts.getFont(
                                                                                'Poppins',
                                                                                fontWeight: FontWeight.w600,
                                                                                fontSize: 14.0,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          10.0),
                                                                      child:
                                                                          Text(
                                                                        'Contact Owner',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              14.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: SvgPicture.asset(
                                                                                'assets/images/user_profile_icon.svg',
                                                                                width: 22.0,
                                                                                height: 22.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                getJsonField(
                                                                                  columnViewBookingDetailsResponse.jsonBody,
                                                                                  r'''$.ownerUserName''',
                                                                                ).toString(),
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: Color(0xFF878787),
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w600,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              30.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.phone_rounded,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 17.0,
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  getJsonField(
                                                                                    columnViewBookingDetailsResponse.jsonBody,
                                                                                    r'''$.ownerPhoneNumber''',
                                                                                  ).toString(),
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        fontSize: 12.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.normal,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
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
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 413.0,
                                                                height: 155.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0x4CBBD1EA),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              14.0),
                                                                ),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          8.0,
                                                                          12.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceEvenly,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 15.0, 0.0),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: SvgPicture.asset(
                                                                                  'assets/images/Vector_(1).svg',
                                                                                  width: 20.0,
                                                                                  height: 20.0,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 100.0,
                                                                              child: VerticalDivider(
                                                                                thickness: 1.0,
                                                                                indent: 10.0,
                                                                                endIndent: 10.0,
                                                                                color: Color(0xFFBBD1EA),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                                                children: [
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Check-In',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                        child: Text(
                                                                                          dateTimeFormat(
                                                                                              'dd MMM yyyy',
                                                                                              functions.strToDateTimeConversion(getJsonField(
                                                                                                columnViewBookingDetailsResponse.jsonBody,
                                                                                                r'''$.checkInDate''',
                                                                                              ).toString())),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Poppins',
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w500,
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
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    fontSize: 14.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                  Column(
                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Check-Out',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                                                                                        child: Text(
                                                                                          dateTimeFormat(
                                                                                              'dd MMM yyyy',
                                                                                              functions.strToDateTimeConversion(getJsonField(
                                                                                                columnViewBookingDetailsResponse.jsonBody,
                                                                                                r'''$.checkOutDate''',
                                                                                              ).toString())),
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Poppins',
                                                                                                fontSize: 16.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w500,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                      Row(
                                                                                        mainAxisSize: MainAxisSize.min,
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
                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    fontSize: 14.0,
                                                                                                    letterSpacing: 0.0,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                  ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      if ((FFAppState().ManageBookingDetails.modifiable ==
                                                                              true) &&
                                                                          functions
                                                                              .isModifyBookingAllowed(getJsonField(
                                                                            columnViewBookingDetailsResponse.jsonBody,
                                                                            r'''$.checkInDate''',
                                                                          ).toString())! &&
                                                                          (FFAppState().tripsStatus.cancelled != true))
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              0.0,
                                                                              5.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              var _shouldSetState = false;
                                                                              _model.propertyDetailsAPIResponseWeb = await MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.call(
                                                                                articleID: getJsonField(
                                                                                  columnViewBookingDetailsResponse.jsonBody,
                                                                                  r'''$.articleId''',
                                                                                ).toString(),
                                                                                bookingId: getJsonField(
                                                                                  columnViewBookingDetailsResponse.jsonBody,
                                                                                  r'''$.bookingId''',
                                                                                ).toString(),
                                                                              );
                                                                              _shouldSetState = true;
                                                                              if ((_model.propertyDetailsAPIResponseWeb?.succeeded ?? true)) {
                                                                                setState(() {
                                                                                  FFAppState().ModifyBookingPage = ModifyBookingPageStruct(
                                                                                    title: getJsonField(
                                                                                      columnViewBookingDetailsResponse.jsonBody,
                                                                                      r'''$.title''',
                                                                                    ).toString(),
                                                                                    locality: getJsonField(
                                                                                      columnViewBookingDetailsResponse.jsonBody,
                                                                                      r'''$.locality''',
                                                                                    ).toString(),
                                                                                    city: getJsonField(
                                                                                      columnViewBookingDetailsResponse.jsonBody,
                                                                                      r'''$.city''',
                                                                                    ).toString(),
                                                                                    guestCount: getJsonField(
                                                                                      columnViewBookingDetailsResponse.jsonBody,
                                                                                      r'''$.totalGuests''',
                                                                                    ),
                                                                                    totalAmount: getJsonField(
                                                                                      columnViewBookingDetailsResponse.jsonBody,
                                                                                      r'''$.amountPaid''',
                                                                                    ),
                                                                                    basePrice: getJsonField(
                                                                                      columnViewBookingDetailsResponse.jsonBody,
                                                                                      r'''$.basePrice''',
                                                                                    ),
                                                                                    taxPaid: getJsonField(
                                                                                      columnViewBookingDetailsResponse.jsonBody,
                                                                                      r'''$.taxPaid''',
                                                                                    ),
                                                                                    checkInDate: getJsonField(
                                                                                      columnViewBookingDetailsResponse.jsonBody,
                                                                                      r'''$.checkInDate''',
                                                                                    ).toString(),
                                                                                    checkOutDate: getJsonField(
                                                                                      columnViewBookingDetailsResponse.jsonBody,
                                                                                      r'''$.checkOutDate''',
                                                                                    ).toString(),
                                                                                    articleId: getJsonField(
                                                                                      columnViewBookingDetailsResponse.jsonBody,
                                                                                      r'''$.articleId''',
                                                                                    ).toString(),
                                                                                    propBookedDates: getJsonField(
                                                                                      (_model.propertyDetailsAPIResponseWeb?.jsonBody ?? ''),
                                                                                      r'''$.bookedDates''',
                                                                                    ).toString(),
                                                                                    propType: getJsonField(
                                                                                      (_model.propertyDetailsAPIResponseWeb?.jsonBody ?? ''),
                                                                                      r'''$.propertyType''',
                                                                                    ).toString(),
                                                                                    propAvailableFrom: getJsonField(
                                                                                      (_model.propertyDetailsAPIResponseWeb?.jsonBody ?? ''),
                                                                                      r'''$.availableFrom''',
                                                                                    ).toString(),
                                                                                    propertyId: getJsonField(
                                                                                      columnViewBookingDetailsResponse.jsonBody,
                                                                                      r'''$.propertyId''',
                                                                                    ),
                                                                                    bookingId: getJsonField(
                                                                                      columnViewBookingDetailsResponse.jsonBody,
                                                                                      r'''$.bookingId''',
                                                                                    ).toString(),
                                                                                  );
                                                                                  FFAppState().rangeOfSelectedDates = functions.strTolstDateConversion(functions.strToDateTimeConversion(FFAppState().ModifyBookingPage.checkInDate), functions.strToDateTimeConversion(FFAppState().ModifyBookingPage.checkOutDate))!.toList().cast<DateTime>();
                                                                                });

                                                                                context.pushNamed(
                                                                                  'ModifyBookingDetailsPage',
                                                                                  extra: <String, dynamic>{
                                                                                    kTransitionInfoKey: TransitionInfo(
                                                                                      hasTransition: true,
                                                                                      transitionType: PageTransitionType.fade,
                                                                                      duration: Duration(milliseconds: 0),
                                                                                    ),
                                                                                  },
                                                                                );

                                                                                if (_shouldSetState) setState(() {});
                                                                                return;
                                                                              } else {
                                                                                if (_shouldSetState) setState(() {});
                                                                                return;
                                                                              }

                                                                              if (_shouldSetState)
                                                                                setState(() {});
                                                                            },
                                                                            child:
                                                                                Text(
                                                                              'Modify Booking Dates',
                                                                              style: GoogleFonts.getFont(
                                                                                'Poppins',
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 16.0,
                                                                                decoration: TextDecoration.underline,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                              child:
                                                                  CachedNetworkImage(
                                                                fadeInDuration:
                                                                    Duration(
                                                                        milliseconds:
                                                                            500),
                                                                fadeOutDuration:
                                                                    Duration(
                                                                        milliseconds:
                                                                            500),
                                                                imageUrl: functions.getImage(
                                                                    FFAppState().BaseUrl,
                                                                    functions.imgToStrConv(functions
                                                                        .listDataConversion(getJsonField(
                                                                          columnViewBookingDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.propertyImages''',
                                                                        ).toString())
                                                                        ?.first))!,
                                                                width: 385.0,
                                                                height: 154.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Divider(
                                                    thickness: 1.0,
                                                    color: Color(0xFFBBD1EA),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                                0.0, 24.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        20.0,
                                                                        16.0,
                                                                        24.0),
                                                            child: Row(
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
                                                                  child: Row(
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
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                child: Text(
                                                                                  'Booking Details',
                                                                                  textAlign: TextAlign.center,
                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        fontSize: 16.0,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    'No. of rooms',
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Poppins',
                                                                                      color: Colors.black,
                                                                                      fontSize: 16.0,
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    getJsonField(
                                                                                      columnViewBookingDetailsResponse.jsonBody,
                                                                                      r'''$.totalBedRooms''',
                                                                                    ).toString(),
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Poppins',
                                                                                      color: Colors.black,
                                                                                      fontSize: 16.0,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Text(
                                                                                  'No. of guests',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Poppins',
                                                                                    color: Colors.black,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  getJsonField(
                                                                                    columnViewBookingDetailsResponse.jsonBody,
                                                                                    r'''$.totalGuests''',
                                                                                  ).toString(),
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Poppins',
                                                                                    color: Colors.black,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Flexible(
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                              child: Text(
                                                                                'Property booked by',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Poppins',
                                                                                  fontWeight: FontWeight.w600,
                                                                                  fontSize: 16.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                              child: Text(
                                                                                '${FFAppState().userData.firstName} ${FFAppState().userData.lastName}',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Poppins',
                                                                                  color: Colors.black,
                                                                                  fontSize: 16.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Text(
                                                                              FFAppState().userData.emailAddress,
                                                                              style: GoogleFonts.getFont(
                                                                                'Poppins',
                                                                                color: Colors.black,
                                                                                fontSize: 16.0,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Text(
                                                                        'Booking ID: ',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                      Text(
                                                                        getJsonField(
                                                                          columnViewBookingDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.bookingRefId''',
                                                                        ).toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              fontSize: 18.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
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
                                                                        16.0,
                                                                        0.0,
                                                                        16.0,
                                                                        12.0),
                                                            child: Row(
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
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'Property amenities',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            16.0,
                                                                            0.0,
                                                                            16.0),
                                                                        child:
                                                                            Builder(
                                                                          builder:
                                                                              (context) {
                                                                            final amenities = functions
                                                                                    .getAmenitieNames(getJsonField(
                                                                                      columnViewBookingDetailsResponse.jsonBody,
                                                                                      r'''$.amenities''',
                                                                                    ).toString())
                                                                                    ?.toList() ??
                                                                                [];
                                                                            return Wrap(
                                                                              spacing: 20.0,
                                                                              runSpacing: 10.0,
                                                                              alignment: WrapAlignment.start,
                                                                              crossAxisAlignment: WrapCrossAlignment.start,
                                                                              direction: Axis.horizontal,
                                                                              runAlignment: WrapAlignment.start,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.none,
                                                                              children: List.generate(amenities.length, (amenitiesIndex) {
                                                                                final amenitiesItem = amenities[amenitiesIndex];
                                                                                return Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 3.0,
                                                                                      height: 3.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: Colors.black,
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                      child: Text(
                                                                                        amenitiesItem,
                                                                                        style: GoogleFonts.getFont(
                                                                                          'Poppins',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontSize: 16.0,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                );
                                                                              }),
                                                                            );
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Flexible(
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          150.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.center,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, -1.0),
                                                                            child:
                                                                                Text(
                                                                              'Fare Details',
                                                                              style: GoogleFonts.getFont(
                                                                                'Poppins',
                                                                                color: Colors.black,
                                                                                fontWeight: FontWeight.normal,
                                                                                fontSize: 18.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Divider(
                                                                            height:
                                                                                1.0,
                                                                            thickness:
                                                                                1.0,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                16.0,
                                                                                0.0,
                                                                                10.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                RichText(
                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                  text: TextSpan(
                                                                                    children: [
                                                                                      TextSpan(
                                                                                        text: functions
                                                                                            .daysCalculation(functions
                                                                                                .fromToDateConversion(
                                                                                                    getJsonField(
                                                                                                      columnViewBookingDetailsResponse.jsonBody,
                                                                                                      r'''$.checkInDate''',
                                                                                                    ).toString(),
                                                                                                    getJsonField(
                                                                                                      columnViewBookingDetailsResponse.jsonBody,
                                                                                                      r'''$.checkOutDate''',
                                                                                                    ).toString())
                                                                                                ?.toList())
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              fontSize: 16.0,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                      TextSpan(
                                                                                        text: ' nights',
                                                                                        style: GoogleFonts.getFont(
                                                                                          'Poppins',
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontSize: 16.0,
                                                                                        ),
                                                                                      ),
                                                                                      TextSpan(
                                                                                        text: ' x ',
                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                      TextSpan(
                                                                                        text: '₹',
                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                      TextSpan(
                                                                                        text: getJsonField(
                                                                                          columnViewBookingDetailsResponse.jsonBody,
                                                                                          r'''$.basePrice''',
                                                                                        ).toString(),
                                                                                        style: GoogleFonts.getFont(
                                                                                          'Poppins',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontSize: 14.0,
                                                                                        ),
                                                                                      )
                                                                                    ],
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                RichText(
                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                  text: TextSpan(
                                                                                    children: [
                                                                                      TextSpan(
                                                                                        text: '₹',
                                                                                        style: GoogleFonts.getFont(
                                                                                          'Poppins',
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                      ),
                                                                                      TextSpan(
                                                                                        text: formatNumber(
                                                                                          functions.getPrice(
                                                                                              functions.daysCalculation(functions
                                                                                                  .fromToDateConversion(
                                                                                                      getJsonField(
                                                                                                        columnViewBookingDetailsResponse.jsonBody,
                                                                                                        r'''$.checkInDate''',
                                                                                                      ).toString(),
                                                                                                      getJsonField(
                                                                                                        columnViewBookingDetailsResponse.jsonBody,
                                                                                                        r'''$.checkOutDate''',
                                                                                                      ).toString())
                                                                                                  ?.toList()),
                                                                                              getJsonField(
                                                                                                columnViewBookingDetailsResponse.jsonBody,
                                                                                                r'''$.basePrice''',
                                                                                              )),
                                                                                          formatType: FormatType.custom,
                                                                                          format: '0.00',
                                                                                          locale: '',
                                                                                        ),
                                                                                        style: GoogleFonts.getFont(
                                                                                          'Poppins',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontSize: 16.0,
                                                                                        ),
                                                                                      )
                                                                                    ],
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Poppins',
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontSize: 16.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                10.0,
                                                                                0.0,
                                                                                16.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                RichText(
                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                  text: TextSpan(
                                                                                    children: [
                                                                                      TextSpan(
                                                                                        text: 'Taxes',
                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                      TextSpan(
                                                                                        text: ' (Inc all taxes)',
                                                                                        style: GoogleFonts.getFont(
                                                                                          'Poppins',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontSize: 8.0,
                                                                                        ),
                                                                                      )
                                                                                    ],
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                                RichText(
                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                  text: TextSpan(
                                                                                    children: [
                                                                                      TextSpan(
                                                                                        text: '₹',
                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      ),
                                                                                      TextSpan(
                                                                                        text: getJsonField(
                                                                                          columnViewBookingDetailsResponse.jsonBody,
                                                                                          r'''$.taxPaid''',
                                                                                        ).toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.w500,
                                                                                            ),
                                                                                      )
                                                                                    ],
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Poppins',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontSize: 16.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          StyledDivider(
                                                                            height:
                                                                                1.0,
                                                                            thickness:
                                                                                1.0,
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            lineStyle:
                                                                                DividerLineStyle.dashed,
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                10.0,
                                                                                0.0,
                                                                                10.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              children: [
                                                                                Text(
                                                                                  'Total: ',
                                                                                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                                RichText(
                                                                                  textScaler: MediaQuery.of(context).textScaler,
                                                                                  text: TextSpan(
                                                                                    children: [
                                                                                      TextSpan(
                                                                                        text: '₹',
                                                                                        style: GoogleFonts.getFont(
                                                                                          'Poppins',
                                                                                          color: Color(0xFFD70000),
                                                                                          fontWeight: FontWeight.w600,
                                                                                          fontSize: 14.0,
                                                                                        ),
                                                                                      ),
                                                                                      TextSpan(
                                                                                        text: getJsonField(
                                                                                          columnViewBookingDetailsResponse.jsonBody,
                                                                                          r'''$.amountPaid''',
                                                                                        ).toString(),
                                                                                        style: GoogleFonts.getFont(
                                                                                          'Poppins',
                                                                                          color: Color(0xFFD70000),
                                                                                          fontWeight: FontWeight.w600,
                                                                                          fontSize: 14.0,
                                                                                        ),
                                                                                      )
                                                                                    ],
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Poppins',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontWeight: FontWeight.w600,
                                                                                      fontSize: 16.0,
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
                                          ),
                                        ),
                                        if (FFAppState().tripsStatus.upComing ==
                                            true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 16.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0x4CBBD1EA),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        32.0, 16.0, 32.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: '*',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: Color(
                                                                      0xFFD70000),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'Important information for check-in',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
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
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  10.0,
                                                                  0.0,
                                                                  6.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 4.0,
                                                            height: 4.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Passport, Aadhaar & Govt Id are accepted as ID Proofs.',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      16.0,
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
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width: 3.0,
                                                            height: 3.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Local Id proofs are Not allowed.',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize:
                                                                      16.0,
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
                                          ),
                                        if (FFAppState().tripsStatus.upComing ==
                                            true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 24.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Color(0x4CBBD1EA),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        32.0, 16.0, 32.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .stretch,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: Text(
                                                        'Cancellation',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 18.0,
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
                                                                  16.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 3.0,
                                                              height: 3.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Before ${dateTimeFormat('dd MMM yyyy', functions.beforeCheckInDate(getJsonField(
                                                                      columnViewBookingDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.checkInDate''',
                                                                    ).toString()))}, 11:59 AM',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: Color(
                                                                      0xFF80BB01),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Full refundable',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: Color(
                                                                        0xFF80BB01),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Full Refundable (You will get 100% Refund).',
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
                                                                  0.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              width: 3.0,
                                                              height: 3.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'After ${dateTimeFormat('dd MMM yyyy', functions.beforeCheckInDate(getJsonField(
                                                                      columnViewBookingDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.checkInDate''',
                                                                    ).toString()))}, 12:00 PM',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: Color(
                                                                      0xFFD70000),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Cancellation not possible ',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: Color(
                                                                        0xFFD70000),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Non cancellable, no Refunding.',
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
                                        if (FFAppState()
                                                .tripsStatus
                                                .cancelled ==
                                            true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 24.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(32.0, 24.0, 0.0,
                                                          10.0),
                                                  child: Text(
                                                    'Refund Amount:',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          32.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/Refund_Icon.svg',
                                                              width: 15.0,
                                                              height: 15.0,
                                                              fit: BoxFit.cover,
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
                                                              'Refund Amount: ',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 16.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    14.0,
                                                                    0.0,
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
                                                                text: '₹',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: Color(
                                                                      0xFFD70000),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    getJsonField(
                                                                  columnViewBookingDetailsResponse
                                                                      .jsonBody,
                                                                  r'''$.refundAmount''',
                                                                ).toString(),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: Color(
                                                                      0xFFD70000),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(32.0, 24.0, 0.0,
                                                          10.0),
                                                  child: Text(
                                                    'Refund Status',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18.0,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          32.0, 0.0, 0.0, 16.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Container(
                                                        width: 3.0,
                                                        height: 3.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
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
                                                            columnViewBookingDetailsResponse
                                                                .jsonBody,
                                                            r'''$.refundStatus''',
                                                          ).toString(),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: Color(
                                                                0xFFEB5435),
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    color: Color(0x4DBBD1EA),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                32.0,
                                                                24.0,
                                                                32.0,
                                                                24.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
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
                                                            'Reason for Cancellation',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    width: 3.0,
                                                                    height: 3.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      getJsonField(
                                                                        columnViewBookingDetailsResponse
                                                                            .jsonBody,
                                                                        r'''$.cancelledReason''',
                                                                      ).toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
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
                                        if (FFAppState()
                                                .tripsStatus
                                                .cancelled !=
                                            true)
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              if ((FFAppState()
                                                          .tripsStatus
                                                          .upComing ==
                                                      true) &&
                                                  functions.isCancellationAllow(
                                                      getJsonField(
                                                    columnViewBookingDetailsResponse
                                                        .jsonBody,
                                                    r'''$.checkInDate''',
                                                  ).toString())!)
                                                Builder(
                                                  builder: (context) =>
                                                      FFButtonWidget(
                                                    onPressed: () async {
                                                      var _shouldSetState =
                                                          false;
                                                      _model.refreshTokenRespCRWeb =
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
                                                              .refreshTokenRespCRWeb
                                                              ?.succeeded ??
                                                          true)) {
                                                        setState(() {
                                                          FFAppState()
                                                                  .accessToken =
                                                              getJsonField(
                                                            (_model.refreshTokenRespCRWeb
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.access_token''',
                                                          ).toString();
                                                          FFAppState()
                                                                  .refreshToken =
                                                              getJsonField(
                                                            (_model.refreshTokenRespCRWeb
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.refresh_token''',
                                                          ).toString();
                                                        });
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            991.0) {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            isDismissible:
                                                                false,
                                                            enableDrag: false,
                                                            useSafeArea: true,
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
                                                                  child:
                                                                      ReasonForCancellationCompWidget(
                                                                    bookingId: FFAppState()
                                                                        .ManageBookingDetails
                                                                        .bookingId,
                                                                    amountPaid:
                                                                        getJsonField(
                                                                      columnViewBookingDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.amountPaid''',
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));

                                                          if (_shouldSetState)
                                                            setState(() {});
                                                          return;
                                                        } else {
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
                                                                        -1.0)
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
                                                                            0.8,
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.3,
                                                                    child:
                                                                        ReasonForCancellationCompWidget(
                                                                      bookingId: FFAppState()
                                                                          .ManageBookingDetails
                                                                          .bookingId,
                                                                      amountPaid:
                                                                          getJsonField(
                                                                        columnViewBookingDetailsResponse
                                                                            .jsonBody,
                                                                        r'''$.amountPaid''',
                                                                      ),
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
                                                        }
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title:
                                                                  Text('Error'),
                                                              content: Text(
                                                                  'Your session is expired, please re-login.'),
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
                                                        _model.cancelBookingRequestResponse =
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
                                                                .cancelBookingRequestResponse
                                                                ?.succeeded ??
                                                            true)) {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .accessToken =
                                                                getJsonField(
                                                              (_model.cancelBookingRequestResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.access_token''',
                                                            ).toString();
                                                            FFAppState()
                                                                    .refreshToken =
                                                                getJsonField(
                                                              (_model.cancelBookingRequestResponse
                                                                      ?.jsonBody ??
                                                                  ''),
                                                              r'''$.refresh_token''',
                                                            ).toString();
                                                          });
                                                          _model.logoutAPIRespCancelBooking =
                                                              await LogOutCall
                                                                  .call(
                                                            accessToken:
                                                                FFAppState()
                                                                    .accessToken,
                                                            refreshToken:
                                                                FFAppState()
                                                                    .refreshToken,
                                                          );
                                                          _shouldSetState =
                                                              true;
                                                          if ((_model
                                                                  .logoutAPIRespCancelBooking
                                                                  ?.succeeded ??
                                                              true)) {
                                                            Navigator.pop(
                                                                context);
                                                            setState(() {
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
                                                              FFAppState()
                                                                      .priceMin =
                                                                  500.0;
                                                              FFAppState()
                                                                      .priceMax =
                                                                  99999.0;
                                                              FFAppState()
                                                                  .userFilterPropertyType = [];
                                                              FFAppState()
                                                                  .searchResultCount = 0;
                                                            });
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
                                                                        ? FocusScope.of(context).requestFocus(_model
                                                                            .unfocusNode)
                                                                        : FocusScope.of(context)
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
                                                                          PhoneLoginComponentWidget(),
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
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                      .hostAddressDetail =
                                                                  HostAddressDetailsStruct
                                                                      .fromSerializableMap(
                                                                          jsonDecode(
                                                                              '{\"availability\":\"[]\"}'));
                                                              FFAppState()
                                                                      .propertyType =
                                                                  jsonDecode(
                                                                      '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                                                              FFAppState()
                                                                  .basicDetailsBeds = 1;
                                                              FFAppState()
                                                                  .basicDetailsGuests = 1;
                                                              FFAppState()
                                                                  .basicDetailsBathrooms = 1;
                                                              FFAppState()
                                                                      .propertyBasicData =
                                                                  BasicDetailsStruct();
                                                              FFAppState()
                                                                  .selectedAMNames = [];
                                                              FFAppState()
                                                                      .tellAboutYourProperty =
                                                                  TellYourPropertyStruct();
                                                              FFAppState()
                                                                  .webHostStepIndex = 0;
                                                              FFAppState()
                                                                  .SavedRoute = '';
                                                              FFAppState()
                                                                  .propertyPrice = 0;
                                                              FFAppState()
                                                                  .basicDetailsBedrooms = 1;
                                                              FFAppState()
                                                                  .SelectedAmenities = [];
                                                              FFAppState()
                                                                  .webHostSaveRoute = 0;
                                                              FFAppState()
                                                                  .accessToken = '';
                                                              FFAppState()
                                                                  .refreshToken = '';
                                                            });
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
                                                                        ? FocusScope.of(context).requestFocus(_model
                                                                            .unfocusNode)
                                                                        : FocusScope.of(context)
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
                                                                          PhoneLoginComponentWidget(),
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
                                                          }
                                                        } else {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .hostAddressDetail =
                                                                HostAddressDetailsStruct
                                                                    .fromSerializableMap(
                                                                        jsonDecode(
                                                                            '{\"availability\":\"[]\"}'));
                                                            FFAppState()
                                                                    .propertyType =
                                                                jsonDecode(
                                                                    '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                                                            FFAppState()
                                                                .basicDetailsBeds = 1;
                                                            FFAppState()
                                                                .basicDetailsGuests = 1;
                                                            FFAppState()
                                                                .basicDetailsBathrooms = 1;
                                                            FFAppState()
                                                                    .propertyBasicData =
                                                                BasicDetailsStruct();
                                                            FFAppState()
                                                                .selectedAMNames = [];
                                                            FFAppState()
                                                                    .tellAboutYourProperty =
                                                                TellYourPropertyStruct();
                                                            FFAppState()
                                                                .webHostStepIndex = 0;
                                                            FFAppState()
                                                                .SavedRoute = '';
                                                            FFAppState()
                                                                .propertyPrice = 0;
                                                            FFAppState()
                                                                .basicDetailsBedrooms = 1;
                                                            FFAppState()
                                                                .SelectedAmenities = [];
                                                            FFAppState()
                                                                .webHostSaveRoute = 0;
                                                            FFAppState()
                                                                .accessToken = '';
                                                            FFAppState()
                                                                .refreshToken = '';
                                                          });
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
                                                                        PhoneLoginComponentWidget(),
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
                                                      }

                                                      if (_shouldSetState)
                                                        setState(() {});
                                                    },
                                                    text: 'Cancel my booking',
                                                    options: FFButtonOptions(
                                                      width: 444.0,
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
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16.0,
                                                      ),
                                                      elevation: 4.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                ),
                                              if ((FFAppState()
                                                          .tripsStatus
                                                          .completed ==
                                                      true) &&
                                                  ('PENDING' ==
                                                      getJsonField(
                                                        columnViewBookingDetailsResponse
                                                            .jsonBody,
                                                        r'''$.reviewStatus''',
                                                      )))
                                                Builder(
                                                  builder: (context) =>
                                                      FFButtonWidget(
                                                    onPressed: () async {
                                                      var _shouldSetState =
                                                          false;
                                                      _model.refreshTokenRespFeedbackWeb =
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
                                                              .refreshTokenRespFeedbackWeb
                                                              ?.succeeded ??
                                                          true)) {
                                                        setState(() {
                                                          FFAppState()
                                                                  .accessToken =
                                                              getJsonField(
                                                            (_model.refreshTokenRespFeedbackWeb
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.access_token''',
                                                          ).toString();
                                                          FFAppState()
                                                                  .refreshToken =
                                                              getJsonField(
                                                            (_model.refreshTokenRespFeedbackWeb
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.refresh_token''',
                                                          ).toString();
                                                        });
                                                        if (MediaQuery.sizeOf(
                                                                    context)
                                                                .width <
                                                            600.0) {
                                                          await showModalBottomSheet(
                                                            isScrollControlled:
                                                                true,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            isDismissible:
                                                                false,
                                                            enableDrag: false,
                                                            useSafeArea: true,
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
                                                                  child:
                                                                      FeedBackCompWidget(
                                                                    bookingId: FFAppState()
                                                                        .ManageBookingDetails
                                                                        .bookingId,
                                                                    articleId:
                                                                        getJsonField(
                                                                      columnViewBookingDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.articleId''',
                                                                    ).toString(),
                                                                    propertyId:
                                                                        getJsonField(
                                                                      columnViewBookingDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.propertyId''',
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              safeSetState(
                                                                  () {}));

                                                          if (_shouldSetState)
                                                            setState(() {});
                                                          return;
                                                        } else {
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
                                                                        -1.0)
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
                                                                            0.8,
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.3,
                                                                    child:
                                                                        FeedBackCompWidget(
                                                                      bookingId: FFAppState()
                                                                          .ManageBookingDetails
                                                                          .bookingId,
                                                                      articleId:
                                                                          getJsonField(
                                                                        columnViewBookingDetailsResponse
                                                                            .jsonBody,
                                                                        r'''$.articleId''',
                                                                      ).toString(),
                                                                      propertyId:
                                                                          getJsonField(
                                                                        columnViewBookingDetailsResponse
                                                                            .jsonBody,
                                                                        r'''$.propertyId''',
                                                                      ),
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
                                                        }
                                                      } else {
                                                        await showDialog(
                                                          context: context,
                                                          builder:
                                                              (alertDialogContext) {
                                                            return AlertDialog(
                                                              title:
                                                                  Text('Error'),
                                                              content: Text(
                                                                  'Your session is expired, please re-login.'),
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
                                                        _model.shareReviewRequestResponse =
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
                                                                .shareReviewRequestResponse
                                                                ?.succeeded ??
                                                            true)) {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .accessToken =
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
                                                          });
                                                          _model.logoutAPIRespShareReview =
                                                              await LogOutCall
                                                                  .call(
                                                            accessToken:
                                                                FFAppState()
                                                                    .accessToken,
                                                            refreshToken:
                                                                FFAppState()
                                                                    .refreshToken,
                                                          );
                                                          _shouldSetState =
                                                              true;
                                                          if ((_model
                                                                  .logoutAPIRespShareReview
                                                                  ?.succeeded ??
                                                              true)) {
                                                            Navigator.pop(
                                                                context);
                                                            setState(() {
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
                                                              FFAppState()
                                                                      .priceMin =
                                                                  500.0;
                                                              FFAppState()
                                                                      .priceMax =
                                                                  99999.0;
                                                              FFAppState()
                                                                  .userFilterPropertyType = [];
                                                              FFAppState()
                                                                  .searchResultCount = 0;
                                                            });
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
                                                                        ? FocusScope.of(context).requestFocus(_model
                                                                            .unfocusNode)
                                                                        : FocusScope.of(context)
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
                                                                          PhoneLoginComponentWidget(),
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
                                                            FFAppState()
                                                                .update(() {
                                                              FFAppState()
                                                                      .hostAddressDetail =
                                                                  HostAddressDetailsStruct
                                                                      .fromSerializableMap(
                                                                          jsonDecode(
                                                                              '{\"availability\":\"[]\"}'));
                                                              FFAppState()
                                                                      .propertyType =
                                                                  jsonDecode(
                                                                      '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                                                              FFAppState()
                                                                  .basicDetailsBeds = 1;
                                                              FFAppState()
                                                                  .basicDetailsGuests = 1;
                                                              FFAppState()
                                                                  .basicDetailsBathrooms = 1;
                                                              FFAppState()
                                                                      .propertyBasicData =
                                                                  BasicDetailsStruct();
                                                              FFAppState()
                                                                  .selectedAMNames = [];
                                                              FFAppState()
                                                                      .tellAboutYourProperty =
                                                                  TellYourPropertyStruct();
                                                              FFAppState()
                                                                  .webHostStepIndex = 0;
                                                              FFAppState()
                                                                  .SavedRoute = '';
                                                              FFAppState()
                                                                  .propertyPrice = 0;
                                                              FFAppState()
                                                                  .basicDetailsBedrooms = 1;
                                                              FFAppState()
                                                                  .SelectedAmenities = [];
                                                              FFAppState()
                                                                  .webHostSaveRoute = 0;
                                                              FFAppState()
                                                                  .accessToken = '';
                                                              FFAppState()
                                                                  .refreshToken = '';
                                                            });
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
                                                                        ? FocusScope.of(context).requestFocus(_model
                                                                            .unfocusNode)
                                                                        : FocusScope.of(context)
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
                                                                          PhoneLoginComponentWidget(),
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
                                                          }
                                                        } else {
                                                          FFAppState()
                                                              .update(() {
                                                            FFAppState()
                                                                    .hostAddressDetail =
                                                                HostAddressDetailsStruct
                                                                    .fromSerializableMap(
                                                                        jsonDecode(
                                                                            '{\"availability\":\"[]\"}'));
                                                            FFAppState()
                                                                    .propertyType =
                                                                jsonDecode(
                                                                    '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                                                            FFAppState()
                                                                .basicDetailsBeds = 1;
                                                            FFAppState()
                                                                .basicDetailsGuests = 1;
                                                            FFAppState()
                                                                .basicDetailsBathrooms = 1;
                                                            FFAppState()
                                                                    .propertyBasicData =
                                                                BasicDetailsStruct();
                                                            FFAppState()
                                                                .selectedAMNames = [];
                                                            FFAppState()
                                                                    .tellAboutYourProperty =
                                                                TellYourPropertyStruct();
                                                            FFAppState()
                                                                .webHostStepIndex = 0;
                                                            FFAppState()
                                                                .SavedRoute = '';
                                                            FFAppState()
                                                                .propertyPrice = 0;
                                                            FFAppState()
                                                                .basicDetailsBedrooms = 1;
                                                            FFAppState()
                                                                .SelectedAmenities = [];
                                                            FFAppState()
                                                                .webHostSaveRoute = 0;
                                                            FFAppState()
                                                                .accessToken = '';
                                                            FFAppState()
                                                                .refreshToken = '';
                                                          });
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
                                                                        PhoneLoginComponentWidget(),
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
                                                      }

                                                      if (_shouldSetState)
                                                        setState(() {});
                                                    },
                                                    text: 'Share your review',
                                                    options: FFButtonOptions(
                                                      width: 444.0,
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
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16.0,
                                                      ),
                                                      elevation: 4.0,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 48.0,
                                    decoration: BoxDecoration(),
                                  ),
                                ],
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
                    wrapWithModel(
                      model: _model.webBottomCopyWriteModel,
                      updateCallback: () => setState(() {}),
                      child: WebBottomCopyWriteWidget(),
                    ),
                  if (((FFAppState().tripsStatus.upComing == true) &&
                          functions.isCancellationAllow(getJsonField(
                            columnViewBookingDetailsResponse.jsonBody,
                            r'''$.checkInDate''',
                          ).toString())!) &&
                      responsiveVisibility(
                        context: context,
                        desktop: false,
                      ))
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                -4.0,
                              ),
                              spreadRadius: 0.0,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Builder(
                                  builder: (context) => FFButtonWidget(
                                    onPressed: () async {
                                      var _shouldSetState = false;
                                      _model.refreshTokenRespCRMobile =
                                          await RefreshTokenAPICall.call(
                                        clientId: FFAppConstants.clientId,
                                        clientSecret:
                                            FFAppConstants.clientSecret,
                                        grantType:
                                            FFAppConstants.refreshGrantType,
                                        refreshToken: FFAppState().refreshToken,
                                      );
                                      _shouldSetState = true;
                                      if ((_model.refreshTokenRespCRWeb
                                              ?.succeeded ??
                                          true)) {
                                        setState(() {
                                          FFAppState().accessToken =
                                              getJsonField(
                                            (_model.refreshTokenRespCRMobile
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.access_token''',
                                          ).toString();
                                          FFAppState().refreshToken =
                                              getJsonField(
                                            (_model.refreshTokenRespCRMobile
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.refresh_token''',
                                          ).toString();
                                        });
                                        if (MediaQuery.sizeOf(context).width <
                                            991.0) {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            isDismissible: false,
                                            enableDrag: false,
                                            useSafeArea: true,
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
                                                  child:
                                                      ReasonForCancellationCompWidget(
                                                    bookingId: FFAppState()
                                                        .ManageBookingDetails
                                                        .bookingId,
                                                    amountPaid: getJsonField(
                                                      columnViewBookingDetailsResponse
                                                          .jsonBody,
                                                      r'''$.amountPaid''',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));

                                          if (_shouldSetState) setState(() {});
                                          return;
                                        } else {
                                          await showDialog(
                                            barrierColor: Color(0xCC000D3E),
                                            barrierDismissible: false,
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, -1.0)
                                                    .resolve(Directionality.of(
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
                                                        0.8,
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.3,
                                                    child:
                                                        ReasonForCancellationCompWidget(
                                                      bookingId: FFAppState()
                                                          .ManageBookingDetails
                                                          .bookingId,
                                                      amountPaid: getJsonField(
                                                        columnViewBookingDetailsResponse
                                                            .jsonBody,
                                                        r'''$.amountPaid''',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));

                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
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
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }

                                      if (_shouldSetState) setState(() {});
                                    },
                                    text: 'Cancel my booking',
                                    options: FFButtonOptions(
                                      width: 331.0,
                                      height: 36.0,
                                      padding: EdgeInsets.all(0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  if (((FFAppState().tripsStatus.completed == true) &&
                          ('PENDING' ==
                              getJsonField(
                                columnViewBookingDetailsResponse.jsonBody,
                                r'''$.reviewStatus''',
                              ))) &&
                      responsiveVisibility(
                        context: context,
                        desktop: false,
                      ))
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 70.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                -4.0,
                              ),
                              spreadRadius: 0.0,
                            )
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Builder(
                                  builder: (context) => FFButtonWidget(
                                    onPressed: () async {
                                      var _shouldSetState = false;
                                      _model.refreshTokenRespFeedbackMobile =
                                          await RefreshTokenAPICall.call(
                                        clientId: FFAppConstants.clientId,
                                        clientSecret:
                                            FFAppConstants.clientSecret,
                                        grantType:
                                            FFAppConstants.refreshGrantType,
                                        refreshToken: FFAppState().refreshToken,
                                      );
                                      _shouldSetState = true;
                                      if ((_model.refreshTokenRespCRWeb
                                              ?.succeeded ??
                                          true)) {
                                        setState(() {
                                          FFAppState().accessToken =
                                              getJsonField(
                                            (_model.refreshTokenRespFeedbackMobile
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.access_token''',
                                          ).toString();
                                          FFAppState().refreshToken =
                                              getJsonField(
                                            (_model.refreshTokenRespFeedbackMobile
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.refresh_token''',
                                          ).toString();
                                        });
                                        if (MediaQuery.sizeOf(context).width <
                                            991.0) {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            isDismissible: false,
                                            enableDrag: false,
                                            useSafeArea: true,
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
                                                  child: FeedBackCompWidget(
                                                    bookingId: FFAppState()
                                                        .ManageBookingDetails
                                                        .bookingId,
                                                    articleId: getJsonField(
                                                      columnViewBookingDetailsResponse
                                                          .jsonBody,
                                                      r'''$.articleId''',
                                                    ).toString(),
                                                    propertyId: getJsonField(
                                                      columnViewBookingDetailsResponse
                                                          .jsonBody,
                                                      r'''$.propertyId''',
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));

                                          if (_shouldSetState) setState(() {});
                                          return;
                                        } else {
                                          await showDialog(
                                            barrierColor: Color(0xCC000D3E),
                                            barrierDismissible: false,
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, -1.0)
                                                    .resolve(Directionality.of(
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
                                                        0.8,
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.3,
                                                    child: FeedBackCompWidget(
                                                      bookingId: FFAppState()
                                                          .ManageBookingDetails
                                                          .bookingId,
                                                      articleId: getJsonField(
                                                        columnViewBookingDetailsResponse
                                                            .jsonBody,
                                                        r'''$.articleId''',
                                                      ).toString(),
                                                      propertyId: getJsonField(
                                                        columnViewBookingDetailsResponse
                                                            .jsonBody,
                                                        r'''$.propertyId''',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));

                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
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
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }

                                      if (_shouldSetState) setState(() {});
                                    },
                                    text: 'Share your review',
                                    options: FFButtonOptions(
                                      width: 331.0,
                                      height: 36.0,
                                      padding: EdgeInsets.all(0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
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
              );
            },
          ),
        ),
      ),
    );
  }
}
