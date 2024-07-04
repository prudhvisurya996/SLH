import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/users/house_rule_card/house_rule_card_widget.dart';
import '/luxary_homes/users/modify_reserve_card/modify_reserve_card_widget.dart';
import '/luxary_homes/users/user_reviews/user_reviews_widget.dart';
import '/luxary_homes/users/w_image_pop_up/w_image_pop_up_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'w_modify_booking_details_model.dart';
export 'w_modify_booking_details_model.dart';

class WModifyBookingDetailsWidget extends StatefulWidget {
  const WModifyBookingDetailsWidget({super.key});

  @override
  State<WModifyBookingDetailsWidget> createState() =>
      _WModifyBookingDetailsWidgetState();
}

class _WModifyBookingDetailsWidgetState
    extends State<WModifyBookingDetailsWidget> {
  late WModifyBookingDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WModifyBookingDetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().searchDates.length > 0) {
        _model.selectedFromToDates =
            FFAppState().searchDates.toList().cast<DateTime>();
        setState(() {});
        return;
      } else {
        _model.selectedFromToDates =
            FFAppState().rangeOfSelectedDates.toList().cast<DateTime>();
        setState(() {});
        return;
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

    return FutureBuilder<ApiCallResponse>(
      future: MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.call(
        propertyId: FFAppState().ModifyBookingPage.propertyId,
        bookingId: FFAppState().ModifyBookingPage.bookingId,
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
        final wModifyBookingDetailsPropertyDetailsResponse = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: SafeArea(
              top: true,
              child: Visibility(
                visible: responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.commonTopBarModel,
                      updateCallback: () => setState(() {}),
                      child: CommonTopBarWidget(
                        showSearchFilter: true,
                      ),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 58.0,
                            decoration: BoxDecoration(),
                          ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: double.infinity,
                              decoration: BoxDecoration(),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      desktop: false,
                                    ))
                                      Container(
                                        width: double.infinity,
                                        height: 232.0,
                                        decoration: BoxDecoration(),
                                        child: Stack(
                                          children: [
                                            Container(
                                              width: double.infinity,
                                              height: double.infinity,
                                              child: custom_widgets
                                                  .ImageSliderWidget(
                                                width: double.infinity,
                                                height: double.infinity,
                                                isTopCorners: false,
                                                imgList: functions
                                                    .listDataConversion(
                                                        valueOrDefault<String>(
                                                  MicroserviceAvailabilityAPIsGroup
                                                      .propertyDetailsCall
                                                      .imgesUrls(
                                                    wModifyBookingDetailsPropertyDetailsResponse
                                                        .jsonBody,
                                                  ),
                                                  'NA',
                                                )),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 10.0, 10.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  FlutterFlowIconButton(
                                                    borderColor:
                                                        Colors.transparent,
                                                    borderRadius: 20.0,
                                                    borderWidth: 1.0,
                                                    buttonSize: 36.0,
                                                    fillColor:
                                                        Color(0x4DBBD1EA),
                                                    icon: Icon(
                                                      Icons
                                                          .arrow_back_ios_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 18.0,
                                                    ),
                                                    onPressed: () async {
                                                      context.safePop();
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 1.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 11.0),
                                                child: Container(
                                                  width: 30.0,
                                                  height: 6.0,
                                                  decoration: BoxDecoration(),
                                                  child: Visibility(
                                                    visible: false,
                                                    child: Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 1.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          Container(
                                                            width: 6.0,
                                                            height: 6.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 6.0,
                                                            height: 6.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                          Container(
                                                            width: 6.0,
                                                            height: 6.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 6.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: double.infinity,
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    if (responsiveVisibility(
                                                      context: context,
                                                      phone: false,
                                                      tablet: false,
                                                      tabletLandscape: false,
                                                    ))
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    20.0,
                                                                    0.0),
                                                        child:
                                                            FlutterFlowIconButton(
                                                          borderColor: Colors
                                                              .transparent,
                                                          borderRadius: 20.0,
                                                          borderWidth: 1.0,
                                                          buttonSize: 36.0,
                                                          fillColor:
                                                              Color(0x4DBBD1EA),
                                                          icon: Icon(
                                                            Icons
                                                                .arrow_back_ios_rounded,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 18.0,
                                                          ),
                                                          onPressed: () async {
                                                            context.safePop();
                                                          },
                                                        ),
                                                      ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          MicroserviceAvailabilityAPIsGroup
                                                              .propertyDetailsCall
                                                              .title(
                                                            wModifyBookingDetailsPropertyDetailsResponse
                                                                .jsonBody,
                                                          ),
                                                          'NA',
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 14.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/map_location_dot.svg',
                                                          width: 20.0,
                                                          height: 18.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child: Text(
                                                          '${valueOrDefault<String>(
                                                            MicroserviceAvailabilityAPIsGroup
                                                                .propertyDetailsCall
                                                                .plotNo(
                                                              wModifyBookingDetailsPropertyDetailsResponse
                                                                  .jsonBody,
                                                            ),
                                                            'NA',
                                                          )}, ${valueOrDefault<String>(
                                                            MicroserviceAvailabilityAPIsGroup
                                                                .propertyDetailsCall
                                                                .street(
                                                              wModifyBookingDetailsPropertyDetailsResponse
                                                                  .jsonBody,
                                                            ),
                                                            'NA',
                                                          )}, ${valueOrDefault<String>(
                                                            MicroserviceAvailabilityAPIsGroup
                                                                .propertyDetailsCall
                                                                .locality(
                                                              wModifyBookingDetailsPropertyDetailsResponse
                                                                  .jsonBody,
                                                            ),
                                                            'NA',
                                                          )}, ${valueOrDefault<String>(
                                                            MicroserviceAvailabilityAPIsGroup
                                                                .propertyDetailsCall
                                                                .city(
                                                              wModifyBookingDetailsPropertyDetailsResponse
                                                                  .jsonBody,
                                                            ),
                                                            'NA',
                                                          )}, ${valueOrDefault<String>(
                                                            MicroserviceAvailabilityAPIsGroup
                                                                .propertyDetailsCall
                                                                .state(
                                                              wModifyBookingDetailsPropertyDetailsResponse
                                                                  .jsonBody,
                                                            ),
                                                            'NA',
                                                          )} - ${valueOrDefault<String>(
                                                            MicroserviceAvailabilityAPIsGroup
                                                                .propertyDetailsCall
                                                                .zipcode(
                                                              wModifyBookingDetailsPropertyDetailsResponse
                                                                  .jsonBody,
                                                            ),
                                                            'NA',
                                                          )}, ${valueOrDefault<String>(
                                                            MicroserviceAvailabilityAPIsGroup
                                                                .propertyDetailsCall
                                                                .country(
                                                              wModifyBookingDetailsPropertyDetailsResponse
                                                                  .jsonBody,
                                                            ),
                                                            'NA',
                                                          )}.',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 5.0)),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    14.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Wrap(
                                                          spacing: 30.0,
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
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
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
                                                                    width: 20.0,
                                                                    height:
                                                                        18.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    '${valueOrDefault<String>(
                                                                      MicroserviceAvailabilityAPIsGroup
                                                                          .propertyDetailsCall
                                                                          .totalGuests(
                                                                            wModifyBookingDetailsPropertyDetailsResponse.jsonBody,
                                                                          )
                                                                          ?.toString(),
                                                                      'NA',
                                                                    )}  Guests',
                                                                    'NA',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 5.0)),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Container(
                                                                  width: 6.0,
                                                                  height: 6.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    '${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bedrooms(
                                                                          wModifyBookingDetailsPropertyDetailsResponse
                                                                              .jsonBody,
                                                                        )?.toString()} Bedrooms',
                                                                    'NA',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 15.0)),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Container(
                                                                  width: 6.0,
                                                                  height: 6.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    '${valueOrDefault<String>(
                                                                      MicroserviceAvailabilityAPIsGroup
                                                                          .propertyDetailsCall
                                                                          .beds(
                                                                            wModifyBookingDetailsPropertyDetailsResponse.jsonBody,
                                                                          )
                                                                          ?.toString(),
                                                                      'NA',
                                                                    )} Beds',
                                                                    'NA',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 15.0)),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Container(
                                                                  width: 6.0,
                                                                  height: 6.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                ),
                                                                Text(
                                                                  valueOrDefault<
                                                                      String>(
                                                                    '${valueOrDefault<String>(
                                                                      MicroserviceAvailabilityAPIsGroup
                                                                          .propertyDetailsCall
                                                                          .bathRooms(
                                                                            wModifyBookingDetailsPropertyDetailsResponse.jsonBody,
                                                                          )
                                                                          ?.toString(),
                                                                      'NA',
                                                                    )} Bathrooms',
                                                                    'NA',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ].divide(SizedBox(
                                                                  width: 15.0)),
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
                                        ],
                                      ),
                                    ),
                                    if (responsiveVisibility(
                                      context: context,
                                      phone: false,
                                      tablet: false,
                                      tabletLandscape: false,
                                    ))
                                      Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 22.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 350.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Stack(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, 1.0),
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.5,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20.0),
                                                        ),
                                                        child: Hero(
                                                          tag: functions
                                                              .initImg(
                                                                  functions
                                                                      .listDataConversion(MicroserviceAvailabilityAPIsGroup
                                                                          .propertyDetailsCall
                                                                          .imgesUrls(
                                                                        wModifyBookingDetailsPropertyDetailsResponse
                                                                            .jsonBody,
                                                                      ))
                                                                      ?.toList(),
                                                                  FFAppState()
                                                                      .BaseUrl)!
                                                              .last,
                                                          transitionOnUserGestures:
                                                              true,
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
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
                                                              imageUrl: functions
                                                                  .initImg(
                                                                      functions
                                                                          .listDataConversion(MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.imgesUrls(
                                                                            wModifyBookingDetailsPropertyDetailsResponse.jsonBody,
                                                                          ))
                                                                          ?.toList(),
                                                                      FFAppState().BaseUrl)!
                                                                  .last,
                                                              width: 300.0,
                                                              height: 200.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Builder(
                                                      builder: (context) =>
                                                          Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    20.0,
                                                                    20.0),
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
                                                                        ? FocusScope.of(context).requestFocus(_model
                                                                            .unfocusNode)
                                                                        : FocusScope.of(context)
                                                                            .unfocus(),
                                                                    child:
                                                                        Container(
                                                                      height: MediaQuery.sizeOf(context)
                                                                              .height *
                                                                          0.95,
                                                                      width:
                                                                          1000.0,
                                                                      child:
                                                                          WImagePopUpWidget(
                                                                        imageUrls: functions.initImg(
                                                                            functions
                                                                                .listDataConversion(MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.imgesUrls(
                                                                                  wModifyBookingDetailsPropertyDetailsResponse.jsonBody,
                                                                                ))
                                                                                ?.toList(),
                                                                            FFAppState().BaseUrl),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ).then((value) =>
                                                                setState(
                                                                    () {}));
                                                          },
                                                          text:
                                                              'Show All Photos',
                                                          icon: Icon(
                                                            Icons.image,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 18.0,
                                                          ),
                                                          options:
                                                              FFButtonOptions(
                                                            width: 178.0,
                                                            height: 36.0,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .headlineMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                            elevation: 3.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.35,
                                                  height: double.infinity,
                                                  decoration: BoxDecoration(),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final images = (functions
                                                                  .initImg(
                                                                      functions
                                                                          .listDataConversion(MicroserviceAvailabilityAPIsGroup
                                                                              .propertyDetailsCall
                                                                              .imgesUrls(
                                                                            wModifyBookingDetailsPropertyDetailsResponse.jsonBody,
                                                                          ))
                                                                          ?.toList(),
                                                                      FFAppState()
                                                                          .BaseUrl)
                                                                  ?.toList() ??
                                                              [])
                                                          .take(4)
                                                          .toList();
                                                      return Wrap(
                                                        spacing: 9.0,
                                                        runSpacing: 9.0,
                                                        alignment:
                                                            WrapAlignment.start,
                                                        crossAxisAlignment:
                                                            WrapCrossAlignment
                                                                .start,
                                                        direction:
                                                            Axis.horizontal,
                                                        runAlignment:
                                                            WrapAlignment.start,
                                                        verticalDirection:
                                                            VerticalDirection
                                                                .down,
                                                        clipBehavior: Clip.none,
                                                        children: List.generate(
                                                            images.length,
                                                            (imagesIndex) {
                                                          final imagesItem =
                                                              images[
                                                                  imagesIndex];
                                                          return Container(
                                                            width: 200.0,
                                                            height: 165.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20.0),
                                                            ),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
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
                                                                imageUrl:
                                                                    imagesItem,
                                                                width: 300.0,
                                                                height: 200.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          );
                                                        }),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 9.0)),
                                            ),
                                          ),
                                        ),
                                      ),
                                    Flexible(
                                      child: Wrap(
                                        spacing: 0.0,
                                        runSpacing: 0.0,
                                        alignment: WrapAlignment.end,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.end,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.end,
                                        verticalDirection: VerticalDirection.up,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Flexible(
                                                child: Container(
                                                  decoration: BoxDecoration(),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
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
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                      child:
                                                                          Text(
                                                                        'Summary',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              fontSize: 20.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          RatingBar
                                                                              .builder(
                                                                            onRatingUpdate: (newValue) =>
                                                                                setState(() => _model.ratingBarValue = newValue),
                                                                            itemBuilder: (context, index) =>
                                                                                Icon(
                                                                              Icons.star_rounded,
                                                                              color: FlutterFlowTheme.of(context).tertiary,
                                                                            ),
                                                                            direction:
                                                                                Axis.horizontal,
                                                                            initialRating: _model.ratingBarValue ??=
                                                                                getJsonField(
                                                                              wModifyBookingDetailsPropertyDetailsResponse.jsonBody,
                                                                              r'''$.averageRatings''',
                                                                            ),
                                                                            unratedColor:
                                                                                FlutterFlowTheme.of(context).accent3,
                                                                            itemCount:
                                                                                5,
                                                                            itemSize:
                                                                                20.0,
                                                                            glowColor:
                                                                                FlutterFlowTheme.of(context).tertiary,
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                6.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              '(${getJsonField(
                                                                                wModifyBookingDetailsPropertyDetailsResponse.jsonBody,
                                                                                r'''$.totalReviews''',
                                                                              ).toString()})',
                                                                              style: GoogleFonts.getFont(
                                                                                'Poppins',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 10.0,
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
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        MicroserviceAvailabilityAPIsGroup
                                                                            .propertyDetailsCall
                                                                            .desc(
                                                                          wModifyBookingDetailsPropertyDetailsResponse
                                                                              .jsonBody,
                                                                        ),
                                                                        'NA',
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            lineHeight:
                                                                                1.5,
                                                                          ),
                                                                    ),
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
                                                      ))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      20.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                    child: Text(
                                                                      '${(FFAppState().ModifyBookingPage.checkInDate != null && FFAppState().ModifyBookingPage.checkInDate != '') && (FFAppState().ModifyBookingPage.checkOutDate != null && FFAppState().ModifyBookingPage.checkOutDate != '') ? functions.daysCalculationInModifyBooking(functions.strToDateTimeConversion(FFAppState().ModifyBookingPage.checkInDate), functions.strToDateTimeConversion(FFAppState().ModifyBookingPage.checkOutDate)).toString() : '0'} Nights at ${FFAppState().ModifyBookingPage.title}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                    child: Text(
                                                                      '${FFAppState().ModifyBookingPage.checkInDate != null && FFAppState().ModifyBookingPage.checkInDate != '' ? dateTimeFormat('dd-MMM-yyyy', functions.strToDateTimeConversion(FFAppState().ModifyBookingPage.checkInDate)) : 'Check-In Date'} - ${FFAppState().ModifyBookingPage.checkOutDate != null && FFAppState().ModifyBookingPage.checkOutDate != '' ? dateTimeFormat('dd-MMM-yyyy', functions.strToDateTimeConversion(FFAppState().ModifyBookingPage.checkOutDate)) : 'Check-Out Date'}',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.5,
                                                                    height:
                                                                        280.0,
                                                                    child: custom_widgets
                                                                        .SyncDatePicker(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.5,
                                                                      height:
                                                                          280.0,
                                                                      isMultiView: MediaQuery.sizeOf(context).width >
                                                                              799.0
                                                                          ? true
                                                                          : false,
                                                                      initialSelectedDates:
                                                                          _model
                                                                              .selectedFromToDates,
                                                                      propBookedDates:
                                                                          getJsonField(
                                                                        wModifyBookingDetailsPropertyDetailsResponse
                                                                            .jsonBody,
                                                                        r'''$.bookedDates''',
                                                                      ).toString(),
                                                                      onChangeAction:
                                                                          () async {
                                                                        _model.selectedFromToDates = FFAppState()
                                                                            .rangeOfSelectedDates
                                                                            .toList()
                                                                            .cast<DateTime>();
                                                                        setState(
                                                                            () {});
                                                                      },
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        10.0)),
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
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
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
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                  child: Text(
                                                                    'Amenities',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width: double
                                                                          .infinity,
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth:
                                                                            700.0,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Builder(
                                                                        builder:
                                                                            (context) {
                                                                          final amenitiesData = functions
                                                                                  .listMapConversion(getJsonField(
                                                                                    wModifyBookingDetailsPropertyDetailsResponse.jsonBody,
                                                                                    r'''$.amenities''',
                                                                                  ).toString())
                                                                                  ?.toList() ??
                                                                              [];
                                                                          return Wrap(
                                                                            spacing:
                                                                                5.0,
                                                                            runSpacing:
                                                                                5.0,
                                                                            alignment:
                                                                                WrapAlignment.start,
                                                                            crossAxisAlignment:
                                                                                WrapCrossAlignment.start,
                                                                            direction:
                                                                                Axis.horizontal,
                                                                            runAlignment:
                                                                                WrapAlignment.start,
                                                                            verticalDirection:
                                                                                VerticalDirection.down,
                                                                            clipBehavior:
                                                                                Clip.none,
                                                                            children:
                                                                                List.generate(amenitiesData.length, (amenitiesDataIndex) {
                                                                              final amenitiesDataItem = amenitiesData[amenitiesDataIndex];
                                                                              return Padding(
                                                                                padding: EdgeInsets.all(5.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  children: [
                                                                                    ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                      child: CachedNetworkImage(
                                                                                        fadeInDuration: Duration(milliseconds: 1100),
                                                                                        fadeOutDuration: Duration(milliseconds: 1100),
                                                                                        imageUrl: functions.getImage(
                                                                                            FFAppState().BaseUrl,
                                                                                            getJsonField(
                                                                                              amenitiesDataItem,
                                                                                              r'''$.imageIcon''',
                                                                                            ).toString())!,
                                                                                        width: 25.0,
                                                                                        height: 20.0,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                    Text(
                                                                                      valueOrDefault<String>(
                                                                                        getJsonField(
                                                                                          amenitiesDataItem,
                                                                                          r'''$.name''',
                                                                                        )?.toString(),
                                                                                        'NA',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            fontSize: 16.0,
                                                                                            letterSpacing: 0.0,
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
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
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
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                  child: Text(
                                                                    'House Rules',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  desktop:
                                                                      false,
                                                                ))
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width: double
                                                                          .infinity,
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth:
                                                                            800.0,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Wrap(
                                                                        spacing:
                                                                            20.0,
                                                                        runSpacing:
                                                                            30.0,
                                                                        alignment:
                                                                            WrapAlignment.start,
                                                                        crossAxisAlignment:
                                                                            WrapCrossAlignment.start,
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        runAlignment:
                                                                            WrapAlignment.start,
                                                                        verticalDirection:
                                                                            VerticalDirection.down,
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        children: [
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.houseRuleCardModel1,
                                                                            updateCallback: () =>
                                                                                setState(() {}),
                                                                            child:
                                                                                HouseRuleCardWidget(
                                                                              ruleNumber: '01',
                                                                              ruleHeading: 'Check In',
                                                                              ruleDescription: 'From 12:00 PM',
                                                                            ),
                                                                          ),
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.houseRuleCardModel2,
                                                                            updateCallback: () =>
                                                                                setState(() {}),
                                                                            child:
                                                                                HouseRuleCardWidget(
                                                                              ruleNumber: '02',
                                                                              ruleHeading: 'Check Out',
                                                                              ruleDescription: 'From 11:00 AM',
                                                                            ),
                                                                          ),
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.houseRuleCardModel3,
                                                                            updateCallback: () =>
                                                                                setState(() {}),
                                                                            child:
                                                                                HouseRuleCardWidget(
                                                                              ruleNumber: '03',
                                                                              ruleHeading: 'Smoking',
                                                                              ruleDescription: 'Smoking is not allowed.',
                                                                            ),
                                                                          ),
                                                                          wrapWithModel(
                                                                            model:
                                                                                _model.houseRuleCardModel4,
                                                                            updateCallback: () =>
                                                                                setState(() {}),
                                                                            child:
                                                                                HouseRuleCardWidget(
                                                                              ruleNumber: '04',
                                                                              ruleHeading: 'Parties',
                                                                              ruleDescription: 'Parties/events are not allowed.',
                                                                            ),
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.houseRuleCardModel5,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: HouseRuleCardWidget(
                                                                                ruleNumber: '05',
                                                                                ruleHeading: 'Cancellation/prepayment',
                                                                                ruleDescription: 'Cancellation and prepayment policies vary according to apartment type. Please check the apartment conditions when selecting your apartment above.',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                  tabletLandscape:
                                                                      false,
                                                                ))
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width: double
                                                                          .infinity,
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth:
                                                                            800.0,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Wrap(
                                                                        spacing:
                                                                            20.0,
                                                                        runSpacing:
                                                                            30.0,
                                                                        alignment:
                                                                            WrapAlignment.start,
                                                                        crossAxisAlignment:
                                                                            WrapCrossAlignment.start,
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        runAlignment:
                                                                            WrapAlignment.start,
                                                                        verticalDirection:
                                                                            VerticalDirection.down,
                                                                        clipBehavior:
                                                                            Clip.antiAlias,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Flexible(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    wrapWithModel(
                                                                                      model: _model.houseRuleCardModel6,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: HouseRuleCardWidget(
                                                                                        ruleNumber: '01',
                                                                                        ruleHeading: 'Check In',
                                                                                        ruleDescription: 'From 12:00 PM',
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Flexible(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    wrapWithModel(
                                                                                      model: _model.houseRuleCardModel7,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: HouseRuleCardWidget(
                                                                                        ruleNumber: '02',
                                                                                        ruleHeading: 'Check Out',
                                                                                        ruleDescription: 'From 11:00 AM',
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Flexible(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    wrapWithModel(
                                                                                      model: _model.houseRuleCardModel8,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: HouseRuleCardWidget(
                                                                                        ruleNumber: '03',
                                                                                        ruleHeading: 'Smoking',
                                                                                        ruleDescription: 'Smoking is not allowed.',
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Flexible(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    wrapWithModel(
                                                                                      model: _model.houseRuleCardModel9,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: HouseRuleCardWidget(
                                                                                        ruleNumber: '04',
                                                                                        ruleHeading: 'Parties',
                                                                                        ruleDescription: 'Parties/events are not allowed.',
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.houseRuleCardModel10,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: HouseRuleCardWidget(
                                                                                ruleNumber: '05',
                                                                                ruleHeading: 'Cancellation/prepayment',
                                                                                ruleDescription: 'Cancellation and prepayment policies vary according to apartment type. Please check the apartment conditions when selecting your apartment above.',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                              ].divide(SizedBox(
                                                                  height:
                                                                      20.0)),
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
                                                wrapWithModel(
                                                  model: _model
                                                      .modifyReserveCardModel,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child:
                                                      ModifyReserveCardWidget(
                                                    basePrice: FFAppState()
                                                        .ModifyBookingPage
                                                        .basePrice,
                                                    guestCount: FFAppState()
                                                        .ModifyBookingPage
                                                        .guestCount,
                                                    taxPaid: FFAppState()
                                                        .ModifyBookingPage
                                                        .taxPaid,
                                                    articleid: FFAppState()
                                                        .ModifyBookingPage
                                                        .articleId,
                                                    propertyId: FFAppState()
                                                        .ModifyBookingPage
                                                        .propertyId,
                                                    propertyType: FFAppState()
                                                        .ModifyBookingPage
                                                        .propType,
                                                    bookingId: FFAppState()
                                                        .ModifyBookingPage
                                                        .bookingId,
                                                    checkInDate: FFAppState()
                                                        .rangeOfSelectedDates
                                                        .first
                                                        .toString(),
                                                    checkOutDate: FFAppState()
                                                        .rangeOfSelectedDates
                                                        .last
                                                        .toString(),
                                                    totalAmount: FFAppState()
                                                        .ModifyBookingPage
                                                        .totalAmount,
                                                    nightsBooked: (FFAppState()
                                                                        .ModifyBookingPage
                                                                        .checkInDate !=
                                                                    null &&
                                                                FFAppState()
                                                                        .ModifyBookingPage
                                                                        .checkInDate !=
                                                                    '') &&
                                                            (FFAppState().ModifyBookingPage.checkOutDate !=
                                                                    null &&
                                                                FFAppState()
                                                                        .ModifyBookingPage
                                                                        .checkOutDate !=
                                                                    '') &&
                                                            (functions.daysCalculationInModifyBooking(functions.strToDateTimeConversion(FFAppState().ModifyBookingPage.checkInDate), functions.strToDateTimeConversion(FFAppState().ModifyBookingPage.checkOutDate))! >
                                                                0)
                                                        ? functions.daysCalculationInModifyBooking(
                                                            functions.strToDateTimeConversion(
                                                                FFAppState()
                                                                    .ModifyBookingPage
                                                                    .checkInDate),
                                                            functions.strToDateTimeConversion(
                                                                FFAppState()
                                                                    .ModifyBookingPage
                                                                    .checkOutDate))!
                                                        : 0,
                                                    selectedFromToDates: _model
                                                        .selectedFromToDates,
                                                    totalGuests: int.parse(
                                                        valueOrDefault<String>(
                                                      MicroserviceAvailabilityAPIsGroup
                                                          .propertyDetailsCall
                                                          .totalGuests(
                                                            wModifyBookingDetailsPropertyDetailsResponse
                                                                .jsonBody,
                                                          )
                                                          ?.toString(),
                                                      'NA',
                                                    )),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0,
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context)
                                                          .width <=
                                                      600.0
                                                  ? 10.0
                                                  : 55.0,
                                              0.0,
                                            ),
                                            12.0,
                                            0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: Text(
                                                    'User Reviews',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '${getJsonField(
                                                      wModifyBookingDetailsPropertyDetailsResponse
                                                          .jsonBody,
                                                      r'''$.totalReviews''',
                                                    ).toString()} Reviews',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Container(
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.9,
                                                  height: 242.0,
                                                  decoration: BoxDecoration(),
                                                  child: PagedListView<
                                                      ApiPagingParams,
                                                      dynamic>.separated(
                                                    pagingController: _model
                                                        .setListViewController(
                                                      (nextPageMarker) =>
                                                          MicroserviceRatingReviewAPIsGroup
                                                              .reviewsRatingsCall
                                                              .call(
                                                        pageNo: functions.incrementOne(
                                                                    nextPageMarker
                                                                        .nextPageNumber) >=
                                                                0
                                                            ? (nextPageMarker
                                                                    .nextPageNumber +
                                                                1)
                                                            : -1,
                                                        pageSize: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <=
                                                                500.0
                                                            ? 4
                                                            : 8,
                                                        propertyId:
                                                            getJsonField(
                                                          wModifyBookingDetailsPropertyDetailsResponse
                                                              .jsonBody,
                                                          r'''$.propertyId''',
                                                        ).toString(),
                                                      ),
                                                    ),
                                                    padding: EdgeInsets.zero,
                                                    reverse: false,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    separatorBuilder: (_, __) =>
                                                        SizedBox(width: 10.0),
                                                    builderDelegate:
                                                        PagedChildBuilderDelegate<
                                                            dynamic>(
                                                      // Customize what your widget looks like when it's loading the first page.
                                                      firstPageProgressIndicatorBuilder:
                                                          (_) => Center(
                                                        child: SizedBox(
                                                          width: 40.0,
                                                          height: 40.0,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 40.0,
                                                          ),
                                                        ),
                                                      ),
                                                      // Customize what your widget looks like when it's loading another page.
                                                      newPageProgressIndicatorBuilder:
                                                          (_) => Center(
                                                        child: SizedBox(
                                                          width: 40.0,
                                                          height: 40.0,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 40.0,
                                                          ),
                                                        ),
                                                      ),

                                                      itemBuilder: (context, _,
                                                          ratingReviewDataIndex) {
                                                        final ratingReviewDataItem =
                                                            _model.listViewPagingController!
                                                                    .itemList![
                                                                ratingReviewDataIndex];
                                                        return Container(
                                                          width: MediaQuery.sizeOf(
                                                                          context)
                                                                      .width <=
                                                                  600.0
                                                              ? (MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.9)
                                                              : 619.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      16.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          16.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      16.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      16.0),
                                                            ),
                                                            border: Border.all(
                                                              color: Color(
                                                                  0xFFBBD1EA),
                                                              width: 1.0,
                                                            ),
                                                          ),
                                                          child:
                                                              UserReviewsWidget(
                                                            key: Key(
                                                                'Key40e_${ratingReviewDataIndex}_of_${_model.listViewPagingController!.itemList!.length}'),
                                                            userName:
                                                                getJsonField(
                                                              ratingReviewDataItem,
                                                              r'''$.userName''',
                                                            ).toString(),
                                                            score: getJsonField(
                                                              ratingReviewDataItem,
                                                              r'''$.score''',
                                                            ),
                                                            comments:
                                                                getJsonField(
                                                              ratingReviewDataItem,
                                                              r'''$.comments''',
                                                            ).toString(),
                                                            createdDate:
                                                                getJsonField(
                                                              ratingReviewDataItem,
                                                              r'''$.createdDate''',
                                                            ).toString(),
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
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 55.0,
                            decoration: BoxDecoration(),
                          ),
                        ],
                      ),
                    ),
                    wrapWithModel(
                      model: _model.webCopyWriteModel,
                      updateCallback: () => setState(() {}),
                      child: WebCopyWriteWidget(),
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
