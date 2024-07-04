import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login/login_widget.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/homepage_new_web_screens/propertydetails/new_details_card/new_details_card_widget.dart';
import '/luxary_homes/homepage_new_web_screens/propertydetails/new_user_reviews/new_user_reviews_widget.dart';
import '/luxary_homes/users/filter/filter_widget.dart';
import '/luxary_homes/users/house_rule_card/house_rule_card_widget.dart';
import '/luxary_homes/users/search/search_widget.dart';
import '/luxary_homes/users/user_reviews/user_reviews_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'property_details_copy_model.dart';
export 'property_details_copy_model.dart';

class PropertyDetailsCopyWidget extends StatefulWidget {
  const PropertyDetailsCopyWidget({
    super.key,
    required this.id,
    required this.index,
  });

  final dynamic id;
  final int? index;

  @override
  State<PropertyDetailsCopyWidget> createState() =>
      _PropertyDetailsCopyWidgetState();
}

class _PropertyDetailsCopyWidgetState extends State<PropertyDetailsCopyWidget> {
  late PropertyDetailsCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropertyDetailsCopyModel());

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
        final propertyDetailsCopyPropertyDetailsResponse = snapshot.data!;
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
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
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
                                        text: 'Login',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontSize: 20.0,
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
                                          fontSize: 20.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'SignUp',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20.0,
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
                  if (responsiveVisibility(
                    context: context,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    Flexible(
                      child: Container(
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: double.infinity,
                              height: 232.0,
                              decoration: BoxDecoration(),
                              child: Stack(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: custom_widgets.ImageSliderWidget(
                                      width: double.infinity,
                                      height: double.infinity,
                                      isTopCorners: false,
                                      imgList: functions.listDataConversion(
                                          valueOrDefault<String>(
                                        MicroserviceAvailabilityAPIsGroup
                                            .propertyDetailsCall
                                            .imgesUrls(
                                          propertyDetailsCopyPropertyDetailsResponse
                                              .jsonBody,
                                        ),
                                        'NA',
                                      )),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 10.0, 10.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius: 20.0,
                                          borderWidth: 1.0,
                                          buttonSize: 36.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
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
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 11.0),
                                      child: Container(
                                        width: 30.0,
                                        height: 6.0,
                                        decoration: BoxDecoration(),
                                        child: Visibility(
                                          visible: false,
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 1.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 6.0,
                                                  height: 6.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                                Container(
                                                  width: 6.0,
                                                  height: 6.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                                Container(
                                                  width: 6.0,
                                                  height: 6.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                              ].divide(SizedBox(width: 6.0)),
                                            ),
                                          ),
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
                                    0.0, 16.0, 0.0, 0.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 12.0, 12.0, 12.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (responsiveVisibility(
                                                          context: context,
                                                          phone: false,
                                                          tablet: false,
                                                          tabletLandscape:
                                                              false,
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
                                                              borderRadius:
                                                                  20.0,
                                                              borderWidth: 1.0,
                                                              buttonSize: 36.0,
                                                              fillColor: Color(
                                                                  0x4DBBD1EA),
                                                              icon: Icon(
                                                                Icons
                                                                    .arrow_back_ios_rounded,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 18.0,
                                                              ),
                                                              onPressed:
                                                                  () async {
                                                                context
                                                                    .safePop();
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
                                                                  propertyDetailsCopyPropertyDetailsResponse
                                                                      .jsonBody,
                                                                ),
                                                                'NA',
                                                              ),
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
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
                                                              propertyDetailsCopyPropertyDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.averageRatings''',
                                                            ).toString())! >
                                                            0.0)
                                                          SizedBox(
                                                            height: 20.0,
                                                            child:
                                                                VerticalDivider(
                                                              width: 1.43,
                                                              thickness: 1.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                            ),
                                                          ),
                                                        if (functions.toDouble(
                                                                getJsonField(
                                                              propertyDetailsCopyPropertyDetailsResponse
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
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                RatingBar
                                                                    .builder(
                                                                  onRatingUpdate:
                                                                      (newValue) =>
                                                                          setState(() =>
                                                                              _model.ratingBarValue1 = newValue),
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
                                                                  initialRating:
                                                                      _model.ratingBarValue1 ??=
                                                                          getJsonField(
                                                                    propertyDetailsCopyPropertyDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.averageRatings''',
                                                                  ),
                                                                  unratedColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .accent3,
                                                                  itemCount: 5,
                                                                  itemSize:
                                                                      18.0,
                                                                  glowColor: FlutterFlowTheme.of(
                                                                          context)
                                                                      .tertiary,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '(${getJsonField(
                                                                      propertyDetailsCopyPropertyDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.totalReviews''',
                                                                    ).toString()})',
                                                                    style: GoogleFonts
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
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  14.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        0.0),
                                                            child: SvgPicture
                                                                .asset(
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
                                                                  propertyDetailsCopyPropertyDetailsResponse
                                                                      .jsonBody,
                                                                ),
                                                                'NA',
                                                              )}, ${valueOrDefault<String>(
                                                                MicroserviceAvailabilityAPIsGroup
                                                                    .propertyDetailsCall
                                                                    .street(
                                                                  propertyDetailsCopyPropertyDetailsResponse
                                                                      .jsonBody,
                                                                ),
                                                                'NA',
                                                              )}, ${valueOrDefault<String>(
                                                                MicroserviceAvailabilityAPIsGroup
                                                                    .propertyDetailsCall
                                                                    .locality(
                                                                  propertyDetailsCopyPropertyDetailsResponse
                                                                      .jsonBody,
                                                                ),
                                                                'NA',
                                                              )}, ${valueOrDefault<String>(
                                                                MicroserviceAvailabilityAPIsGroup
                                                                    .propertyDetailsCall
                                                                    .city(
                                                                  propertyDetailsCopyPropertyDetailsResponse
                                                                      .jsonBody,
                                                                ),
                                                                'NA',
                                                              )}, ${valueOrDefault<String>(
                                                                MicroserviceAvailabilityAPIsGroup
                                                                    .propertyDetailsCall
                                                                    .state(
                                                                  propertyDetailsCopyPropertyDetailsResponse
                                                                      .jsonBody,
                                                                ),
                                                                'NA',
                                                              )} - ${valueOrDefault<String>(
                                                                MicroserviceAvailabilityAPIsGroup
                                                                    .propertyDetailsCall
                                                                    .zipcode(
                                                                  propertyDetailsCopyPropertyDetailsResponse
                                                                      .jsonBody,
                                                                ),
                                                                'NA',
                                                              )}, ${valueOrDefault<String>(
                                                                MicroserviceAvailabilityAPIsGroup
                                                                    .propertyDetailsCall
                                                                    .country(
                                                                  propertyDetailsCopyPropertyDetailsResponse
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
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    lineHeight:
                                                                        1.2,
                                                                  ),
                                                            ),
                                                          ),
                                                        ].divide(SizedBox(
                                                            width: 5.0)),
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
                                                              direction: Axis
                                                                  .horizontal,
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
                                                                            20.0,
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
                                                                                propertyDetailsCopyPropertyDetailsResponse.jsonBody,
                                                                              )
                                                                              ?.toString(),
                                                                          'NA',
                                                                        )}${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.totalGuests(
                                                                              propertyDetailsCopyPropertyDetailsResponse.jsonBody,
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
                                                                      width:
                                                                          5.0)),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          6.0,
                                                                      height:
                                                                          6.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        '${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bedrooms(
                                                                              propertyDetailsCopyPropertyDetailsResponse.jsonBody,
                                                                            )?.toString()}${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bedrooms(
                                                                              propertyDetailsCopyPropertyDetailsResponse.jsonBody,
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
                                                                      width:
                                                                          15.0)),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          6.0,
                                                                      height:
                                                                          6.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
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
                                                                                propertyDetailsCopyPropertyDetailsResponse.jsonBody,
                                                                              )
                                                                              ?.toString(),
                                                                          'NA',
                                                                        )}${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.beds(
                                                                              propertyDetailsCopyPropertyDetailsResponse.jsonBody,
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
                                                                      width:
                                                                          15.0)),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          6.0,
                                                                      height:
                                                                          6.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
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
                                                                                propertyDetailsCopyPropertyDetailsResponse.jsonBody,
                                                                              )
                                                                              ?.toString(),
                                                                          'NA',
                                                                        )}${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bathRooms(
                                                                              propertyDetailsCopyPropertyDetailsResponse.jsonBody,
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
                                                                      width:
                                                                          15.0)),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          6.0,
                                                                      height:
                                                                          6.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
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
                                                                                propertyDetailsCopyPropertyDetailsResponse.jsonBody,
                                                                              )
                                                                              ?.toString(),
                                                                          'NA',
                                                                        )}${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.sharedWashrooms(
                                                                              propertyDetailsCopyPropertyDetailsResponse.jsonBody,
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
                                                                      width:
                                                                          15.0)),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          6.0,
                                                                      height:
                                                                          6.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      valueOrDefault<
                                                                          String>(
                                                                        '${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.guestsPerRoom(
                                                                              propertyDetailsCopyPropertyDetailsResponse.jsonBody,
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
                                                                      width:
                                                                          15.0)),
                                                                ),
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          6.0,
                                                                      height:
                                                                          6.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                    ),
                                                                    RichText(
                                                                      textScaler:
                                                                          MediaQuery.of(context)
                                                                              .textScaler,
                                                                      text:
                                                                          TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                            text:
                                                                                'INR. ${valueOrDefault<String>(
                                                                              MicroserviceAvailabilityAPIsGroup.propertyDetailsCall
                                                                                  .pricePerRoom(
                                                                                    propertyDetailsCopyPropertyDetailsResponse.jsonBody,
                                                                                  )
                                                                                  ?.toString(),
                                                                              'NA',
                                                                            )}',
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                              color: Color(0xFFD70000),
                                                                              fontSize: 16.0,
                                                                            ),
                                                                          ),
                                                                          TextSpan(
                                                                            text:
                                                                                '/ NIght',
                                                                            style: FlutterFlowTheme.of(context).titleSmall.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.normal,
                                                                                ),
                                                                          )
                                                                        ],
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: 'Work Sans',
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ].divide(SizedBox(
                                                                      width:
                                                                          15.0)),
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
                                                    propertyDetailsCopyPropertyDetailsResponse
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
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Work Sans',
                                                            color: Color(
                                                                0xFFF9AE39),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 14.0,
                                                          ),
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
                                            ],
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
                                          verticalDirection:
                                              VerticalDirection.up,
                                          clipBehavior: Clip.none,
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
                                                  child: Container(
                                                    decoration: BoxDecoration(),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
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
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        valueOrDefault<
                                                                            String>(
                                                                          MicroserviceAvailabilityAPIsGroup
                                                                              .propertyDetailsCall
                                                                              .desc(
                                                                            propertyDetailsCopyPropertyDetailsResponse.jsonBody,
                                                                          ),
                                                                          'NA',
                                                                        ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              fontSize: 16.0,
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
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
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
                                                                                      propertyDetailsCopyPropertyDetailsResponse.jsonBody,
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
                                                                              children: List.generate(amenitiesData.length, (amenitiesDataIndex) {
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
                                                                              model: _model.houseRuleCardModel1,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: HouseRuleCardWidget(
                                                                                ruleNumber: '01',
                                                                                ruleHeading: 'Check In',
                                                                                ruleDescription: 'From 12:00 PM',
                                                                              ),
                                                                            ),
                                                                            wrapWithModel(
                                                                              model: _model.houseRuleCardModel2,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: HouseRuleCardWidget(
                                                                                ruleNumber: '02',
                                                                                ruleHeading: 'Check Out',
                                                                                ruleDescription: 'From 11:00 AM',
                                                                              ),
                                                                            ),
                                                                            wrapWithModel(
                                                                              model: _model.houseRuleCardModel3,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: HouseRuleCardWidget(
                                                                                ruleNumber: '03',
                                                                                ruleHeading: 'Smoking',
                                                                                ruleDescription: 'Smoking is not allowed.',
                                                                              ),
                                                                            ),
                                                                            wrapWithModel(
                                                                              model: _model.houseRuleCardModel4,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: HouseRuleCardWidget(
                                                                                ruleNumber: '04',
                                                                                ruleHeading: 'Parties',
                                                                                ruleDescription: 'Parties/events are not allowed.',
                                                                              ),
                                                                            ),
                                                                            Align(
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: wrapWithModel(
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
                                                                    phone:
                                                                        false,
                                                                    tablet:
                                                                        false,
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
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                                              alignment: AlignmentDirectional(-1.0, 0.0),
                                                                              child: wrapWithModel(
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
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0,
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
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Work Sans',
                                                            fontSize: 20.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '${getJsonField(
                                                        propertyDetailsCopyPropertyDetailsResponse
                                                            .jsonBody,
                                                        r'''$.totalReviews''',
                                                      ).toString()} Reviews',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Work Sans',
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
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.9,
                                                    height: 242.0,
                                                    decoration: BoxDecoration(),
                                                    child: PagedListView<
                                                        ApiPagingParams,
                                                        dynamic>.separated(
                                                      pagingController: _model
                                                          .setListViewController1(
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
                                                            propertyDetailsCopyPropertyDetailsResponse
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
                                                      separatorBuilder: (_,
                                                              __) =>
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

                                                        itemBuilder: (context,
                                                            _,
                                                            ratingReviewDataIndex) {
                                                          final ratingReviewDataItem = _model
                                                                  .listViewPagingController1!
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
                                                                bottomRight: Radius
                                                                    .circular(
                                                                        16.0),
                                                                topLeft: Radius
                                                                    .circular(
                                                                        16.0),
                                                                topRight: Radius
                                                                    .circular(
                                                                        16.0),
                                                              ),
                                                              border:
                                                                  Border.all(
                                                                color: Color(
                                                                    0xFFBBD1EA),
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child:
                                                                UserReviewsWidget(
                                                              key: Key(
                                                                  'Keyh7h_${ratingReviewDataIndex}_of_${_model.listViewPagingController1!.itemList!.length}'),
                                                              userName:
                                                                  getJsonField(
                                                                ratingReviewDataItem,
                                                                r'''$.userName''',
                                                              ).toString(),
                                                              score:
                                                                  getJsonField(
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 70.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'INR. ${getJsonField(
                                                propertyDetailsCopyPropertyDetailsResponse
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
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                                              if (FFAppState().accessToken !=
                                                      null &&
                                                  FFAppState().accessToken !=
                                                      '') {
                                                FFAppState()
                                                        .BookingDetailsPage =
                                                    BookingDetailsPageStruct(
                                                  taxPercent: (double var1) {
                                                    return int.parse(
                                                        "${var1.round()}");
                                                  }(getJsonField(
                                                    propertyDetailsCopyPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.taxPercent''',
                                                  )),
                                                  title: getJsonField(
                                                    propertyDetailsCopyPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.title''',
                                                  ).toString(),
                                                  locality: getJsonField(
                                                    propertyDetailsCopyPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.locality''',
                                                  ).toString(),
                                                  city: getJsonField(
                                                    propertyDetailsCopyPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.city''',
                                                  ).toString(),
                                                  guestCount:
                                                      MicroserviceAvailabilityAPIsGroup
                                                          .propertyDetailsCall
                                                          .totalGuests(
                                                    propertyDetailsCopyPropertyDetailsResponse
                                                        .jsonBody,
                                                  ),
                                                  availableFromDate:
                                                      getJsonField(
                                                    propertyDetailsCopyPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.availableFrom''',
                                                  ).toString(),
                                                  bookedDates: getJsonField(
                                                    propertyDetailsCopyPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.bookedDates''',
                                                  ).toString(),
                                                  propTypes: getJsonField(
                                                    propertyDetailsCopyPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.propertyType''',
                                                  ).toString(),
                                                  bedCount:
                                                      MicroserviceAvailabilityAPIsGroup
                                                          .propertyDetailsCall
                                                          .beds(
                                                    propertyDetailsCopyPropertyDetailsResponse
                                                        .jsonBody,
                                                  ),
                                                  bedRoomCount:
                                                      MicroserviceAvailabilityAPIsGroup
                                                          .propertyDetailsCall
                                                          .bedrooms(
                                                    propertyDetailsCopyPropertyDetailsResponse
                                                        .jsonBody,
                                                  ),
                                                  bathRoomCount:
                                                      MicroserviceAvailabilityAPIsGroup
                                                          .propertyDetailsCall
                                                          .bathRooms(
                                                    propertyDetailsCopyPropertyDetailsResponse
                                                        .jsonBody,
                                                  ),
                                                  propId:
                                                      MicroserviceAvailabilityAPIsGroup
                                                          .propertyDetailsCall
                                                          .propertyId(
                                                    propertyDetailsCopyPropertyDetailsResponse
                                                        .jsonBody,
                                                  ),
                                                  totalPrice: getJsonField(
                                                    propertyDetailsCopyPropertyDetailsResponse
                                                        .jsonBody,
                                                    r'''$.totalPrice''',
                                                  ),
                                                  pricePerRoom:
                                                      MicroserviceAvailabilityAPIsGroup
                                                          .propertyDetailsCall
                                                          .pricePerRoom(
                                                    propertyDetailsCopyPropertyDetailsResponse
                                                        .jsonBody,
                                                  ),
                                                  partialBookedDates:
                                                      MicroserviceAvailabilityAPIsGroup
                                                          .propertyDetailsCall
                                                          .partiallyBookedDates(
                                                    propertyDetailsCopyPropertyDetailsResponse
                                                        .jsonBody,
                                                  ),
                                                );
                                                setState(() {});

                                                context.pushNamed(
                                                  'booking_details',
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

                                                return;
                                              } else {
                                                if (MediaQuery.sizeOf(context)
                                                        .width <=
                                                    900.0) {
                                                  await showModalBottomSheet(
                                                    isScrollControlled: true,
                                                    backgroundColor:
                                                        Colors.transparent,
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
                                                                0.7,
                                                            child:
                                                                LoginWidget(),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      safeSetState(() {}));
                                                } else {
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
                                                          child: Container(
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.9,
                                                            width: MediaQuery
                                                                        .sizeOf(
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
                                                }

                                                return;
                                              }
                                            },
                                            text: 'Continue',
                                            options: FFButtonOptions(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.5,
                                              height: 36.0,
                                              padding: EdgeInsets.all(0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
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
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                  ))
                    Flexible(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFFEFEFE),
                                    Color(0xFFF5F5F5)
                                  ],
                                  stops: [0.0, 1.0],
                                  begin: AlignmentDirectional(0.0, -1.0),
                                  end: AlignmentDirectional(0, 1.0),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            1536.0) {
                                          return 45.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            1750.0) {
                                          return 90.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width >
                                            1536.0) {
                                          return 120.0;
                                        } else {
                                          return 0.0;
                                        }
                                      }(),
                                      decoration: BoxDecoration(),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.28,
                                      height: double.infinity,
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              FlutterFlowIconButton(
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                borderRadius: 30.0,
                                                borderWidth: 1.0,
                                                fillColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                icon: Icon(
                                                  Icons.chevron_left,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  size: 24.0,
                                                ),
                                                onPressed: () async {
                                                  context.safePop();
                                                  FFAppState()
                                                      .selectedDateRange = [];
                                                  FFAppState().update(() {});
                                                },
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'HOME',
                                                  style: GoogleFonts.getFont(
                                                    'Work Sans',
                                                    color: Color(0xFF000D3E),
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Flexible(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 18.0, 0.0, 0.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsets.all(8.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Flexible(
                                                        child: Container(
                                                          height: 45.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFF6F7FA),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              Flexible(
                                                                child:
                                                                    Container(
                                                                  height: 45.0,
                                                                  decoration:
                                                                      BoxDecoration(),
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) =>
                                                                            InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        await showDialog(
                                                                          barrierColor:
                                                                              Color(0xCC000D3E),
                                                                          barrierDismissible:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (dialogContext) {
                                                                            return Dialog(
                                                                              elevation: 0,
                                                                              insetPadding: EdgeInsets.zero,
                                                                              backgroundColor: Colors.transparent,
                                                                              alignment: AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                              child: GestureDetector(
                                                                                onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                child: Container(
                                                                                  height: MediaQuery.sizeOf(context).height * 1.0,
                                                                                  width: MediaQuery.sizeOf(context).width * 0.3,
                                                                                  child: SearchWidget(),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            setState(() {}));
                                                                      },
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceEvenly,
                                                                        children: [
                                                                          ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(0.0),
                                                                            child:
                                                                                SvgPicture.asset(
                                                                              'assets/images/uil_search_(1).svg',
                                                                              width: 23.0,
                                                                              height: 23.0,
                                                                              fit: BoxFit.contain,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 5.0,
                                                                                    height: 5.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFA0A7AF),
                                                                                      shape: BoxShape.circle,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'Any Place',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: Color(0xFFA0A7AF),
                                                                                    fontSize: 12.0,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 5.0,
                                                                                    height: 5.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFA0A7AF),
                                                                                      shape: BoxShape.circle,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'Any Date',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: Color(0xFFA0A7AF),
                                                                                    fontSize: 12.0,
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 4.0, 0.0),
                                                                                  child: Container(
                                                                                    width: 5.0,
                                                                                    height: 5.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: Color(0xFFA0A7AF),
                                                                                      shape: BoxShape.circle,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Text(
                                                                                  'Select Guests',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: Color(0xFFA0A7AF),
                                                                                    fontSize: 12.0,
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
                                                              Builder(
                                                                builder:
                                                                    (context) =>
                                                                        Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      await showDialog(
                                                                        barrierColor:
                                                                            Color(0xCC000D3E),
                                                                        barrierDismissible:
                                                                            false,
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (dialogContext) {
                                                                          return Dialog(
                                                                            elevation:
                                                                                0,
                                                                            insetPadding:
                                                                                EdgeInsets.zero,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: Container(
                                                                                width: MediaQuery.sizeOf(context).width * 0.3,
                                                                                child: FilterWidget(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));
                                                                    },
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: Image
                                                                          .asset(
                                                                        'assets/images/Group_1707478335.png',
                                                                        width:
                                                                            28.0,
                                                                        height:
                                                                            28.0,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
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
                                                                    5.0,
                                                                    16.0,
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
                                                                    'SID Luxury Homes Stays',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: Color(
                                                                      0xFF475569),
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
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              fontSize: 14.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(
                                                            color: Color(
                                                                0xFFF2F2F2),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child:
                                                              RefreshIndicator(
                                                            onRefresh:
                                                                () async {
                                                              setState(() => _model
                                                                  .listViewPagingController2
                                                                  ?.refresh());
                                                              await _model
                                                                  .waitForOnePageForListView2();
                                                            },
                                                            child: PagedListView<
                                                                ApiPagingParams,
                                                                dynamic>(
                                                              pagingController:
                                                                  _model
                                                                      .setListViewController2(
                                                                (nextPageMarker) =>
                                                                    MicroserviceAvailabilityAPIsGroup
                                                                        .propertyListingsCall
                                                                        .call(
                                                                  pageLoadItemsCount:
                                                                      6,
                                                                  pageNoCount:
                                                                      functions.incrementOne(nextPageMarker.nextPageNumber) >=
                                                                              0
                                                                          ? (nextPageMarker.nextPageNumber +
                                                                              1)
                                                                          : -1,
                                                                ),
                                                              ),
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              shrinkWrap: true,
                                                              reverse: false,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              builderDelegate:
                                                                  PagedChildBuilderDelegate<
                                                                      dynamic>(
                                                                // Customize what your widget looks like when it's loading the first page.
                                                                firstPageProgressIndicatorBuilder:
                                                                    (_) =>
                                                                        Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 40.0,
                                                                    height:
                                                                        40.0,
                                                                    child:
                                                                        SpinKitPulse(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          40.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                                // Customize what your widget looks like when it's loading another page.
                                                                newPageProgressIndicatorBuilder:
                                                                    (_) =>
                                                                        Center(
                                                                  child:
                                                                      SizedBox(
                                                                    width: 40.0,
                                                                    height:
                                                                        40.0,
                                                                    child:
                                                                        SpinKitPulse(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          40.0,
                                                                    ),
                                                                  ),
                                                                ),

                                                                itemBuilder:
                                                                    (context, _,
                                                                        listingsIndex) {
                                                                  final listingsItem = _model
                                                                          .listViewPagingController2!
                                                                          .itemList![
                                                                      listingsIndex];
                                                                  return Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            5.0,
                                                                            10.0,
                                                                            5.0),
                                                                    child:
                                                                        InkWell(
                                                                      splashColor:
                                                                          Colors
                                                                              .transparent,
                                                                      focusColor:
                                                                          Colors
                                                                              .transparent,
                                                                      hoverColor:
                                                                          Colors
                                                                              .transparent,
                                                                      highlightColor:
                                                                          Colors
                                                                              .transparent,
                                                                      onTap:
                                                                          () async {
                                                                        FFAppState().selectedDateRange =
                                                                            [];
                                                                        FFAppState()
                                                                            .nightsForStay = 0;
                                                                        FFAppState()
                                                                            .update(() {});
                                                                        await Future.delayed(const Duration(
                                                                            milliseconds:
                                                                                200));
                                                                        _model.propertyId =
                                                                            getJsonField(
                                                                          listingsItem,
                                                                          r'''$.propertyId''',
                                                                        );
                                                                        _model.heroImage = functions
                                                                            .initImg(
                                                                                functions
                                                                                    .listDataConversion(getJsonField(
                                                                                      listingsItem,
                                                                                      r'''$.imageURLs''',
                                                                                    ).toString())
                                                                                    ?.toList(),
                                                                                FFAppState().BaseUrl)
                                                                            ?.first;
                                                                        setState(
                                                                            () {});
                                                                      },
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              () {
                                                                            if (_model.propertyId ==
                                                                                getJsonField(
                                                                                  listingsItem,
                                                                                  r'''$.propertyId''',
                                                                                )) {
                                                                              return Color(0xFFE8E7FF);
                                                                            } else if ((widget.index == listingsIndex) && (_model.propertyId == null)) {
                                                                              return Color(0xFFE8E7FF);
                                                                            } else {
                                                                              return FlutterFlowTheme.of(context).primaryBackground;
                                                                            }
                                                                          }(),
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                        ),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                              children: [
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.only(
                                                                                    bottomLeft: Radius.circular(8.0),
                                                                                    bottomRight: Radius.circular(0.0),
                                                                                    topLeft: Radius.circular(8.0),
                                                                                    topRight: Radius.circular(0.0),
                                                                                  ),
                                                                                  child: CachedNetworkImage(
                                                                                    fadeInDuration: Duration(milliseconds: 500),
                                                                                    fadeOutDuration: Duration(milliseconds: 500),
                                                                                    imageUrl: functions
                                                                                        .initImg(
                                                                                            functions
                                                                                                .listDataConversion(getJsonField(
                                                                                                  listingsItem,
                                                                                                  r'''$.imageURLs''',
                                                                                                ).toString())
                                                                                                ?.toList(),
                                                                                            FFAppState().BaseUrl)!
                                                                                        .first,
                                                                                    width: 120.0,
                                                                                    height: 130.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                                Flexible(
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 10.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.min,
                                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                            children: [
                                                                                              Flexible(
                                                                                                child: Align(
                                                                                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      listingsItem,
                                                                                                      r'''$.title''',
                                                                                                    ).toString(),
                                                                                                    style: GoogleFonts.getFont(
                                                                                                      'Work Sans',
                                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                                      fontWeight: FontWeight.w600,
                                                                                                      fontSize: 16.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                            children: [
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(-1.0, 1.0),
                                                                                                child: ClipRRect(
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
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    '${getJsonField(
                                                                                                      listingsItem,
                                                                                                      r'''$.locality''',
                                                                                                    ).toString()} - ${getJsonField(
                                                                                                      listingsItem,
                                                                                                      r'''$.city''',
                                                                                                    ).toString()}',
                                                                                                    style: GoogleFonts.getFont(
                                                                                                      'Work Sans',
                                                                                                      color: Color(0xFF878787),
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
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Text(
                                                                                                'INR. ${getJsonField(
                                                                                                  listingsItem,
                                                                                                  r'''$.totalPrice''',
                                                                                                ).toString()}',
                                                                                                style: GoogleFonts.getFont(
                                                                                                  'Work Sans',
                                                                                                  color: Color(0xFFD70000),
                                                                                                  fontWeight: FontWeight.w600,
                                                                                                  fontSize: 14.0,
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                ' / Night',
                                                                                                style: GoogleFonts.getFont(
                                                                                                  'Work Sans',
                                                                                                  color: Colors.black,
                                                                                                  fontWeight: FontWeight.w600,
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
                                                                                            if (functions.toDouble(getJsonField(
                                                                                                  listingsItem,
                                                                                                  r'''$.averageRating''',
                                                                                                ).toString())! >
                                                                                                0.00)
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                  children: [
                                                                                                    Icon(
                                                                                                      Icons.star,
                                                                                                      color: Color(0xFFFFCC6A),
                                                                                                      size: 24.0,
                                                                                                    ),
                                                                                                    Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        getJsonField(
                                                                                                          listingsItem,
                                                                                                          r'''$.averageRating''',
                                                                                                        ).toString(),
                                                                                                        style: GoogleFonts.getFont(
                                                                                                          'Work Sans',
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                          fontWeight: FontWeight.w500,
                                                                                                          fontSize: 14.0,
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                              ),
                                                                                            Flexible(
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  ClipRRect(
                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                    child: SvgPicture.asset(
                                                                                                      'assets/images/house_(1).svg',
                                                                                                      width: 15.0,
                                                                                                      height: 15.0,
                                                                                                      fit: BoxFit.contain,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Flexible(
                                                                                                    child: Padding(
                                                                                                      padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                      child: Text(
                                                                                                        getJsonField(
                                                                                                          listingsItem,
                                                                                                          r'''$.propertyType''',
                                                                                                        ).toString(),
                                                                                                        style: GoogleFonts.getFont(
                                                                                                          'Work Sans',
                                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                                          fontWeight: FontWeight.normal,
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
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 0.0, 0.0),
                                        child: FutureBuilder<ApiCallResponse>(
                                          future:
                                              MicroserviceAvailabilityAPIsGroup
                                                  .propertyDetailsCall
                                                  .call(
                                            propertyId: () {
                                              if (_model.propertyId != null) {
                                                return _model.propertyId;
                                              } else if (widget.id != null) {
                                                return widget.id;
                                              } else if (widget.id == null) {
                                                return 23;
                                              } else {
                                                return 23;
                                              }
                                            }(),
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 40.0,
                                                  height: 40.0,
                                                  child: SpinKitPulse(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 40.0,
                                                  ),
                                                ),
                                              );
                                            }
                                            final containerPropertyDetailsResponse =
                                                snapshot.data!;
                                            return Container(
                                              decoration: BoxDecoration(),
                                              child: SingleChildScrollView(
                                                primary: false,
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
                                                                  20.0,
                                                                  24.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Expanded(
                                                            child: Material(
                                                              color: Colors
                                                                  .transparent,
                                                              elevation: 0.5,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
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
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                  child: Image
                                                                      .network(
                                                                    _model.heroImage ==
                                                                                null ||
                                                                            _model.heroImage ==
                                                                                ''
                                                                        ? functions
                                                                            .initImg(
                                                                                functions
                                                                                    .listDataConversion(getJsonField(
                                                                                      containerPropertyDetailsResponse.jsonBody,
                                                                                      r'''$.imageURLs''',
                                                                                    ).toString())
                                                                                    ?.toList(),
                                                                                FFAppState().BaseUrl)!
                                                                            .first
                                                                        : _model.heroImage!,
                                                                    height:
                                                                        MediaQuery.sizeOf(context).height *
                                                                            0.5,
                                                                    fit: BoxFit
                                                                        .cover,
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
                                                                        .listDataConversion(getJsonField(
                                                                          containerPropertyDetailsResponse
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
                                                            children: List.generate(
                                                                imagesList
                                                                    .length,
                                                                (imagesListIndex) {
                                                              final imagesListItem =
                                                                  imagesList[
                                                                      imagesListIndex];
                                                              return Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 0.5,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      InkWell(
                                                                    splashColor:
                                                                        Colors
                                                                            .transparent,
                                                                    focusColor:
                                                                        Colors
                                                                            .transparent,
                                                                    hoverColor:
                                                                        Colors
                                                                            .transparent,
                                                                    highlightColor:
                                                                        Colors
                                                                            .transparent,
                                                                    onTap:
                                                                        () async {
                                                                      _model.heroImage = functions.initImg(
                                                                          functions
                                                                              .listDataConversion(getJsonField(
                                                                                containerPropertyDetailsResponse.jsonBody,
                                                                                r'''$.imageURLs''',
                                                                              ).toString())
                                                                              ?.toList(),
                                                                          FFAppState().BaseUrl)?[imagesListIndex];
                                                                      setState(
                                                                          () {});
                                                                    },
                                                                    child:
                                                                        ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                      child: Image
                                                                          .network(
                                                                        imagesListItem,
                                                                        width:
                                                                            100.0,
                                                                        height:
                                                                            100.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              );
                                                            }).divide(SizedBox(
                                                                width: 15.0)),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            _model.tabs =
                                                                'propertyInfo';
                                                            setState(() {});
                                                          },
                                                          child: Column(
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
                                                                        8.0,
                                                                        16.0,
                                                                        8.0,
                                                                        16.0),
                                                                child: Text(
                                                                  'Property Information',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              if (_model.tabs ==
                                                                  'propertyInfo')
                                                                Container(
                                                                  width: 155.0,
                                                                  height: 3.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              _model.tabs =
                                                                  'reviews';
                                                              setState(() {});
                                                            },
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              16.0),
                                                                  child: Text(
                                                                    'Reviews',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                                if (_model
                                                                        .tabs ==
                                                                    'reviews')
                                                                  Container(
                                                                    width: 70.0,
                                                                    height: 3.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                    ),
                                                                  ),
                                                              ],
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
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  16.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.81,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Stack(
                                                          children: [
                                                            SingleChildScrollView(
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  if (_model
                                                                          .tabs ==
                                                                      'propertyInfo')
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                      child:
                                                                          Stack(
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.4,
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Container(
                                                                                    width: double.infinity,
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 50.0, 0.0),
                                                                                      child: SingleChildScrollView(
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                                                          children: [
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: [
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                  child: Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                                    child: Text(
                                                                                                      valueOrDefault<String>(
                                                                                                        MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.title(
                                                                                                          containerPropertyDetailsResponse.jsonBody,
                                                                                                        ),
                                                                                                        'NA',
                                                                                                      ),
                                                                                                      style: GoogleFonts.getFont(
                                                                                                        'Work Sans',
                                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                        fontSize: 22.0,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                if (functions.toDouble(getJsonField(
                                                                                                      containerPropertyDetailsResponse.jsonBody,
                                                                                                      r'''$.averageRatings''',
                                                                                                    ).toString())! >
                                                                                                    0.0)
                                                                                                  SizedBox(
                                                                                                    height: 20.0,
                                                                                                    child: VerticalDivider(
                                                                                                      width: 1.43,
                                                                                                      thickness: 1.0,
                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    ),
                                                                                                  ),
                                                                                                if (functions.toDouble(getJsonField(
                                                                                                      containerPropertyDetailsResponse.jsonBody,
                                                                                                      r'''$.averageRatings''',
                                                                                                    ).toString())! >
                                                                                                    0.0)
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                    child: Row(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      children: [
                                                                                                        RatingBar.builder(
                                                                                                          onRatingUpdate: (newValue) => setState(() => _model.ratingBarValue2 = newValue),
                                                                                                          itemBuilder: (context, index) => Icon(
                                                                                                            Icons.star_rounded,
                                                                                                            color: FlutterFlowTheme.of(context).tertiary,
                                                                                                          ),
                                                                                                          direction: Axis.horizontal,
                                                                                                          initialRating: _model.ratingBarValue2 ??= getJsonField(
                                                                                                            containerPropertyDetailsResponse.jsonBody,
                                                                                                            r'''$.averageRatings''',
                                                                                                          ),
                                                                                                          unratedColor: FlutterFlowTheme.of(context).accent3,
                                                                                                          itemCount: 5,
                                                                                                          itemSize: 18.0,
                                                                                                          glowColor: FlutterFlowTheme.of(context).tertiary,
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                                                          child: Text(
                                                                                                            '(${getJsonField(
                                                                                                              containerPropertyDetailsResponse.jsonBody,
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
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                                                    child: Column(
                                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                      children: [
                                                                                                        Text(
                                                                                                          'Property Type',
                                                                                                          style: GoogleFonts.getFont(
                                                                                                            'Work Sans',
                                                                                                            color: Color(0xFFB6BFE0),
                                                                                                            fontWeight: FontWeight.w500,
                                                                                                            fontSize: 16.0,
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                          child: RichText(
                                                                                                            textScaler: MediaQuery.of(context).textScaler,
                                                                                                            text: TextSpan(
                                                                                                              children: [
                                                                                                                TextSpan(
                                                                                                                  text: getJsonField(
                                                                                                                    containerPropertyDetailsResponse.jsonBody,
                                                                                                                    r'''$.propertyType''',
                                                                                                                  ).toString(),
                                                                                                                  style: GoogleFonts.getFont(
                                                                                                                    'Work Sans',
                                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                    fontWeight: FontWeight.w500,
                                                                                                                    fontSize: 16.0,
                                                                                                                  ),
                                                                                                                )
                                                                                                              ],
                                                                                                              style: GoogleFonts.getFont(
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
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                                                                                                    child: Wrap(
                                                                                                      spacing: 8.0,
                                                                                                      runSpacing: 15.0,
                                                                                                      alignment: WrapAlignment.start,
                                                                                                      crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                      direction: Axis.horizontal,
                                                                                                      runAlignment: WrapAlignment.start,
                                                                                                      verticalDirection: VerticalDirection.down,
                                                                                                      clipBehavior: Clip.none,
                                                                                                      children: [
                                                                                                        if (functions.getBoolFromJson(getJsonField(
                                                                                                              containerPropertyDetailsResponse.jsonBody,
                                                                                                              r'''$.sharedBookingsAllowed''',
                                                                                                            ).toString()) ==
                                                                                                            true)
                                                                                                          Row(
                                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                                            children: [
                                                                                                              ClipRRect(
                                                                                                                borderRadius: BorderRadius.circular(0.0),
                                                                                                                child: SvgPicture.asset(
                                                                                                                  'assets/images/house_chimney_blank.svg',
                                                                                                                  width: 18.0,
                                                                                                                  height: 18.0,
                                                                                                                  fit: BoxFit.cover,
                                                                                                                ),
                                                                                                              ),
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                                                child: Container(
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                                  ),
                                                                                                                  child: Padding(
                                                                                                                    padding: EdgeInsets.all(5.0),
                                                                                                                    child: Text(
                                                                                                                      '${getJsonField(
                                                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                                                        r'''$.guestsPerRoom''',
                                                                                                                      ).toString()} GuestsPerRoom',
                                                                                                                      style: GoogleFonts.getFont(
                                                                                                                        'Work Sans',
                                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                        fontSize: 16.0,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        if (functions.getBoolFromJson(getJsonField(
                                                                                                              containerPropertyDetailsResponse.jsonBody,
                                                                                                              r'''$.sharedBookingsAllowed''',
                                                                                                            ).toString()) ==
                                                                                                            false)
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                            child: Row(
                                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                              children: [
                                                                                                                ClipRRect(
                                                                                                                  borderRadius: BorderRadius.circular(0.0),
                                                                                                                  child: SvgPicture.asset(
                                                                                                                    'assets/images/house_chimney_blank.svg',
                                                                                                                    width: 18.0,
                                                                                                                    height: 18.0,
                                                                                                                    fit: BoxFit.cover,
                                                                                                                  ),
                                                                                                                ),
                                                                                                                Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                                                  child: Container(
                                                                                                                    decoration: BoxDecoration(
                                                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                                                    ),
                                                                                                                    child: Padding(
                                                                                                                      padding: EdgeInsets.all(5.0),
                                                                                                                      child: Text(
                                                                                                                        '${getJsonField(
                                                                                                                          containerPropertyDetailsResponse.jsonBody,
                                                                                                                          r'''$.totalGuests''',
                                                                                                                        ).toString()}${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.totalGuests(
                                                                                                                              containerPropertyDetailsResponse.jsonBody,
                                                                                                                            )! > 1 ? ' Guests' : ' Guest'}',
                                                                                                                        style: GoogleFonts.getFont(
                                                                                                                          'Work Sans',
                                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                          fontWeight: FontWeight.normal,
                                                                                                                          fontSize: 16.0,
                                                                                                                        ),
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ],
                                                                                                            ),
                                                                                                          ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                            children: [
                                                                                                              Container(
                                                                                                                width: 8.0,
                                                                                                                height: 8.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  shape: BoxShape.circle,
                                                                                                                ),
                                                                                                              ),
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                                                child: Container(
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    borderRadius: BorderRadius.only(
                                                                                                                      bottomLeft: Radius.circular(8.0),
                                                                                                                      bottomRight: Radius.circular(8.0),
                                                                                                                      topLeft: Radius.circular(8.0),
                                                                                                                      topRight: Radius.circular(8.0),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  child: Padding(
                                                                                                                    padding: EdgeInsets.all(5.0),
                                                                                                                    child: Text(
                                                                                                                      '${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bedrooms(
                                                                                                                            containerPropertyDetailsResponse.jsonBody,
                                                                                                                          )?.toString()}${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bedrooms(
                                                                                                                            containerPropertyDetailsResponse.jsonBody,
                                                                                                                          )! > 1 ? ' Bedrooms' : ' Bedroom'}',
                                                                                                                      style: GoogleFonts.getFont(
                                                                                                                        'Work Sans',
                                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                        fontSize: 16.0,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                            children: [
                                                                                                              Container(
                                                                                                                width: 8.0,
                                                                                                                height: 8.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  shape: BoxShape.circle,
                                                                                                                ),
                                                                                                              ),
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                                                child: Container(
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    borderRadius: BorderRadius.only(
                                                                                                                      bottomLeft: Radius.circular(8.0),
                                                                                                                      bottomRight: Radius.circular(8.0),
                                                                                                                      topLeft: Radius.circular(8.0),
                                                                                                                      topRight: Radius.circular(8.0),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  child: Padding(
                                                                                                                    padding: EdgeInsets.all(5.0),
                                                                                                                    child: Text(
                                                                                                                      '${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.beds(
                                                                                                                            containerPropertyDetailsResponse.jsonBody,
                                                                                                                          )?.toString()}${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.beds(
                                                                                                                            containerPropertyDetailsResponse.jsonBody,
                                                                                                                          )! > 1 ? ' Beds' : ' Bed'}',
                                                                                                                      style: GoogleFonts.getFont(
                                                                                                                        'Work Sans',
                                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                        fontSize: 16.0,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Padding(
                                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                          child: Row(
                                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                            children: [
                                                                                                              Container(
                                                                                                                width: 8.0,
                                                                                                                height: 8.0,
                                                                                                                decoration: BoxDecoration(
                                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                  shape: BoxShape.circle,
                                                                                                                ),
                                                                                                              ),
                                                                                                              Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                                                child: Container(
                                                                                                                  decoration: BoxDecoration(
                                                                                                                    borderRadius: BorderRadius.only(
                                                                                                                      bottomLeft: Radius.circular(8.0),
                                                                                                                      bottomRight: Radius.circular(8.0),
                                                                                                                      topLeft: Radius.circular(8.0),
                                                                                                                      topRight: Radius.circular(8.0),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                  child: Padding(
                                                                                                                    padding: EdgeInsets.all(5.0),
                                                                                                                    child: Text(
                                                                                                                      '${getJsonField(
                                                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                                                        r'''$.totalWashrooms''',
                                                                                                                      ).toString()}${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bathRooms(
                                                                                                                            containerPropertyDetailsResponse.jsonBody,
                                                                                                                          )! > 1 ? ' Bathrooms' : ' Bathroom'}',
                                                                                                                      style: GoogleFonts.getFont(
                                                                                                                        'Work Sans',
                                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                        fontSize: 16.0,
                                                                                                                      ),
                                                                                                                    ),
                                                                                                                  ),
                                                                                                                ),
                                                                                                              ),
                                                                                                            ],
                                                                                                          ),
                                                                                                        ),
                                                                                                        Row(
                                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                                          children: [
                                                                                                            Container(
                                                                                                              width: 8.0,
                                                                                                              height: 8.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                                shape: BoxShape.circle,
                                                                                                              ),
                                                                                                            ),
                                                                                                            Padding(
                                                                                                              padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                                              child: Container(
                                                                                                                decoration: BoxDecoration(
                                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                                ),
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsets.all(5.0),
                                                                                                                  child: Text(
                                                                                                                    '${getJsonField(
                                                                                                                      containerPropertyDetailsResponse.jsonBody,
                                                                                                                      r'''$.sharedWashrooms''',
                                                                                                                    ).toString()}${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.sharedWashrooms(
                                                                                                                          containerPropertyDetailsResponse.jsonBody,
                                                                                                                        )! > 1 ? ' SharedBathrooms' : ' SharedBathroom'}',
                                                                                                                    style: GoogleFonts.getFont(
                                                                                                                      'Work Sans',
                                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                                      fontSize: 16.0,
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
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                                                                                              child: Column(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                                children: [
                                                                                                  Text(
                                                                                                    'Property address',
                                                                                                    style: GoogleFonts.getFont(
                                                                                                      'Work Sans',
                                                                                                      color: Color(0xFFB6BFE0),
                                                                                                      fontWeight: FontWeight.w500,
                                                                                                      fontSize: 16.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                                    child: RichText(
                                                                                                      textScaler: MediaQuery.of(context).textScaler,
                                                                                                      text: TextSpan(
                                                                                                        children: [
                                                                                                          TextSpan(
                                                                                                            text: valueOrDefault<String>(
                                                                                                              MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.plotNo(
                                                                                                                containerPropertyDetailsResponse.jsonBody,
                                                                                                              ),
                                                                                                              'NA',
                                                                                                            ),
                                                                                                            style: TextStyle(),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: ', ',
                                                                                                            style: GoogleFonts.getFont(
                                                                                                              'Work Sans',
                                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                                              fontWeight: FontWeight.w500,
                                                                                                              fontSize: 18.0,
                                                                                                            ),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: valueOrDefault<String>(
                                                                                                              MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.street(
                                                                                                                containerPropertyDetailsResponse.jsonBody,
                                                                                                              ),
                                                                                                              'NA',
                                                                                                            ),
                                                                                                            style: TextStyle(),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: ', ',
                                                                                                            style: TextStyle(),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: valueOrDefault<String>(
                                                                                                              MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.locality(
                                                                                                                containerPropertyDetailsResponse.jsonBody,
                                                                                                              ),
                                                                                                              'NA',
                                                                                                            ),
                                                                                                            style: TextStyle(),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: ', ',
                                                                                                            style: TextStyle(),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: valueOrDefault<String>(
                                                                                                              MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.city(
                                                                                                                containerPropertyDetailsResponse.jsonBody,
                                                                                                              ),
                                                                                                              'NA',
                                                                                                            ),
                                                                                                            style: TextStyle(),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: ', ',
                                                                                                            style: TextStyle(),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: valueOrDefault<String>(
                                                                                                              MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.state(
                                                                                                                containerPropertyDetailsResponse.jsonBody,
                                                                                                              ),
                                                                                                              'NA',
                                                                                                            ),
                                                                                                            style: TextStyle(),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: ', ',
                                                                                                            style: TextStyle(),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: valueOrDefault<String>(
                                                                                                              MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.zipcode(
                                                                                                                containerPropertyDetailsResponse.jsonBody,
                                                                                                              ),
                                                                                                              'NA',
                                                                                                            ),
                                                                                                            style: TextStyle(),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: ', ',
                                                                                                            style: TextStyle(),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: valueOrDefault<String>(
                                                                                                              MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.country(
                                                                                                                containerPropertyDetailsResponse.jsonBody,
                                                                                                              ),
                                                                                                              'NA',
                                                                                                            ),
                                                                                                            style: TextStyle(),
                                                                                                          ),
                                                                                                          TextSpan(
                                                                                                            text: '.',
                                                                                                            style: TextStyle(),
                                                                                                          )
                                                                                                        ],
                                                                                                        style: GoogleFonts.getFont(
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
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                                                                                              child: RichText(
                                                                                                textScaler: MediaQuery.of(context).textScaler,
                                                                                                text: TextSpan(
                                                                                                  children: [
                                                                                                    TextSpan(
                                                                                                      text: 'Individual Room Or Entire property booking available ',
                                                                                                      style: GoogleFonts.getFont(
                                                                                                        'Work Sans',
                                                                                                        color: Color(0xFFF9AE39),
                                                                                                        fontWeight: FontWeight.w500,
                                                                                                        fontSize: 16.0,
                                                                                                      ),
                                                                                                    )
                                                                                                  ],
                                                                                                  style: GoogleFonts.getFont(
                                                                                                    'Work Sans',
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    fontSize: 16.0,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                                                                                                child: Text(
                                                                                                  'Description',
                                                                                                  style: GoogleFonts.getFont(
                                                                                                    'Work Sans',
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    fontSize: 18.0,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                valueOrDefault<String>(
                                                                                                  MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.desc(
                                                                                                    containerPropertyDetailsResponse.jsonBody,
                                                                                                  ),
                                                                                                  'NA',
                                                                                                ),
                                                                                                style: GoogleFonts.getFont(
                                                                                                  'Work Sans',
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  fontWeight: FontWeight.normal,
                                                                                                  fontSize: 16.0,
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
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                      child: Container(
                                                                                        decoration: BoxDecoration(),
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 55.0, 0.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.min,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                child: Text(
                                                                                                  'Property Availability Details',
                                                                                                  style: GoogleFonts.getFont(
                                                                                                    'Work Sans',
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                    fontSize: 18.0,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Align(
                                                                                                alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                                child: Text(
                                                                                                  '${FFAppState().selectedDateRange.length > 0 ? dateTimeFormat('dd MMM yyyy', FFAppState().selectedDateRange.first) : 'Check-In Date'} - ${FFAppState().selectedDateRange.length > 0 ? dateTimeFormat('dd MMM yyyy', FFAppState().selectedDateRange.last) : 'Check-Out Date'}',
                                                                                                  style: GoogleFonts.getFont(
                                                                                                    'Work Sans',
                                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                                    fontWeight: FontWeight.w500,
                                                                                                    fontSize: 14.0,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                              Stack(
                                                                                                children: [
                                                                                                  if (FFAppState().selectedDateRange.length > 0)
                                                                                                    Container(
                                                                                                      width: MediaQuery.sizeOf(context).width * 0.5,
                                                                                                      height: 280.0,
                                                                                                      child: custom_widgets.SyncDatePicker(
                                                                                                        width: MediaQuery.sizeOf(context).width * 0.5,
                                                                                                        height: 280.0,
                                                                                                        isMultiView: MediaQuery.sizeOf(context).width > 799.0 ? true : false,
                                                                                                        initialSelectedDates: FFAppState().selectedDateRange,
                                                                                                        propBookedDates: getJsonField(
                                                                                                          containerPropertyDetailsResponse.jsonBody,
                                                                                                          r'''$.bookedDates''',
                                                                                                        ).toString(),
                                                                                                        isModifyAllowed: false,
                                                                                                        partiallyBookedDates: functions.splitPartialDates(getJsonField(
                                                                                                          containerPropertyDetailsResponse.jsonBody,
                                                                                                          r'''$.partialBookedDates''',
                                                                                                        ).toString()),
                                                                                                        availableFromDate: functions.convertStringToDatetime(getJsonField(
                                                                                                          containerPropertyDetailsResponse.jsonBody,
                                                                                                          r'''$.availableFrom''',
                                                                                                        ).toString()),
                                                                                                        onChangeAction: () async {
                                                                                                          FFAppState().selectedDateRange = FFAppState().selectedDateRange.toList().cast<DateTime>();
                                                                                                          FFAppState().update(() {});
                                                                                                        },
                                                                                                      ),
                                                                                                    ),
                                                                                                  if (FFAppState().selectedDateRange.length == 0)
                                                                                                    Container(
                                                                                                      width: MediaQuery.sizeOf(context).width * 0.5,
                                                                                                      height: 280.0,
                                                                                                      child: custom_widgets.SyncDatePicker(
                                                                                                        width: MediaQuery.sizeOf(context).width * 0.5,
                                                                                                        height: 280.0,
                                                                                                        isMultiView: MediaQuery.sizeOf(context).width > 799.0 ? true : false,
                                                                                                        initialSelectedDates: _model.emptyList,
                                                                                                        propBookedDates: getJsonField(
                                                                                                          containerPropertyDetailsResponse.jsonBody,
                                                                                                          r'''$.bookedDates''',
                                                                                                        ).toString(),
                                                                                                        isModifyAllowed: false,
                                                                                                        partiallyBookedDates: functions.splitPartialDates(getJsonField(
                                                                                                          containerPropertyDetailsResponse.jsonBody,
                                                                                                          r'''$.partialBookedDates''',
                                                                                                        ).toString()),
                                                                                                        availableFromDate: functions.convertStringToDatetime(getJsonField(
                                                                                                          containerPropertyDetailsResponse.jsonBody,
                                                                                                          r'''$.availableFrom''',
                                                                                                        ).toString()),
                                                                                                        onChangeAction: () async {
                                                                                                          FFAppState().selectedDateRange = FFAppState().selectedDateRange.toList().cast<DateTime>();
                                                                                                          FFAppState().update(() {});
                                                                                                        },
                                                                                                      ),
                                                                                                    ),
                                                                                                ],
                                                                                              ),
                                                                                            ].divide(SizedBox(height: 10.0)),
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                              child: Text(
                                                                                                'Amenities',
                                                                                                style: GoogleFonts.getFont(
                                                                                                  'Work Sans',
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                  fontSize: 18.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 55.0, 0.0),
                                                                                              child: Builder(
                                                                                                builder: (context) {
                                                                                                  final amenitiess = functions
                                                                                                          .listMapConversion(getJsonField(
                                                                                                            containerPropertyDetailsResponse.jsonBody,
                                                                                                            r'''$.amenities''',
                                                                                                          ).toString())
                                                                                                          ?.toList() ??
                                                                                                      [];
                                                                                                  return GridView.builder(
                                                                                                    padding: EdgeInsets.zero,
                                                                                                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                                                                      crossAxisCount: 3,
                                                                                                      mainAxisSpacing: 8.0,
                                                                                                      childAspectRatio: 6.0,
                                                                                                    ),
                                                                                                    shrinkWrap: true,
                                                                                                    scrollDirection: Axis.vertical,
                                                                                                    itemCount: amenitiess.length,
                                                                                                    itemBuilder: (context, amenitiessIndex) {
                                                                                                      final amenitiessItem = amenitiess[amenitiessIndex];
                                                                                                      return Row(
                                                                                                        mainAxisSize: MainAxisSize.min,
                                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                                        children: [
                                                                                                          Container(
                                                                                                            width: 8.0,
                                                                                                            height: 8.0,
                                                                                                            decoration: BoxDecoration(
                                                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                              shape: BoxShape.circle,
                                                                                                            ),
                                                                                                          ),
                                                                                                          Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                                            child: Container(
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: Color(0xFFF5F5F5),
                                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                              ),
                                                                                                            ),
                                                                                                          ),
                                                                                                          Flexible(
                                                                                                            child: Text(
                                                                                                              getJsonField(
                                                                                                                amenitiessItem,
                                                                                                                r'''$.name''',
                                                                                                              ).toString(),
                                                                                                              style: GoogleFonts.getFont(
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
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 55.0, 0.0),
                                                                                    child: Container(
                                                                                      decoration: BoxDecoration(),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                        child: Column(
                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                              child: Text(
                                                                                                'House Rules',
                                                                                                textAlign: TextAlign.start,
                                                                                                style: GoogleFonts.getFont(
                                                                                                  'Work Sans',
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  fontWeight: FontWeight.bold,
                                                                                                  fontSize: 18.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Wrap(
                                                                                              spacing: 20.0,
                                                                                              runSpacing: 30.0,
                                                                                              alignment: WrapAlignment.start,
                                                                                              crossAxisAlignment: WrapCrossAlignment.start,
                                                                                              direction: Axis.horizontal,
                                                                                              runAlignment: WrapAlignment.start,
                                                                                              verticalDirection: VerticalDirection.down,
                                                                                              clipBehavior: Clip.antiAlias,
                                                                                              children: [
                                                                                                Row(
                                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Expanded(
                                                                                                      child: wrapWithModel(
                                                                                                        model: _model.houseRuleCardModel11,
                                                                                                        updateCallback: () => setState(() {}),
                                                                                                        child: HouseRuleCardWidget(
                                                                                                          ruleNumber: '01',
                                                                                                          ruleHeading: 'Check In',
                                                                                                          ruleDescription: 'From 12:00 PM',
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                    Expanded(
                                                                                                      child: wrapWithModel(
                                                                                                        model: _model.houseRuleCardModel12,
                                                                                                        updateCallback: () => setState(() {}),
                                                                                                        child: HouseRuleCardWidget(
                                                                                                          ruleNumber: '02',
                                                                                                          ruleHeading: 'Check Out',
                                                                                                          ruleDescription: 'From 11:00 AM',
                                                                                                        ),
                                                                                                      ),
                                                                                                    ),
                                                                                                  ],
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 45.0,
                                                                                                  decoration: BoxDecoration(),
                                                                                                  child: wrapWithModel(
                                                                                                    model: _model.houseRuleCardModel13,
                                                                                                    updateCallback: () => setState(() {}),
                                                                                                    child: HouseRuleCardWidget(
                                                                                                      ruleNumber: '03',
                                                                                                      ruleHeading: 'Smoking',
                                                                                                      ruleDescription: 'Smoking is not allowed.',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Container(
                                                                                                  height: 45.0,
                                                                                                  decoration: BoxDecoration(),
                                                                                                  child: wrapWithModel(
                                                                                                    model: _model.houseRuleCardModel14,
                                                                                                    updateCallback: () => setState(() {}),
                                                                                                    child: HouseRuleCardWidget(
                                                                                                      ruleNumber: '04',
                                                                                                      ruleHeading: 'Parties',
                                                                                                      ruleDescription: 'Parties/events are not allowed.',
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                                Align(
                                                                                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                  child: Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                                                                                                    child: wrapWithModel(
                                                                                                      model: _model.houseRuleCardModel15,
                                                                                                      updateCallback: () => setState(() {}),
                                                                                                      child: HouseRuleCardWidget(
                                                                                                        ruleNumber: '05',
                                                                                                        ruleHeading: 'Cancellation/prepayment',
                                                                                                        ruleDescription: 'Cancellation and prepayment policies vary according to apartment type. Please check the apartment conditions when selecting your apartment above.',
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ].divide(SizedBox(height: 20.0)),
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
                                                                  if (_model
                                                                          .tabs ==
                                                                      'reviews')
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                      child:
                                                                          Stack(
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.4,
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'User Reviews',
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Work Sans',
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      fontWeight: FontWeight.w600,
                                                                                      fontSize: 20.0,
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      '${getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.totalReviews''',
                                                                                      ).toString()} reviews',
                                                                                      style: GoogleFonts.getFont(
                                                                                        'Work Sans',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        fontSize: 18.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    children: [
                                                                                      Flexible(
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                                                                                          child: PagedGridView<ApiPagingParams, dynamic>(
                                                                                            pagingController: _model.setGridViewController2(
                                                                                              (nextPageMarker) => MicroserviceRatingReviewAPIsGroup.reviewsRatingsCall.call(
                                                                                                propertyId: getJsonField(
                                                                                                  containerPropertyDetailsResponse.jsonBody,
                                                                                                  r'''$.propertyId''',
                                                                                                ).toString(),
                                                                                              ),
                                                                                            ),
                                                                                            padding: EdgeInsets.zero,
                                                                                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                                                              crossAxisCount: 2,
                                                                                              crossAxisSpacing: 24.0,
                                                                                              mainAxisSpacing: 24.0,
                                                                                              childAspectRatio: 2.0,
                                                                                            ),
                                                                                            primary: false,
                                                                                            shrinkWrap: true,
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

                                                                                              itemBuilder: (context, _, ratingReviewDataIndex) {
                                                                                                final ratingReviewDataItem = _model.gridViewPagingController2!.itemList![ratingReviewDataIndex];
                                                                                                return NewUserReviewsWidget(
                                                                                                  key: Key('Keyeax_${ratingReviewDataIndex}_of_${_model.gridViewPagingController2!.itemList!.length}'),
                                                                                                  userName: getJsonField(
                                                                                                    ratingReviewDataItem,
                                                                                                    r'''$.userName''',
                                                                                                  ).toString(),
                                                                                                  score: getJsonField(
                                                                                                    ratingReviewDataItem,
                                                                                                    r'''$.score''',
                                                                                                  ),
                                                                                                  comments: getJsonField(
                                                                                                    ratingReviewDataItem,
                                                                                                    r'''$.comments''',
                                                                                                  ).toString(),
                                                                                                  createdDate: getJsonField(
                                                                                                    ratingReviewDataItem,
                                                                                                    r'''$.createdDate''',
                                                                                                  ).toString(),
                                                                                                );
                                                                                              },
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
                                                                ],
                                                              ),
                                                            ),
                                                            if (_model.tabs ==
                                                                'propertyInfo')
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        -1.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          15.0,
                                                                          15.0),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.26,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0x4CE8E7FF),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              16.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        wrapWithModel(
                                                                      model: _model
                                                                          .newDetailsCardModel,
                                                                      updateCallback:
                                                                          () =>
                                                                              setState(() {}),
                                                                      child:
                                                                          NewDetailsCardWidget(
                                                                        roomsCount:
                                                                            valueOrDefault<int>(
                                                                          getJsonField(
                                                                            containerPropertyDetailsResponse.jsonBody,
                                                                            r'''$.bedrooms''',
                                                                          ),
                                                                          00,
                                                                        ),
                                                                        guestCount:
                                                                            valueOrDefault<int>(
                                                                          getJsonField(
                                                                            containerPropertyDetailsResponse.jsonBody,
                                                                            r'''$.totalGuests''',
                                                                          ),
                                                                          00,
                                                                        ),
                                                                        propertyId:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.propertyId''',
                                                                        ),
                                                                        entirePropertyPricePerNight:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.totalPrice''',
                                                                        ),
                                                                        roomPricePerNight:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.pricePerRoom''',
                                                                        ),
                                                                        propertyType:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.propertyType''',
                                                                        ).toString(),
                                                                        title:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.title''',
                                                                        ).toString(),
                                                                        description:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.desc''',
                                                                        ).toString(),
                                                                        locality:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.locality''',
                                                                        ).toString(),
                                                                        city:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.city''',
                                                                        ).toString(),
                                                                        streetAddress:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.street''',
                                                                        ).toString(),
                                                                        landmark:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.landmark''',
                                                                        ).toString(),
                                                                        state:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.state''',
                                                                        ).toString(),
                                                                        country:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.country''',
                                                                        ).toString(),
                                                                        zipcode:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.zipcode''',
                                                                        ).toString(),
                                                                        plotNo:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.plotNo''',
                                                                        ).toString(),
                                                                        taxPercent:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.taxPercent''',
                                                                        ),
                                                                        bedsCount:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.beds''',
                                                                        ),
                                                                        bathroomCount:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.totalWashrooms''',
                                                                        ),
                                                                        image: functions
                                                                            .initImg(
                                                                                functions
                                                                                    .listDataConversion(getJsonField(
                                                                                      containerPropertyDetailsResponse.jsonBody,
                                                                                      r'''$.imageURLs''',
                                                                                    ).toString())
                                                                                    ?.toList(),
                                                                                FFAppState().BaseUrl)!
                                                                            .first,
                                                                        selectedFromToDates:
                                                                            FFAppState().selectedDateRange,
                                                                        isSharedAllowed:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.sharedBookingsAllowed''',
                                                                        ),
                                                                        guestsPerRoom:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.guestsPerRoom''',
                                                                        ),
                                                                        sharedWashrooms:
                                                                            getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.sharedWashrooms''',
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
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: () {
                                        if (MediaQuery.sizeOf(context).width <
                                            1536.0) {
                                          return 45.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width <
                                            1750.0) {
                                          return 90.0;
                                        } else if (MediaQuery.sizeOf(context)
                                                .width >
                                            1536.0) {
                                          return 120.0;
                                        } else {
                                          return 0.0;
                                        }
                                      }(),
                                      decoration: BoxDecoration(),
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
        );
      },
    );
  }
}
