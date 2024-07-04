import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/login/login_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/users/house_rule_card/house_rule_card_widget.dart';
import '/luxary_homes/users/reserve_card/reserve_card_widget.dart';
import '/luxary_homes/users/user_reviews/user_reviews_widget.dart';
import '/luxary_homes/users/w_image_pop_up/w_image_pop_up_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'property_details_old_model.dart';
export 'property_details_old_model.dart';

class PropertyDetailsOldWidget extends StatefulWidget {
  const PropertyDetailsOldWidget({super.key});

  @override
  State<PropertyDetailsOldWidget> createState() =>
      _PropertyDetailsOldWidgetState();
}

class _PropertyDetailsOldWidgetState extends State<PropertyDetailsOldWidget> {
  late PropertyDetailsOldModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropertyDetailsOldModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().searchDates.length > 0) {
        _model.selectedFromToDates =
            FFAppState().searchDates.toList().cast<DateTime>();
        setState(() {});
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
        propertyId: FFAppState().PropertyDetailsPage.propertyId,
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
        final propertyDetailsOldPropertyDetailsResponse = snapshot.data!;
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
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                  ))
                    wrapWithModel(
                      model: _model.commonTopBarModel,
                      updateCallback: () => setState(() {}),
                      child: CommonTopBarWidget(
                        showSearchFilter: true,
                      ),
                    ),
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                        ))
                          Container(
                            width: 58.0,
                            decoration: BoxDecoration(),
                          ),
                        Flexible(
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
                                              imgList:
                                                  functions.listDataConversion(
                                                      valueOrDefault<String>(
                                                MicroserviceAvailabilityAPIsGroup
                                                    .propertyDetailsCall
                                                    .imgesUrls(
                                                  propertyDetailsOldPropertyDetailsResponse
                                                      .jsonBody,
                                                ),
                                                'NA',
                                              )),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 10.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBackground,
                                                  borderRadius: 20.0,
                                                  borderWidth: 1.0,
                                                  buttonSize: 36.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  icon: Icon(
                                                    Icons.chevron_left,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 20.0,
                                                  ),
                                                  onPressed: () async {
                                                    context.safePop();
                                                  },
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 1.0),
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
                                                            shape:
                                                                BoxShape.circle,
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
                                                            shape:
                                                                BoxShape.circle,
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
                                                            shape:
                                                                BoxShape.circle,
                                                          ),
                                                        ),
                                                      ].divide(
                                                          SizedBox(width: 6.0)),
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
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          16.0, 12.0, 12.0, 12.0),
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
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    10.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            MicroserviceAvailabilityAPIsGroup
                                                                .propertyDetailsCall
                                                                .title(
                                                              propertyDetailsOldPropertyDetailsResponse
                                                                  .jsonBody,
                                                            ),
                                                            'NA',
                                                          ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .headlineSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Work Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    if (functions.toDouble(
                                                            getJsonField(
                                                          propertyDetailsOldPropertyDetailsResponse
                                                              .jsonBody,
                                                          r'''$.averageRatings''',
                                                        ).toString())! >
                                                        0.0)
                                                      SizedBox(
                                                        height: 20.0,
                                                        child: VerticalDivider(
                                                          width: 1.43,
                                                          thickness: 1.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                      ),
                                                    if (functions.toDouble(
                                                            getJsonField(
                                                          propertyDetailsOldPropertyDetailsResponse
                                                              .jsonBody,
                                                          r'''$.averageRatings''',
                                                        ).toString())! >
                                                        0.0)
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            RatingBar.builder(
                                                              onRatingUpdate: (newValue) =>
                                                                  setState(() =>
                                                                      _model.ratingBarValue =
                                                                          newValue),
                                                              itemBuilder:
                                                                  (context,
                                                                          index) =>
                                                                      Icon(
                                                                Icons
                                                                    .star_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiary,
                                                              ),
                                                              direction: Axis
                                                                  .horizontal,
                                                              initialRating: _model
                                                                      .ratingBarValue ??=
                                                                  getJsonField(
                                                                propertyDetailsOldPropertyDetailsResponse
                                                                    .jsonBody,
                                                                r'''$.averageRatings''',
                                                              ),
                                                              unratedColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                              itemCount: 5,
                                                              itemSize: 18.0,
                                                              glowColor:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                '(${getJsonField(
                                                                  propertyDetailsOldPropertyDetailsResponse
                                                                      .jsonBody,
                                                                  r'''$.totalReviews''',
                                                                ).toString()})',
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
                                                                      10.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
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
                                                              propertyDetailsOldPropertyDetailsResponse
                                                                  .jsonBody,
                                                            ),
                                                            'NA',
                                                          )}, ${valueOrDefault<String>(
                                                            MicroserviceAvailabilityAPIsGroup
                                                                .propertyDetailsCall
                                                                .street(
                                                              propertyDetailsOldPropertyDetailsResponse
                                                                  .jsonBody,
                                                            ),
                                                            'NA',
                                                          )}, ${valueOrDefault<String>(
                                                            MicroserviceAvailabilityAPIsGroup
                                                                .propertyDetailsCall
                                                                .locality(
                                                              propertyDetailsOldPropertyDetailsResponse
                                                                  .jsonBody,
                                                            ),
                                                            'NA',
                                                          )}, ${valueOrDefault<String>(
                                                            MicroserviceAvailabilityAPIsGroup
                                                                .propertyDetailsCall
                                                                .city(
                                                              propertyDetailsOldPropertyDetailsResponse
                                                                  .jsonBody,
                                                            ),
                                                            'NA',
                                                          )}, ${valueOrDefault<String>(
                                                            MicroserviceAvailabilityAPIsGroup
                                                                .propertyDetailsCall
                                                                .state(
                                                              propertyDetailsOldPropertyDetailsResponse
                                                                  .jsonBody,
                                                            ),
                                                            'NA',
                                                          )} - ${valueOrDefault<String>(
                                                            MicroserviceAvailabilityAPIsGroup
                                                                .propertyDetailsCall
                                                                .zipcode(
                                                              propertyDetailsOldPropertyDetailsResponse
                                                                  .jsonBody,
                                                            ),
                                                            'NA',
                                                          )}, ${valueOrDefault<String>(
                                                            MicroserviceAvailabilityAPIsGroup
                                                                .propertyDetailsCall
                                                                .country(
                                                              propertyDetailsOldPropertyDetailsResponse
                                                                  .jsonBody,
                                                            ),
                                                            'NA',
                                                          )}.',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Work Sans',
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                lineHeight: 1.2,
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
                                                                            propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                          )
                                                                          ?.toString(),
                                                                      'NA',
                                                                    )}${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.totalGuests(
                                                                          propertyDetailsOldPropertyDetailsResponse
                                                                              .jsonBody,
                                                                        )! > 1 ? '  Guests' : '  Guest'}',
                                                                    'NA',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
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
                                                                          propertyDetailsOldPropertyDetailsResponse
                                                                              .jsonBody,
                                                                        )?.toString()}${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bedrooms(
                                                                          propertyDetailsOldPropertyDetailsResponse
                                                                              .jsonBody,
                                                                        )! > 1 ? ' Bedrooms' : ' Bedroom'}',
                                                                    'NA',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
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
                                                                            propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                          )
                                                                          ?.toString(),
                                                                      'NA',
                                                                    )}${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.beds(
                                                                          propertyDetailsOldPropertyDetailsResponse
                                                                              .jsonBody,
                                                                        )! > 1 ? ' Beds' : ' Bed'}',
                                                                    'NA',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
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
                                                                            propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                          )
                                                                          ?.toString(),
                                                                      'NA',
                                                                    )}${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bathRooms(
                                                                          propertyDetailsOldPropertyDetailsResponse
                                                                              .jsonBody,
                                                                        )! > 1 ? '  Bathrooms' : '  Bathroom'}',
                                                                    'NA',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
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
                                                                          .sharedWashrooms(
                                                                            propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                          )
                                                                          ?.toString(),
                                                                      'NA',
                                                                    )}${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.sharedWashrooms(
                                                                          propertyDetailsOldPropertyDetailsResponse
                                                                              .jsonBody,
                                                                        )! > 1 ? ' SharedBathRooms' : ' SharedBathRoom'}',
                                                                    'NA',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
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
                                                                    '${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.guestsPerRoom(
                                                                          propertyDetailsOldPropertyDetailsResponse
                                                                              .jsonBody,
                                                                        )?.toString()} GuestsPerRoom',
                                                                    'NA',
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
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
                                                                RichText(
                                                                  textScaler: MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text:
                                                                            'INR. ${valueOrDefault<String>(
                                                                          MicroserviceAvailabilityAPIsGroup
                                                                              .propertyDetailsCall
                                                                              .pricePerRoom(
                                                                                propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                              )
                                                                              ?.toString(),
                                                                          'NA',
                                                                        )}',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              Color(0xFFD70000),
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      ),
                                                                      TextSpan(
                                                                        text:
                                                                            '/ NIght',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.normal,
                                                                            ),
                                                                      )
                                                                    ],
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Work Sans',
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
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
                                          if (MicroserviceAvailabilityAPIsGroup
                                                  .propertyDetailsCall
                                                  .sharedBookingAllowed(
                                                propertyDetailsOldPropertyDetailsResponse
                                                    .jsonBody,
                                              ) ==
                                              true)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 14.0, 0.0, 0.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text:
                                                          'Individual Room Or Entire property booking available ',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Work Sans',
                                                        color:
                                                            Color(0xFFF9AE39),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14.0,
                                                      ),
                                                    )
                                                  ],
                                                  style: GoogleFonts.getFont(
                                                    'Work Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 16.0,
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
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 22.0, 0.0, 0.0),
                                        child: Container(
                                          height: 350.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
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
                                                alignment: AlignmentDirectional(
                                                    1.0, 1.0),
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.65,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      child: Hero(
                                                        tag: functions
                                                            .initImg(
                                                                functions
                                                                    .listDataConversion(MicroserviceAvailabilityAPIsGroup
                                                                        .propertyDetailsCall
                                                                        .imgesUrls(
                                                                      propertyDetailsOldPropertyDetailsResponse
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
                                                                        .listDataConversion(MicroserviceAvailabilityAPIsGroup
                                                                            .propertyDetailsCall
                                                                            .imgesUrls(
                                                                          propertyDetailsOldPropertyDetailsResponse
                                                                              .jsonBody,
                                                                        ))
                                                                        ?.toList(),
                                                                    FFAppState()
                                                                        .BaseUrl)!
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
                                                                      ? FocusScope.of(
                                                                              context)
                                                                          .requestFocus(_model
                                                                              .unfocusNode)
                                                                      : FocusScope.of(
                                                                              context)
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
                                                                                propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                              ))
                                                                              ?.toList(),
                                                                          FFAppState().BaseUrl),
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ).then((value) =>
                                                              setState(() {}));
                                                        },
                                                        text: 'Show All Photos',
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
                                              Flexible(
                                                child: Container(
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
                                                                            propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                          ))
                                                                          ?.toList(),
                                                                      FFAppState()
                                                                          .BaseUrl)
                                                                  ?.toList() ??
                                                              [])
                                                          .take(4)
                                                          .toList();
                                                      return Wrap(
                                                        spacing: 10.0,
                                                        runSpacing: 10.0,
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
                                                            width: 190.0,
                                                            height: 165.0,
                                                            decoration:
                                                                BoxDecoration(
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
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  8.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: double.infinity,
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
                                                                      16.0,
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
                                                                  'Description',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
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
                                                                child: Padding(
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
                                                                        propertyDetailsOldPropertyDetailsResponse
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
                                                                    '${functions.daysCalculation(_model.selectedFromToDates.toList()) > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()).toString() : '0'} Nights at ${valueOrDefault<String>(
                                                                      MicroserviceAvailabilityAPIsGroup
                                                                          .propertyDetailsCall
                                                                          .title(
                                                                        propertyDetailsOldPropertyDetailsResponse
                                                                            .jsonBody,
                                                                      ),
                                                                      'NA',
                                                                    )}',
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
                                                                    '${_model.selectedFromToDates.length > 0 ? dateTimeFormat('dd MMM yyyy', _model.selectedFromToDates.first) : 'Check-In Date'} - ${_model.selectedFromToDates.length > 0 ? dateTimeFormat('dd MMM yyyy', _model.selectedFromToDates.last) : 'Check-Out Date'}',
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
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child:
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
                                                                      propAvailableFromDate:
                                                                          getJsonField(
                                                                        propertyDetailsOldPropertyDetailsResponse
                                                                            .jsonBody,
                                                                        r'''$.availableFrom''',
                                                                      ).toString(),
                                                                      propBookedDates:
                                                                          getJsonField(
                                                                        propertyDetailsOldPropertyDetailsResponse
                                                                            .jsonBody,
                                                                        r'''$.bookedDates''',
                                                                      ).toString(),
                                                                      isModifyAllowed:
                                                                          false,
                                                                      onChangeAction:
                                                                          () async {
                                                                        _model.selectedFromToDates = FFAppState()
                                                                            .selectedDateRange
                                                                            .toList()
                                                                            .cast<DateTime>();
                                                                        setState(
                                                                            () {});
                                                                        FFAppState().bookingDetails =
                                                                            BookingDetailsStruct(
                                                                          propLocality:
                                                                              valueOrDefault<String>(
                                                                            MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.locality(
                                                                              propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                            ),
                                                                            'NA',
                                                                          ),
                                                                          propCity:
                                                                              valueOrDefault<String>(
                                                                            MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.city(
                                                                              propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                            ),
                                                                            'NA',
                                                                          ),
                                                                          propBasePrice:
                                                                              valueOrDefault<double>(
                                                                            getJsonField(
                                                                              propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                              r'''$.totalPrice''',
                                                                            ),
                                                                            0.0,
                                                                          ),
                                                                          guestsCount: _model
                                                                              .reserveCardModel
                                                                              .guestsCount,
                                                                          taxPercentage:
                                                                              getJsonField(
                                                                            propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                            r'''$.taxPercent''',
                                                                          ),
                                                                          checkInDate: _model
                                                                              .selectedFromToDates
                                                                              .first,
                                                                          checkOutDate: _model
                                                                              .selectedFromToDates
                                                                              .last,
                                                                          noOfBedrooms:
                                                                              valueOrDefault<int>(
                                                                            MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bedrooms(
                                                                              propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                            ),
                                                                            0,
                                                                          ),
                                                                          noOfBeds: MicroserviceAvailabilityAPIsGroup
                                                                              .propertyDetailsCall
                                                                              .beds(
                                                                            propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                          ),
                                                                          noOfBathrooms:
                                                                              valueOrDefault<int>(
                                                                            MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bathRooms(
                                                                              propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                            ),
                                                                            0,
                                                                          ),
                                                                          nightPrice: functions.getPrice(
                                                                              functions.daysCalculation(_model.selectedFromToDates.toList()) > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 1,
                                                                              getJsonField(
                                                                                propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                                r'''$.totalPrice''',
                                                                              )),
                                                                          taxPrice: functions.getPricePercentage(
                                                                              functions.getPrice(
                                                                                  functions.daysCalculation(_model.selectedFromToDates.toList()) > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 1,
                                                                                  getJsonField(
                                                                                    propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                                    r'''$.totalPrice''',
                                                                                  )),
                                                                              getJsonField(
                                                                                propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                                r'''$.taxPercent''',
                                                                              )),
                                                                          totalPrice: functions.getPriceTotal(
                                                                              functions.getPrice(
                                                                                  functions.daysCalculation(_model.selectedFromToDates.toList()) > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 1,
                                                                                  getJsonField(
                                                                                    propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                                    r'''$.totalPrice''',
                                                                                  )),
                                                                              functions.getPricePercentage(
                                                                                  functions.getPrice(
                                                                                      functions.daysCalculation(_model.selectedFromToDates.toList()) > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 1,
                                                                                      getJsonField(
                                                                                        propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.totalPrice''',
                                                                                      )),
                                                                                  getJsonField(
                                                                                    propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                                    r'''$.taxPercent''',
                                                                                  ))),
                                                                          noOfStayingDaysCount: functions.daysCalculation(_model.selectedFromToDates.toList()) > 0
                                                                              ? functions.daysCalculation(_model.selectedFromToDates.toList())
                                                                              : 1,
                                                                          propTitle:
                                                                              getJsonField(
                                                                            propertyDetailsOldPropertyDetailsResponse.jsonBody,
                                                                            r'''$.title''',
                                                                          ).toString(),
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                      },
                                                                    ),
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
                                                                      16.0,
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
                                                                            'Work Sans',
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
                                                                child: Padding(
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
                                                                                  propertyDetailsOldPropertyDetailsResponse.jsonBody,
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
                                                                          children: List.generate(
                                                                              amenitiesData.length,
                                                                              (amenitiesDataIndex) {
                                                                            final amenitiesDataItem =
                                                                                amenitiesData[amenitiesDataIndex];
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
                                                                                      fit: BoxFit.contain,
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
                                                                                          fontFamily: 'Work Sans',
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
                                                                      16.0,
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
                                                                            'Work Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                desktop: false,
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
                                                                    child: Wrap(
                                                                      spacing:
                                                                          20.0,
                                                                      runSpacing:
                                                                          30.0,
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
                                                                          Clip.antiAlias,
                                                                      children: [
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.houseRuleCardModel1,
                                                                          updateCallback: () =>
                                                                              setState(() {}),
                                                                          child:
                                                                              HouseRuleCardWidget(
                                                                            ruleNumber:
                                                                                '01',
                                                                            ruleHeading:
                                                                                'Check In',
                                                                            ruleDescription:
                                                                                'From 12:00 PM',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.houseRuleCardModel2,
                                                                          updateCallback: () =>
                                                                              setState(() {}),
                                                                          child:
                                                                              HouseRuleCardWidget(
                                                                            ruleNumber:
                                                                                '02',
                                                                            ruleHeading:
                                                                                'Check Out',
                                                                            ruleDescription:
                                                                                'From 11:00 AM',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.houseRuleCardModel3,
                                                                          updateCallback: () =>
                                                                              setState(() {}),
                                                                          child:
                                                                              HouseRuleCardWidget(
                                                                            ruleNumber:
                                                                                '03',
                                                                            ruleHeading:
                                                                                'Smoking',
                                                                            ruleDescription:
                                                                                'Smoking is not allowed.',
                                                                          ),
                                                                        ),
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.houseRuleCardModel4,
                                                                          updateCallback: () =>
                                                                              setState(() {}),
                                                                          child:
                                                                              HouseRuleCardWidget(
                                                                            ruleNumber:
                                                                                '04',
                                                                            ruleHeading:
                                                                                'Parties',
                                                                            ruleDescription:
                                                                                'Parties/events are not allowed.',
                                                                          ),
                                                                        ),
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              wrapWithModel(
                                                                            model:
                                                                                _model.houseRuleCardModel5,
                                                                            updateCallback: () =>
                                                                                setState(() {}),
                                                                            child:
                                                                                HouseRuleCardWidget(
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
                                                                    child: Wrap(
                                                                      spacing:
                                                                          20.0,
                                                                      runSpacing:
                                                                          30.0,
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
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                          child:
                                                                              wrapWithModel(
                                                                            model:
                                                                                _model.houseRuleCardModel10,
                                                                            updateCallback: () =>
                                                                                setState(() {}),
                                                                            child:
                                                                                HouseRuleCardWidget(
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
                                                                height: 20.0)),
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
                                                model: _model.reserveCardModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: ReserveCardWidget(
                                                  priceValue: getJsonField(
                                                    propertyDetailsOldPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.totalPrice''',
                                                  ),
                                                  noOfGuests:
                                                      valueOrDefault<int>(
                                                    MicroserviceAvailabilityAPIsGroup
                                                        .propertyDetailsCall
                                                        .totalGuests(
                                                      propertyDetailsOldPropertyDetailsResponse
                                                          .jsonBody,
                                                    ),
                                                    0,
                                                  ),
                                                  selectedFromToDates: _model
                                                      .selectedFromToDates,
                                                  taxPercent: getJsonField(
                                                    propertyDetailsOldPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.taxPercent''',
                                                  ),
                                                  bedsCount: getJsonField(
                                                    propertyDetailsOldPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.beds''',
                                                  ),
                                                  bathroomsCount: getJsonField(
                                                    propertyDetailsOldPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.bathrooms''',
                                                  ),
                                                  bedroomsCount: getJsonField(
                                                    propertyDetailsOldPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.bedrooms''',
                                                  ),
                                                  locality: getJsonField(
                                                    propertyDetailsOldPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.locality''',
                                                  ).toString(),
                                                  city: getJsonField(
                                                    propertyDetailsOldPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.city''',
                                                  ).toString(),
                                                  title: getJsonField(
                                                    propertyDetailsOldPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.title''',
                                                  ).toString(),
                                                  articleid: FFAppState()
                                                      .PropertyDetailsPage
                                                      .articleId,
                                                  propertyId: getJsonField(
                                                    propertyDetailsOldPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.propertyId''',
                                                  ),
                                                  propertyType: getJsonField(
                                                    propertyDetailsOldPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.propertyType''',
                                                  ).toString(),
                                                  isModifyBooking: false,
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
                                          16.0,
                                          valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width <=
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
                                                alignment: AlignmentDirectional(
                                                    -1.0, -1.0),
                                                child: Text(
                                                  'User Reviews',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Work Sans',
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
                                                    propertyDetailsOldPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.totalReviews''',
                                                  ).toString()} Reviews',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 0.0),
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
                                                      propertyId: getJsonField(
                                                        propertyDetailsOldPropertyDetailsResponse
                                                            .jsonBody,
                                                        r'''$.propertyId''',
                                                      ).toString(),
                                                    ),
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  shrinkWrap: true,
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
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    16.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    16.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    16.0),
                                                            topRight:
                                                                Radius.circular(
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
                                                              'Key0sz_${ratingReviewDataIndex}_of_${_model.listViewPagingController!.itemList!.length}'),
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
                        if (responsiveVisibility(
                          context: context,
                          phone: false,
                          tablet: false,
                          tabletLandscape: false,
                        ))
                          Container(
                            width: 58.0,
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
                      model: _model.webCopyWriteModel,
                      updateCallback: () => setState(() {}),
                      child: WebCopyWriteWidget(),
                    ),
                  if (responsiveVisibility(
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
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 20.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'INR. ${getJsonField(
                                        propertyDetailsOldPropertyDetailsResponse
                                            .jsonBody,
                                        r'''$.totalPrice''',
                                      ).toString()}',
                                      style: GoogleFonts.getFont(
                                        'Work Sans',
                                        color: Color(0xFFD70000),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    Text(
                                      ' / night',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Work Sans',
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Builder(
                                  builder: (context) => FFButtonWidget(
                                    onPressed: () async {
                                      if (FFAppState().accessToken != null &&
                                          FFAppState().accessToken != '') {
                                        FFAppState().BookingDetailsPage =
                                            BookingDetailsPageStruct(
                                          taxPercent: (double var1) {
                                            return int.parse("${var1.round()}");
                                          }(getJsonField(
                                            propertyDetailsOldPropertyDetailsResponse
                                                .jsonBody,
                                            r'''$.taxPercent''',
                                          )),
                                          title: getJsonField(
                                            propertyDetailsOldPropertyDetailsResponse
                                                .jsonBody,
                                            r'''$.title''',
                                          ).toString(),
                                          locality: getJsonField(
                                            propertyDetailsOldPropertyDetailsResponse
                                                .jsonBody,
                                            r'''$.locality''',
                                          ).toString(),
                                          city: getJsonField(
                                            propertyDetailsOldPropertyDetailsResponse
                                                .jsonBody,
                                            r'''$.city''',
                                          ).toString(),
                                          guestCount:
                                              MicroserviceAvailabilityAPIsGroup
                                                  .propertyDetailsCall
                                                  .totalGuests(
                                            propertyDetailsOldPropertyDetailsResponse
                                                .jsonBody,
                                          ),
                                          availableFromDate: getJsonField(
                                            propertyDetailsOldPropertyDetailsResponse
                                                .jsonBody,
                                            r'''$.availableFrom''',
                                          ).toString(),
                                          bookedDates: getJsonField(
                                            propertyDetailsOldPropertyDetailsResponse
                                                .jsonBody,
                                            r'''$.bookedDates''',
                                          ).toString(),
                                          propTypes: getJsonField(
                                            propertyDetailsOldPropertyDetailsResponse
                                                .jsonBody,
                                            r'''$.propertyType''',
                                          ).toString(),
                                          bedCount:
                                              MicroserviceAvailabilityAPIsGroup
                                                  .propertyDetailsCall
                                                  .beds(
                                            propertyDetailsOldPropertyDetailsResponse
                                                .jsonBody,
                                          ),
                                          bedRoomCount:
                                              MicroserviceAvailabilityAPIsGroup
                                                  .propertyDetailsCall
                                                  .bedrooms(
                                            propertyDetailsOldPropertyDetailsResponse
                                                .jsonBody,
                                          ),
                                          bathRoomCount:
                                              MicroserviceAvailabilityAPIsGroup
                                                  .propertyDetailsCall
                                                  .bathRooms(
                                            propertyDetailsOldPropertyDetailsResponse
                                                .jsonBody,
                                          ),
                                          propId:
                                              MicroserviceAvailabilityAPIsGroup
                                                  .propertyDetailsCall
                                                  .propertyId(
                                            propertyDetailsOldPropertyDetailsResponse
                                                .jsonBody,
                                          ),
                                          totalPrice: getJsonField(
                                            propertyDetailsOldPropertyDetailsResponse
                                                .jsonBody,
                                            r'''$.totalPrice''',
                                          ),
                                          partialBookedDates: getJsonField(
                                            propertyDetailsOldPropertyDetailsResponse
                                                .jsonBody,
                                            r'''$.partialBookedDates''',
                                          ).toString(),
                                        );
                                        setState(() {});

                                        context.pushNamed(
                                          'booking_details',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );

                                        return;
                                      } else {
                                        if (MediaQuery.sizeOf(context).width <=
                                            900.0) {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
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
                                                        0.7,
                                                    child: LoginWidget(),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
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
                                                        0.0, 0.0)
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
                                          ).then((value) => setState(() {}));
                                        }

                                        return;
                                      }
                                    },
                                    text: 'Continue',
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.5,
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
                                            fontFamily: 'Work Sans',
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(100.0),
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
        );
      },
    );
  }
}
