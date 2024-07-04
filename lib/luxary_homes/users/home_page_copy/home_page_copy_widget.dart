import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/androidand_ios/nav_bar/nav_bar_widget.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_contact_us/new_contact_us_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/homepage_new_web_screens/propertydetails/new_property_card/new_property_card_widget.dart';
import '/luxary_homes/users/filter/filter_widget.dart';
import '/luxary_homes/users/property_card/property_card_widget.dart';
import '/luxary_homes/users/search/search_widget.dart';
import '/luxary_homes/users/search_filter_comp/search_filter_comp_widget.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'home_page_copy_model.dart';
export 'home_page_copy_model.dart';

class HomePageCopyWidget extends StatefulWidget {
  const HomePageCopyWidget({super.key});

  @override
  State<HomePageCopyWidget> createState() => _HomePageCopyWidgetState();
}

class _HomePageCopyWidgetState extends State<HomePageCopyWidget>
    with TickerProviderStateMixin {
  late HomePageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageCopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().BookingDetailsPage = BookingDetailsPageStruct();
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
      setState(() {});
      if (FFAppState().launchApp != null) {
        FFAppState().skipforHome = true;
        setState(() {});
      }
    });

    getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0), cached: true)
        .then((loc) => setState(() => currentUserLocationValue = loc));
    animationsMap.addAll({
      'iconOnPageLoadAnimation': AnimationInfo(
        loop: true,
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShakeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            hz: 10,
            offset: Offset(0.0, 0.0),
            rotation: 0.087,
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
    if (currentUserLocationValue == null) {
      return Container(
        color: FlutterFlowTheme.of(context).primaryBackground,
        child: Center(
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

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Color(0xFFF2F2F2),
          endDrawer: Container(
            width: MediaQuery.sizeOf(context).width * 0.85,
            child: Drawer(
              elevation: 16.0,
              child: Visibility(
                visible: responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ),
                child: Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: wrapWithModel(
                    model: _model.loginFormModel,
                    updateCallback: () => setState(() {}),
                    child: LoginFormWidget(),
                  ),
                ),
              ),
            ),
          ),
          body: Stack(
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Expanded(
                        child: Stack(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      if (responsiveVisibility(
                                        context: context,
                                        phone: false,
                                        tablet: false,
                                        tabletLandscape: false,
                                      ))
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    58.0, 0.0, 55.0, 0.0),
                                            child: RefreshIndicator(
                                              onRefresh: () async {
                                                setState(() => _model
                                                    .staggeredViewPagingController1
                                                    ?.refresh());
                                                await _model
                                                    .waitForOnePageForStaggeredView1();
                                              },
                                              child: PagedMasonryGridView<
                                                  ApiPagingParams,
                                                  dynamic>.count(
                                                pagingController: _model
                                                    .setStaggeredViewController1(
                                                  (nextPageMarker) =>
                                                      MicroserviceAvailabilityAPIsGroup
                                                          .propertyListingsCall
                                                          .call(
                                                    pageLoadItemsCount:
                                                        MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <=
                                                                500.0
                                                            ? 4
                                                            : 8,
                                                    pageNoCount: functions
                                                                .incrementOne(
                                                                    nextPageMarker
                                                                        .nextPageNumber) >=
                                                            0
                                                        ? (nextPageMarker
                                                                .nextPageNumber +
                                                            1)
                                                        : -1,
                                                  ),
                                                ),
                                                crossAxisCount: 4,
                                                shrinkWrap: true,
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 40.0,
                                                      ),
                                                    ),
                                                  ),

                                                  itemBuilder: (context, _,
                                                      propertyListingWebDataIndex) {
                                                    final propertyListingWebDataItem =
                                                        _model.staggeredViewPagingController1!
                                                                .itemList![
                                                            propertyListingWebDataIndex];
                                                    return Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  15.0,
                                                                  10.0),
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
                                                                  .PropertyDetailsPage =
                                                              PropertyDetailsPageStruct(
                                                            propertyId:
                                                                getJsonField(
                                                              propertyListingWebDataItem,
                                                              r'''$.propertyId''',
                                                            ),
                                                          );
                                                          setState(() {});

                                                          context.pushNamed(
                                                            'property_details',
                                                            queryParameters: {
                                                              'id':
                                                                  serializeParam(
                                                                getJsonField(
                                                                  propertyListingWebDataItem,
                                                                  r'''$.propertyId''',
                                                                ),
                                                                ParamType.JSON,
                                                              ),
                                                              'index':
                                                                  serializeParam(
                                                                propertyListingWebDataIndex,
                                                                ParamType.int,
                                                              ),
                                                            }.withoutNulls,
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
                                                        },
                                                        child: Hero(
                                                          tag:
                                                              'propertyDetailsPage',
                                                          transitionOnUserGestures:
                                                              true,
                                                          child: Material(
                                                            color: Colors
                                                                .transparent,
                                                            child:
                                                                PropertyCardWidget(
                                                              key: Key(
                                                                  'Key65q_${propertyListingWebDataIndex}_of_${_model.staggeredViewPagingController1!.itemList!.length}'),
                                                              pageName: 'home',
                                                              title:
                                                                  getJsonField(
                                                                propertyListingWebDataItem,
                                                                r'''$.title''',
                                                              ).toString(),
                                                              price:
                                                                  getJsonField(
                                                                propertyListingWebDataItem,
                                                                r'''$.basePrice''',
                                                              ),
                                                              propertyType:
                                                                  getJsonField(
                                                                propertyListingWebDataItem,
                                                                r'''$.propertyType''',
                                                              ).toString(),
                                                              imageList: functions
                                                                  .listDataConversion(
                                                                      getJsonField(
                                                                propertyListingWebDataItem,
                                                                r'''$.imageURLs''',
                                                              ).toString()),
                                                              locality:
                                                                  getJsonField(
                                                                propertyListingWebDataItem,
                                                                r'''$.locality''',
                                                              ).toString(),
                                                              city:
                                                                  getJsonField(
                                                                propertyListingWebDataItem,
                                                                r'''$.city''',
                                                              ).toString(),
                                                              averageRating:
                                                                  getJsonField(
                                                                propertyListingWebDataItem,
                                                                r'''$.averageRating''',
                                                              ),
                                                              propertyId:
                                                                  getJsonField(
                                                                propertyListingWebDataItem,
                                                                r'''$.propertyId''',
                                                              ),
                                                              index:
                                                                  propertyListingWebDataIndex,
                                                              id: getJsonField(
                                                                propertyListingWebDataItem,
                                                                r'''$.propertyId''',
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
                            if (((FFAppState().accessToken != null &&
                                        FFAppState().accessToken != '') &&
                                    (!FFAppState().userData.isAdmin &&
                                        !FFAppState().userData.isHost &&
                                        !FFAppState().userData.isPI &&
                                        !FFAppState().userData.isAT)) &&
                                responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                              Align(
                                alignment: AlignmentDirectional(0.95, 0.89),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'w_ex_welcome_page',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
                                        ),
                                      },
                                    );
                                  },
                                  child: Container(
                                    width: 220.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF867EF3),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(20.0),
                                        bottomRight: Radius.circular(50.0),
                                        topLeft: Radius.circular(20.0),
                                        topRight: Radius.circular(50.0),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              'Request for Lease',
                                              style: GoogleFonts.getFont(
                                                'Noto Serif',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: FaIcon(
                                              FontAwesomeIcons
                                                  .solidHandPointLeft,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              size: 24.0,
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
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                        child: wrapWithModel(
                          model: _model.webCopyWriteModel,
                          updateCallback: () => setState(() {}),
                          child: WebCopyWriteWidget(),
                        ),
                      ),
                  ],
                ),
              if (responsiveVisibility(
                context: context,
                tablet: false,
                tabletLandscape: false,
                desktop: false,
              ))
                Stack(
                  children: [
                    if ((FFAppState().skipforHome == false) &&
                        responsiveVisibility(
                          context: context,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                      Stack(
                        children: [
                          if ((_model.pageViewCurrentIndex == 0) &&
                              responsiveVisibility(
                                context: context,
                                desktop: false,
                              ))
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                              child: Image.asset(
                                'assets/images/home-bg.jpg',
                                width: double.infinity,
                                height: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color(0xFF7658F4),
                                  Color(0xA88A099B),
                                  Color(0xFF2F22D5)
                                ],
                                stops: [0.0, 0.2, 1.0],
                                begin: AlignmentDirectional(0.0, -1.0),
                                end: AlignmentDirectional(0, 1.0),
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 40.0),
                                          child: PageView(
                                            controller: _model
                                                    .pageViewController ??=
                                                PageController(initialPage: 0),
                                            onPageChanged: (_) =>
                                                setState(() {}),
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                40.0,
                                                                100.0,
                                                                0.0,
                                                                0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/Group_1000005996.svg',
                                                        width: 80.0,
                                                        height: 80.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
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
                                                            'Perfect choice \nfor your \nproperty',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      43.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                          ),
                                                          Text(
                                                            'Our vision is to revolutionize the way people find and secure accommodation, providing a user-centric platform that simplifies the booking process. ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      18.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/Illustration-1.svg',
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  1.0,
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  0.366,
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                0.0, 0.0),
                                                    child:
                                                        SingleChildScrollView(
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
                                                            'Private homes, villas, and apartments',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      35.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        30.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'We prioritize safety, transparency,\nand flexibility in both booking and leasing, ensuring that our platform serves the diverse needs of travelers and property owners alike.',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    fontSize:
                                                                        18.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w300,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(15.0, 0.0,
                                                                10.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/12085337_20944166_1.svg',
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.379,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          SingleChildScrollView(
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
                                                            Flexible(
                                                              child: Text(
                                                                'Begin your hosting journey with us',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          35.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontStyle:
                                                                          FontStyle
                                                                              .italic,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          30.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'We prioritize safety, transparency,\nand flexibility in both booking and leasing, ensuring that our platform serves the diverse needs of travelers and property owners alike.',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(25.0,
                                                                60.0, 0.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/5375307_For_sale_1_(2).svg',
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.427,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  30.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Find the\nperfect place\nto stay',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    fontSize:
                                                                        35.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .italic,
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
                                                              child: Text(
                                                                'We prioritize safety, transparency,\nand flexibility in both booking and leasing, ensuring that our platform serves the diverse needs of travelers and property owners alike.',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(35.0,
                                                                45.0, 0.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/9147969_4108027_1_(1).svg',
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.39,
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  30.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          SingleChildScrollView(
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
                                                              'Are you looking to \nbreathe new life \ninto your property?',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    fontSize:
                                                                        35.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .italic,
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
                                                              child: Text(
                                                                'Entrust your property to us, and we\'ll transform it into a brand-new asset. Our expert team specializes in renovating and rebranding properties, turning them into modern, desirable assets.',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
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
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(30.0,
                                                                30.0, 0.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/12325319_4952519_1.svg',
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                1.0,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.39,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  30.0,
                                                                  0.0,
                                                                  0.0),
                                                      child:
                                                          SingleChildScrollView(
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
                                                              'Find the \nperfect place \nto stay',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    fontSize:
                                                                        35.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontStyle:
                                                                        FontStyle
                                                                            .italic,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          60.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'We prioritize safety, transparency, \nand flexibility in both booking and leasing, ensuring that our platform serves the diverse needs of travelers and property owners alike.',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
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
                                            ],
                                          ),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 1.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 16.0),
                                            child: smooth_page_indicator
                                                .SmoothPageIndicator(
                                              controller:
                                                  _model.pageViewController ??=
                                                      PageController(
                                                          initialPage: 0),
                                              count: 6,
                                              axisDirection: Axis.horizontal,
                                              onDotClicked: (i) async {
                                                await _model.pageViewController!
                                                    .animateToPage(
                                                  i,
                                                  duration: Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.ease,
                                                );
                                                setState(() {});
                                              },
                                              effect: smooth_page_indicator
                                                  .ExpandingDotsEffect(
                                                expansionFactor: 3.0,
                                                spacing: 5.0,
                                                radius: 15.0,
                                                dotWidth: 30.0,
                                                dotHeight: 4.0,
                                                dotColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                activeDotColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                paintStyle: PaintingStyle.fill,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 40.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            FFAppState().skipforHome = true;
                                            setState(() {});
                                            FFAppState().launchApp =
                                                getCurrentTimestamp;
                                            setState(() {});
                                          },
                                          child: Text(
                                            'Skip',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 30.0, 0.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            FFAppState().skipforHome = true;
                                            setState(() {});
                                            FFAppState().launchApp =
                                                getCurrentTimestamp;
                                            setState(() {});
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              isDismissible: false,
                                              enableDrag: false,
                                              useSafeArea: true,
                                              context: context,
                                              builder: (context) {
                                                return GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
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
                                                          0.75,
                                                      child:
                                                          PhoneNumLoginWidget(),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ).then(
                                                (value) => safeSetState(() {}));
                                          },
                                          text: 'Sign In  →',
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .titleSmall
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(40.0),
                                          ),
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
                    if ((FFAppState().skipforHome == true) &&
                        responsiveVisibility(
                          context: context,
                          desktop: false,
                        ))
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 170.0, 0.0, 50.0),
                        child: Stack(
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 145.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFFE3C9FF),
                                            Color(0xFF7FD2D8)
                                          ],
                                          stops: [0.0, 1.0],
                                          begin:
                                              AlignmentDirectional(0.69, -1.0),
                                          end: AlignmentDirectional(-0.69, 1.0),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Flexible(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      32.0, 17.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Get the perfect  ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      'Home',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Work Sans',
                                                            color: Color(
                                                                0xFF5246ED),
                                                            fontSize: 18.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '25% Off',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Work Sans',
                                                            color: Color(
                                                                0xFFAC341A),
                                                            fontSize: 26.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
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
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Looking ',
                                              style: FlutterFlowTheme.of(
                                                      context)
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 25.0, 16.0, 0.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 84.0,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Color(0xFF4980D3),
                                            Color(0xFF111D49)
                                          ],
                                          stops: [0.0, 1.0],
                                          begin:
                                              AlignmentDirectional(1.0, -0.98),
                                          end: AlignmentDirectional(-1.0, 0.98),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.asset(
                                                'assets/images/aviso_1.png',
                                                width: 57.0,
                                                height: 57.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 2.0),
                                                  child: Text(
                                                    '15% discount',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 2.0, 0.0, 0.0),
                                                  child: Text(
                                                    'on all our packages',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      11.0, 0.0, 0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                InkWell(
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
                                                        .addToUserFilterPropertyType(
                                                            getJsonField(
                                                      rowGetPropertyTypesResponse
                                                          .jsonBody,
                                                      r'''$[0].categoryId''',
                                                    ));
                                                    setState(() {});
                                                    if (FFAppState()
                                                        .isEnableSearch) {
                                                      context.goNamed(
                                                        'helper_page',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    }

                                                    context.pushNamed(
                                                      'search_page',
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

                                                    _model.filterOutputCopy1 =
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
                                                      city: FFAppState()
                                                          .searchCity,
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
                                                            .filterOutputCopy1
                                                            ?.succeeded ??
                                                        true)) {
                                                      FFAppState()
                                                              .searchResultCount =
                                                          getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$.totalCount''',
                                                      );
                                                      FFAppState()
                                                          .update(() {});
                                                    } else {
                                                      FFAppState()
                                                          .searchResultCount = 0;
                                                      FFAppState()
                                                          .update(() {});
                                                    }

                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFE1E7FE),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(10.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/house.svg',
                                                          width: 2.0,
                                                          height: 2.0,
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
                                                          .addToUserFilterPropertyType(
                                                              getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$[0].categoryId''',
                                                      ));
                                                      setState(() {});
                                                      if (FFAppState()
                                                          .isEnableSearch) {
                                                        context.goNamed(
                                                          'helper_page',
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
                                                      }

                                                      context.pushNamed(
                                                        'search_page',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );

                                                      _model.filterOutput =
                                                          await MicroserviceAvailabilityAPIsGroup
                                                              .searchFilterAPICall
                                                              .call(
                                                        priceLowerLimit:
                                                            FFAppState()
                                                                .priceMin,
                                                        priceUpperLimit:
                                                            FFAppState()
                                                                .priceMax,
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
                                                        city: FFAppState()
                                                            .searchCity,
                                                        totalGuests:
                                                            FFAppState()
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
                                                        FFAppState()
                                                                .searchResultCount =
                                                            getJsonField(
                                                          rowGetPropertyTypesResponse
                                                              .jsonBody,
                                                          r'''$.totalCount''',
                                                        );
                                                        FFAppState()
                                                            .update(() {});
                                                      } else {
                                                        FFAppState()
                                                            .searchResultCount = 0;
                                                        FFAppState()
                                                            .update(() {});
                                                      }

                                                      setState(() {});
                                                    },
                                                    child: Text(
                                                      getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$[0].name''',
                                                      ).toString(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Work Sans',
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
                                                          .addToUserFilterPropertyType(
                                                              getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$[1].categoryId''',
                                                      ));
                                                      setState(() {});
                                                      if (FFAppState()
                                                          .isEnableSearch) {
                                                        context.goNamed(
                                                          'helper_page',
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
                                                      }

                                                      context.pushNamed(
                                                        'search_page',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );

                                                      _model.filter1Copy1 =
                                                          await MicroserviceAvailabilityAPIsGroup
                                                              .searchFilterAPICall
                                                              .call(
                                                        priceLowerLimit:
                                                            FFAppState()
                                                                .priceMin,
                                                        priceUpperLimit:
                                                            FFAppState()
                                                                .priceMax,
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
                                                        city: FFAppState()
                                                            .searchCity,
                                                        totalGuests:
                                                            FFAppState()
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

                                                      if ((_model.filter1Copy1
                                                              ?.succeeded ??
                                                          true)) {
                                                        FFAppState()
                                                                .searchResultCount =
                                                            getJsonField(
                                                          rowGetPropertyTypesResponse
                                                              .jsonBody,
                                                          r'''$.totalCount''',
                                                        );
                                                        FFAppState()
                                                            .update(() {});
                                                      } else {
                                                        FFAppState()
                                                            .searchResultCount = 0;
                                                        FFAppState()
                                                            .update(() {});
                                                      }

                                                      setState(() {});
                                                    },
                                                    child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF6E6F6),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(6.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      0.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/villa.svg',
                                                            width: 3.0,
                                                            height: 3.0,
                                                            fit: BoxFit.cover,
                                                          ),
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
                                                          .addToUserFilterPropertyType(
                                                              getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$[1].categoryId''',
                                                      ));
                                                      setState(() {});
                                                      if (FFAppState()
                                                          .isEnableSearch) {
                                                        context.goNamed(
                                                          'helper_page',
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
                                                      }

                                                      context.pushNamed(
                                                        'search_page',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );

                                                      _model.filter1 =
                                                          await MicroserviceAvailabilityAPIsGroup
                                                              .searchFilterAPICall
                                                              .call(
                                                        priceLowerLimit:
                                                            FFAppState()
                                                                .priceMin,
                                                        priceUpperLimit:
                                                            FFAppState()
                                                                .priceMax,
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
                                                        city: FFAppState()
                                                            .searchCity,
                                                        totalGuests:
                                                            FFAppState()
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

                                                      if ((_model.filter1
                                                              ?.succeeded ??
                                                          true)) {
                                                        FFAppState()
                                                                .searchResultCount =
                                                            getJsonField(
                                                          rowGetPropertyTypesResponse
                                                              .jsonBody,
                                                          r'''$.totalCount''',
                                                        );
                                                        FFAppState()
                                                            .update(() {});
                                                      } else {
                                                        FFAppState()
                                                            .searchResultCount = 0;
                                                        FFAppState()
                                                            .update(() {});
                                                      }

                                                      setState(() {});
                                                    },
                                                    child: Text(
                                                      getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$[1].name''',
                                                      ).toString(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Work Sans',
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
                                                          .addToUserFilterPropertyType(
                                                              getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$[2].categoryId''',
                                                      ));
                                                      setState(() {});
                                                      if (FFAppState()
                                                          .isEnableSearch) {
                                                        context.goNamed(
                                                          'helper_page',
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
                                                      }

                                                      context.pushNamed(
                                                        'search_page',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );

                                                      _model.filter2Copy1 =
                                                          await MicroserviceAvailabilityAPIsGroup
                                                              .searchFilterAPICall
                                                              .call(
                                                        priceLowerLimit:
                                                            FFAppState()
                                                                .priceMin,
                                                        priceUpperLimit:
                                                            FFAppState()
                                                                .priceMax,
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
                                                        city: FFAppState()
                                                            .searchCity,
                                                        totalGuests:
                                                            FFAppState()
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

                                                      if ((_model.filter2Copy1
                                                              ?.succeeded ??
                                                          true)) {
                                                        FFAppState()
                                                                .searchResultCount =
                                                            getJsonField(
                                                          rowGetPropertyTypesResponse
                                                              .jsonBody,
                                                          r'''$.totalCount''',
                                                        );
                                                        FFAppState()
                                                            .update(() {});
                                                      } else {
                                                        FFAppState()
                                                            .searchResultCount = 0;
                                                        FFAppState()
                                                            .update(() {});
                                                      }

                                                      setState(() {});
                                                    },
                                                    child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFCDEDF1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(50.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(8.0),
                                                        child: ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      6.0),
                                                          child: Image.asset(
                                                            'assets/images/Group_18499.png',
                                                            fit: BoxFit.cover,
                                                          ),
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
                                                          .addToUserFilterPropertyType(
                                                              getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$[2].categoryId''',
                                                      ));
                                                      setState(() {});
                                                      if (FFAppState()
                                                          .isEnableSearch) {
                                                        context.goNamed(
                                                          'helper_page',
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
                                                      }

                                                      context.pushNamed(
                                                        'search_page',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );

                                                      _model.filter2 =
                                                          await MicroserviceAvailabilityAPIsGroup
                                                              .searchFilterAPICall
                                                              .call(
                                                        priceLowerLimit:
                                                            FFAppState()
                                                                .priceMin,
                                                        priceUpperLimit:
                                                            FFAppState()
                                                                .priceMax,
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
                                                        city: FFAppState()
                                                            .searchCity,
                                                        totalGuests:
                                                            FFAppState()
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

                                                      if ((_model.filter2
                                                              ?.succeeded ??
                                                          true)) {
                                                        FFAppState()
                                                                .searchResultCount =
                                                            getJsonField(
                                                          rowGetPropertyTypesResponse
                                                              .jsonBody,
                                                          r'''$.totalCount''',
                                                        );
                                                        FFAppState()
                                                            .update(() {});
                                                      } else {
                                                        FFAppState()
                                                            .searchResultCount = 0;
                                                        FFAppState()
                                                            .update(() {});
                                                      }

                                                      setState(() {});
                                                    },
                                                    child: Text(
                                                      getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$[2].name''',
                                                      ).toString(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Work Sans',
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 25.0, 16.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Recent Properties',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        fontSize: 24.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
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
                                            context.pushNamed(
                                              'property_listing',
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
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'See All',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Work Sans',
                                                      color: Color(0xFF375FE3),
                                                      fontSize: 15.0,
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 25.0),
                                    child: Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.61,
                                      decoration: BoxDecoration(),
                                      child: RefreshIndicator(
                                        onRefresh: () async {
                                          setState(() => _model
                                              .listViewPagingController
                                              ?.refresh());
                                          await _model
                                              .waitForOnePageForListView();
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
                                                  MediaQuery.sizeOf(context)
                                                              .width <=
                                                          500.0
                                                      ? 4
                                                      : 8,
                                              pageNoCount: functions.incrementOne(
                                                          nextPageMarker
                                                              .nextPageNumber) >=
                                                      0
                                                  ? (nextPageMarker
                                                          .nextPageNumber +
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
                                              PagedChildBuilderDelegate<
                                                  dynamic>(
                                            // Customize what your widget looks like when it's loading the first page.
                                            firstPageProgressIndicatorBuilder:
                                                (_) => Center(
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
                                            ),
                                            // Customize what your widget looks like when it's loading another page.
                                            newPageProgressIndicatorBuilder:
                                                (_) => Center(
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
                                            ),

                                            itemBuilder: (context, _,
                                                propertyListingDataIndex) {
                                              final propertyListingDataItem =
                                                  _model.listViewPagingController!
                                                          .itemList![
                                                      propertyListingDataIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 5.0, 10.0),
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
                                                        .updatePropertyDetailsPageStruct(
                                                      (e) => e
                                                        ..propertyId =
                                                            getJsonField(
                                                          propertyListingDataItem,
                                                          r'''$.propertyId''',
                                                        ),
                                                    );
                                                    setState(() {});

                                                    context.pushNamed(
                                                      'property_details',
                                                      queryParameters: {
                                                        'id': serializeParam(
                                                          getJsonField(
                                                            propertyListingDataItem,
                                                            r'''$.propertyId''',
                                                          ),
                                                          ParamType.JSON,
                                                        ),
                                                        'index': serializeParam(
                                                          propertyListingDataIndex,
                                                          ParamType.int,
                                                        ),
                                                      }.withoutNulls,
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
                                                  child: NewPropertyCardWidget(
                                                    key: Key(
                                                        'Keyv3z_${propertyListingDataIndex}_of_${_model.listViewPagingController!.itemList!.length}'),
                                                    propertyType: getJsonField(
                                                      propertyListingDataItem,
                                                      r'''$.propertyType''',
                                                    ).toString(),
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
                                                    bedRooms: getJsonField(
                                                      propertyListingDataItem,
                                                      r'''$.bedRooms''',
                                                    ),
                                                    bathRooms: getJsonField(
                                                      propertyListingDataItem,
                                                      r'''$.bathrooms''',
                                                    ),
                                                    totalPropertyPrice:
                                                        getJsonField(
                                                      propertyListingDataItem,
                                                      r'''$.totalPrice''',
                                                    ),
                                                    pricePerRoom: getJsonField(
                                                      propertyListingDataItem,
                                                      r'''$.pricePerRoom''',
                                                    ),
                                                    index:
                                                        propertyListingDataIndex,
                                                    propertyId: getJsonField(
                                                      propertyListingDataItem,
                                                      r'''$.propertyId''',
                                                    ),
                                                    imageList: functions
                                                        .listDataConversion(
                                                            getJsonField(
                                                      propertyListingDataItem,
                                                      r'''$.imageURLs''',
                                                    ).toString()),
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
                    if ((FFAppState().skipforHome == true) &&
                        responsiveVisibility(
                          context: context,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                      Align(
                        alignment: AlignmentDirectional(0.0, 1.0),
                        child: wrapWithModel(
                          model: _model.navBarModel,
                          updateCallback: () => setState(() {}),
                          child: NavBarWidget(
                            index: 1,
                          ),
                        ),
                      ),
                    if ((FFAppState().skipforHome == true) &&
                        responsiveVisibility(
                          context: context,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                      Align(
                        alignment: AlignmentDirectional(0.0, -0.76),
                        child: Padding(
                          padding: EdgeInsets.all(12.0),
                          child: wrapWithModel(
                            model: _model.searchFilterCompModel,
                            updateCallback: () => setState(() {}),
                            child: SearchFilterCompWidget(),
                          ),
                        ),
                      ),
                    if (((FFAppState().accessToken != null &&
                                FFAppState().accessToken != '') &&
                            (!FFAppState().userData.isAdmin &&
                                !FFAppState().userData.isHost &&
                                !FFAppState().userData.isPI &&
                                !FFAppState().userData.isAT) &&
                            (FFAppState().skipforHome == true)) &&
                        responsiveVisibility(
                          context: context,
                          tablet: false,
                          tabletLandscape: false,
                          desktop: false,
                        ))
                      Align(
                        alignment: AlignmentDirectional(0.87, 0.79),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'm_ex_welcome_page',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Container(
                            width: 180.0,
                            height: 45.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF867EF3),
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(50.0),
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(50.0),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'Request for Lease',
                                      style: GoogleFonts.getFont(
                                        'Noto Serif',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 40.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.solidHandPointLeft,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 24.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if ((FFAppState().skipforHome == true) &&
                        responsiveVisibility(
                          context: context,
                          desktop: false,
                        ))
                      Align(
                        alignment: AlignmentDirectional(0.0, -0.89),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 5.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.waving_hand,
                                color: Color(0x81FF5963),
                                size: 40.0,
                              ).animateOnPageLoad(
                                  animationsMap['iconOnPageLoadAnimation']!),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Welcome ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Work Sans',
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.italic,
                                              ),
                                        ),
                                      ),
                                      if (FFAppState().accessToken != null &&
                                          FFAppState().accessToken != '')
                                        Text(
                                          FFAppState().userData.firstName,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Work Sans',
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle: FontStyle.italic,
                                              ),
                                        ),
                                      Text(
                                        '!',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Grape Nuts',
                                              fontSize: 30.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ],
                                  ),
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                  ))
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          currentUserLocationValue?.toString(),
                                          '--',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Grape Nuts',
                                              fontSize: 15.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
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
              if (responsiveVisibility(
                context: context,
                phone: false,
              ))
                SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: wrapWithModel(
                              model: _model.newTopBarModel,
                              updateCallback: () => setState(() {}),
                              child: NewTopBarWidget(
                                showSearchFilter: false,
                              ),
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
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20.0,
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
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
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
                                      return 145.0;
                                    } else {
                                      return 0.0;
                                    }
                                  }(),
                                  decoration: BoxDecoration(),
                                ),
                                Flexible(
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 75.0),
                                          child: FutureBuilder<ApiCallResponse>(
                                            future: LiferayBaseUrlGroup
                                                .contentCall
                                                .call(
                                              articleName: 'home-page-banner',
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Image.asset(
                                                  '',
                                                );
                                              }
                                              final rowContentResponse =
                                                  snapshot.data!;
                                              return Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                    context)
                                                                .width >=
                                                            1536.0
                                                        ? 30.0
                                                        : 15.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.33,
                                                          height: 200.0,
                                                          child: PageView(
                                                            physics:
                                                                const NeverScrollableScrollPhysics(),
                                                            controller: _model
                                                                    .contentPageViewController ??=
                                                                PageController(
                                                                    initialPage:
                                                                        0),
                                                            scrollDirection:
                                                                Axis.horizontal,
                                                            children: [
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
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
                                                                          .start,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    GradientText(
                                                                      getJsonField(
                                                                        rowContentResponse
                                                                            .jsonBody,
                                                                        r'''$.carousel[0].Title1''',
                                                                      ).toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        fontSize:
                                                                            28.0,
                                                                      ),
                                                                      colors: [
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        Color(
                                                                            0xFFA51FF6)
                                                                      ],
                                                                      gradientDirection:
                                                                          GradientDirection
                                                                              .ltr,
                                                                      gradientType:
                                                                          GradientType
                                                                              .linear,
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            18.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            rowContentResponse.jsonBody,
                                                                            r'''$.carousel[0].Description''',
                                                                          ).toString(),
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                Color(0xFF475569),
                                                                            fontSize:
                                                                                18.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
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
                                                                    20.0,
                                                                    0.0,
                                                                    0.0),
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
                                                            await launchURL(
                                                                'https://play.google.com/');
                                                          },
                                                          child: Container(
                                                            width: 162.0,
                                                            height: 40.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              gradient:
                                                                  LinearGradient(
                                                                colors: [
                                                                  Color(
                                                                      0xFFA51FF6),
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary
                                                                ],
                                                                stops: [
                                                                  0.0,
                                                                  0.3,
                                                                  1.0
                                                                ],
                                                                begin:
                                                                    AlignmentDirectional(
                                                                        1.0,
                                                                        0.0),
                                                                end:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0),
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          100.0),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Text(
                                                                'Download App',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
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
                                                                    83.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Container(
                                                          width: 351.0,
                                                          height: 145.0,
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
                                                                Image.network(
                                                              functions.getImage(
                                                                  FFAppState().BaseUrl,
                                                                  getJsonField(
                                                                    rowContentResponse
                                                                        .jsonBody,
                                                                    r'''$.discountImage[0]''',
                                                                  ).toString())!,
                                                              width: 135.0,
                                                              height: 135.0,
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Container(
                                                    width: MediaQuery.sizeOf(
                                                                    context)
                                                                .width >=
                                                            1536.0
                                                        ? 30.0
                                                        : 15.0,
                                                    decoration: BoxDecoration(),
                                                  ),
                                                  Expanded(
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.4,
                                                      height: 480.0,
                                                      child: CarouselSlider(
                                                        items: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              functions.getImage(
                                                                  FFAppState().BaseUrl,
                                                                  getJsonField(
                                                                    rowContentResponse
                                                                        .jsonBody,
                                                                    r'''$.bannerImages[0]''',
                                                                  ).toString())!,
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                          ),
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              functions.getImage(
                                                                  FFAppState().BaseUrl,
                                                                  getJsonField(
                                                                    rowContentResponse
                                                                        .jsonBody,
                                                                    r'''$.bannerImages[0]''',
                                                                  ).toString())!,
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                          ),
                                                        ],
                                                        carouselController: _model
                                                                .carouselController ??=
                                                            CarouselController(),
                                                        options:
                                                            CarouselOptions(
                                                          initialPage: 1,
                                                          viewportFraction: 1.0,
                                                          disableCenter: true,
                                                          enlargeCenterPage:
                                                              true,
                                                          enlargeFactor: 0.25,
                                                          enableInfiniteScroll:
                                                              true,
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          autoPlay: true,
                                                          autoPlayAnimationDuration:
                                                              Duration(
                                                                  milliseconds:
                                                                      800),
                                                          autoPlayInterval:
                                                              Duration(
                                                                  milliseconds:
                                                                      (800 +
                                                                          4000)),
                                                          autoPlayCurve:
                                                              Curves.linear,
                                                          pauseAutoPlayInFiniteScroll:
                                                              true,
                                                          onPageChanged: (index,
                                                                  _) =>
                                                              _model.carouselCurrentIndex =
                                                                  index,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          ),
                                        ),
                                        Divider(
                                          thickness: 2.0,
                                          indent: 200.0,
                                          endIndent: 200.0,
                                          color: Color(0xFFE8E8E8),
                                        ),
                                        Align(
                                          alignment:
                                              AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 30.0, 0.0, 0.0),
                                            child: RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'What are you ',
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                      color: Color(0xFF072A3E),
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: 33.0,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'Looking ',
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                      color: Color(0xFF072A3E),
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 35.0,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: 'for ?',
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                      color: Color(0xFF072A3E),
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      fontSize: 33.0,
                                                    ),
                                                  )
                                                ],
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: () {
                                    if (MediaQuery.sizeOf(context).width <
                                        1536.0) {
                                      return 100.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width <
                                        1750.0) {
                                      return 150.0;
                                    } else if (MediaQuery.sizeOf(context)
                                            .width >
                                        1536.0) {
                                      return 200.0;
                                    } else {
                                      return 0.0;
                                    }
                                  }(),
                                  decoration: BoxDecoration(),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 25.0, 0.0, 50.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.78,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF9F9F9),
                                  borderRadius: BorderRadius.circular(22.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Flexible(
                                      child: Builder(
                                        builder: (context) => Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 12.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              if (MediaQuery.sizeOf(context)
                                                      .width <
                                                  991.0) {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  isDismissible: false,
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
                                                        child: Container(
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.9,
                                                          child: SearchWidget(),
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
                                                                  1.0,
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.3,
                                                          child: SearchWidget(),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then(
                                                    (value) => setState(() {}));
                                              }
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Container(
                                                  width: 45.0,
                                                  height: 45.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(12.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(12.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                  ),
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: FaIcon(
                                                    FontAwesomeIcons.search,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    size: 20.0,
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.3,
                                                    height: 45.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        bottomRight:
                                                            Radius.circular(
                                                                12.0),
                                                        topLeft:
                                                            Radius.circular(
                                                                0.0),
                                                        topRight:
                                                            Radius.circular(
                                                                12.0),
                                                      ),
                                                      border: Border.all(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        width: 1.0,
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceEvenly,
                                                      children: [
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFAppState().searchCity !=
                                                                          null &&
                                                                      FFAppState()
                                                                              .searchCity !=
                                                                          ''
                                                                  ? FFAppState()
                                                                      .searchCity
                                                                  : 'Any Place',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      3.0,
                                                                      0.0,
                                                                      3.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 4.0,
                                                            height: 4.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        2.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFAppState()
                                                                          .searchDates
                                                                          .length >
                                                                      0
                                                                  ? '${dateTimeFormat('MMMd', FFAppState().searchDates.first)} - ${dateTimeFormat('MMMd', FFAppState().searchDates.last)}'
                                                                  : 'Any Date',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      3.0,
                                                                      0.0,
                                                                      3.0,
                                                                      0.0),
                                                          child: Container(
                                                            width: 4.0,
                                                            height: 4.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        2.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFAppState().searchGuests >
                                                                      0
                                                                  ? '${FFAppState().searchGuests.toString()} Guests'
                                                                  : 'Guests',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
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
                                    ),
                                    SizedBox(
                                      height: 70.0,
                                      child: VerticalDivider(
                                        thickness: 1.0,
                                        indent: 10.0,
                                        endIndent: 10.0,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                      ),
                                    ),
                                    FutureBuilder<ApiCallResponse>(
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
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  FFAppState()
                                                      .addToUserFilterPropertyType(
                                                          getJsonField(
                                                    rowGetPropertyTypesResponse
                                                        .jsonBody,
                                                    r'''$[0].categoryId''',
                                                  ));
                                                  setState(() {});
                                                  if (FFAppState()
                                                      .isEnableSearch) {
                                                    context.goNamed(
                                                      'helper_page',
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
                                                    'search_page',
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

                                                  _model.filterOutputForWeb =
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

                                                  if ((_model.filterOutputForWeb
                                                          ?.succeeded ??
                                                      true)) {
                                                    FFAppState()
                                                            .searchResultCount =
                                                        getJsonField(
                                                      rowGetPropertyTypesResponse
                                                          .jsonBody,
                                                      r'''$.totalCount''',
                                                    );
                                                    FFAppState().update(() {});
                                                  } else {
                                                    FFAppState()
                                                        .searchResultCount = 0;
                                                    FFAppState().update(() {});
                                                  }

                                                  setState(() {});
                                                },
                                                child: Container(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFFE1E7FE),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(10.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/house.svg',
                                                        width: 2.0,
                                                        height: 2.0,
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 20.0, 0.0),
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
                                                        .addToUserFilterPropertyType(
                                                            getJsonField(
                                                      rowGetPropertyTypesResponse
                                                          .jsonBody,
                                                      r'''$[0].categoryId''',
                                                    ));
                                                    setState(() {});
                                                    if (FFAppState()
                                                        .isEnableSearch) {
                                                      context.goNamed(
                                                        'helper_page',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    }

                                                    context.pushNamed(
                                                      'search_page',
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

                                                    _model.filterTextOutputForWeb =
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
                                                      city: FFAppState()
                                                          .searchCity,
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
                                                            .filterTextOutputForWeb
                                                            ?.succeeded ??
                                                        true)) {
                                                      FFAppState()
                                                              .searchResultCount =
                                                          getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$.totalCount''',
                                                      );
                                                      FFAppState()
                                                          .update(() {});
                                                    } else {
                                                      FFAppState()
                                                          .searchResultCount = 0;
                                                      FFAppState()
                                                          .update(() {});
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
                                                          fontFamily:
                                                              'Work Sans',
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
                                                        .addToUserFilterPropertyType(
                                                            getJsonField(
                                                      rowGetPropertyTypesResponse
                                                          .jsonBody,
                                                      r'''$[1].categoryId''',
                                                    ));
                                                    setState(() {});
                                                    if (FFAppState()
                                                        .isEnableSearch) {
                                                      context.goNamed(
                                                        'helper_page',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    }

                                                    context.pushNamed(
                                                      'search_page',
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

                                                    _model.filter1ForWeb =
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
                                                      city: FFAppState()
                                                          .searchCity,
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

                                                    if ((_model.filter1ForWeb
                                                            ?.succeeded ??
                                                        true)) {
                                                      FFAppState()
                                                              .searchResultCount =
                                                          getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$.totalCount''',
                                                      );
                                                      FFAppState()
                                                          .update(() {});
                                                    } else {
                                                      FFAppState()
                                                          .searchResultCount = 0;
                                                      FFAppState()
                                                          .update(() {});
                                                    }

                                                    setState(() {});
                                                  },
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
                                                      padding:
                                                          EdgeInsets.all(6.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/villa.svg',
                                                          width: 3.0,
                                                          height: 3.0,
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 20.0, 0.0),
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
                                                        .addToUserFilterPropertyType(
                                                            getJsonField(
                                                      rowGetPropertyTypesResponse
                                                          .jsonBody,
                                                      r'''$[1].categoryId''',
                                                    ));
                                                    setState(() {});
                                                    if (FFAppState()
                                                        .isEnableSearch) {
                                                      context.goNamed(
                                                        'helper_page',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    }

                                                    context.pushNamed(
                                                      'search_page',
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

                                                    _model.filterText1ForWeb =
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
                                                      city: FFAppState()
                                                          .searchCity,
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
                                                            .filterText1ForWeb
                                                            ?.succeeded ??
                                                        true)) {
                                                      FFAppState()
                                                              .searchResultCount =
                                                          getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$.totalCount''',
                                                      );
                                                      FFAppState()
                                                          .update(() {});
                                                    } else {
                                                      FFAppState()
                                                          .searchResultCount = 0;
                                                      FFAppState()
                                                          .update(() {});
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
                                                          fontFamily:
                                                              'Work Sans',
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
                                                        .addToUserFilterPropertyType(
                                                            getJsonField(
                                                      rowGetPropertyTypesResponse
                                                          .jsonBody,
                                                      r'''$[2].categoryId''',
                                                    ));
                                                    setState(() {});
                                                    if (FFAppState()
                                                        .isEnableSearch) {
                                                      context.goNamed(
                                                        'helper_page',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    }

                                                    context.pushNamed(
                                                      'search_page',
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

                                                    _model.filter2ForWeb =
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
                                                      city: FFAppState()
                                                          .searchCity,
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

                                                    if ((_model.filter2ForWeb
                                                            ?.succeeded ??
                                                        true)) {
                                                      FFAppState()
                                                              .searchResultCount =
                                                          getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$.totalCount''',
                                                      );
                                                      FFAppState()
                                                          .update(() {});
                                                    } else {
                                                      FFAppState()
                                                          .searchResultCount = 0;
                                                      FFAppState()
                                                          .update(() {});
                                                    }

                                                    setState(() {});
                                                  },
                                                  child: Container(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFCDEDF1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              50.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6.0),
                                                        child: Image.asset(
                                                          'assets/images/Group_18499.png',
                                                          fit: BoxFit.contain,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 20.0, 0.0),
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
                                                        .addToUserFilterPropertyType(
                                                            getJsonField(
                                                      rowGetPropertyTypesResponse
                                                          .jsonBody,
                                                      r'''$[2].categoryId''',
                                                    ));
                                                    setState(() {});
                                                    if (FFAppState()
                                                        .isEnableSearch) {
                                                      context.goNamed(
                                                        'helper_page',
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );
                                                    }

                                                    context.pushNamed(
                                                      'search_page',
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

                                                    _model.filterText2ForWeb =
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
                                                      city: FFAppState()
                                                          .searchCity,
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
                                                            .filterText2ForWeb
                                                            ?.succeeded ??
                                                        true)) {
                                                      FFAppState()
                                                              .searchResultCount =
                                                          getJsonField(
                                                        rowGetPropertyTypesResponse
                                                            .jsonBody,
                                                        r'''$.totalCount''',
                                                      );
                                                      FFAppState()
                                                          .update(() {});
                                                    } else {
                                                      FFAppState()
                                                          .searchResultCount = 0;
                                                      FFAppState()
                                                          .update(() {});
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
                                                          fontFamily:
                                                              'Work Sans',
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
                                    Builder(
                                      builder: (context) => Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 24.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (MediaQuery.sizeOf(context)
                                                    .width <
                                                991.0) {
                                              await showModalBottomSheet(
                                                isScrollControlled: true,
                                                backgroundColor:
                                                    Colors.transparent,
                                                isDismissible: false,
                                                enableDrag: false,
                                                useSafeArea: true,
                                                context: context,
                                                builder: (context) {
                                                  return GestureDetector(
                                                    onTap: () => _model
                                                            .unfocusNode
                                                            .canRequestFocus
                                                        ? FocusScope.of(context)
                                                            .requestFocus(_model
                                                                .unfocusNode)
                                                        : FocusScope.of(context)
                                                            .unfocus(),
                                                    child: Padding(
                                                      padding: MediaQuery
                                                          .viewInsetsOf(
                                                              context),
                                                      child: FilterWidget(),
                                                    ),
                                                  );
                                                },
                                              ).then((value) =>
                                                  safeSetState(() {}));
                                            } else {
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
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.3,
                                                        child: FilterWidget(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));
                                            }
                                          },
                                          child: Container(
                                            width: 40.0,
                                            height: 40.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBgOpacity,
                                              borderRadius:
                                                  BorderRadius.circular(6.0),
                                            ),
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: Image.asset(
                                                'assets/images/filter_gif.gif',
                                                width: 30.0,
                                                height: 30.0,
                                                fit: BoxFit.cover,
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
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'SID Luxury Homes',
                                      style: GoogleFonts.getFont(
                                        'Work Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 32.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' From ',
                                      style: GoogleFonts.getFont(
                                        'Work Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 32.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Hyderabad',
                                      style: GoogleFonts.getFont(
                                        'Work Sans',
                                        color: Color(0xFFD70000),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 32.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' - ',
                                      style: GoogleFonts.getFont(
                                        'Work Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 32.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Gachibowli',
                                      style: GoogleFonts.getFont(
                                        'Work Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 32.0,
                                      ),
                                    )
                                  ],
                                  style: GoogleFonts.getFont(
                                    'Work Sans',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              'Discover the Most Popular Stays in our Collection',
                              style: GoogleFonts.getFont(
                                'Work Sans',
                                color: Color(0xFF475569),
                                fontWeight: FontWeight.normal,
                                fontSize: 20.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 12.0, 0.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: MicroserviceAvailabilityAPIsGroup
                                  .propertyListingsCall
                                  .call(
                                pageLoadItemsCount: 4,
                                pageNoCount: 1,
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
                                final rowPropertyListingsResponse =
                                    snapshot.data!;
                                return Builder(
                                  builder: (context) {
                                    final propertyListingData = getJsonField(
                                      rowPropertyListingsResponse.jsonBody,
                                      r'''$.propertyBriefs''',
                                    ).toList();
                                    return SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: List.generate(
                                            propertyListingData.length,
                                            (propertyListingDataIndex) {
                                          final propertyListingDataItem =
                                              propertyListingData[
                                                  propertyListingDataIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 5.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.goNamed(
                                                  'property_details',
                                                  queryParameters: {
                                                    'id': serializeParam(
                                                      getJsonField(
                                                        propertyListingDataItem,
                                                        r'''$.propertyId''',
                                                      ),
                                                      ParamType.JSON,
                                                    ),
                                                    'index': serializeParam(
                                                      propertyListingDataIndex,
                                                      ParamType.int,
                                                    ),
                                                  }.withoutNulls,
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
                                              child: NewPropertyCardWidget(
                                                key: Key(
                                                    'Key30p_${propertyListingDataIndex}_of_${propertyListingData.length}'),
                                                propertyType: getJsonField(
                                                  propertyListingDataItem,
                                                  r'''$.propertyType''',
                                                ).toString(),
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
                                                imageList: functions
                                                    .listDataConversion(
                                                        getJsonField(
                                                  propertyListingDataItem,
                                                  r'''$.imageURLs''',
                                                ).toString()),
                                                bedRooms: 2,
                                                bathRooms: 2,
                                                propertyId: getJsonField(
                                                  propertyListingDataItem,
                                                  r'''$.propertyId''',
                                                ),
                                                totalPropertyPrice:
                                                    getJsonField(
                                                  propertyListingDataItem,
                                                  r'''$.totalPrice''',
                                                ),
                                                pricePerRoom: getJsonField(
                                                  propertyListingDataItem,
                                                  r'''$.pricePerRoom''',
                                                ),
                                                index: propertyListingDataIndex,
                                              ),
                                            ),
                                          );
                                        }).divide(SizedBox(width: 20.0)),
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 45.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.goNamed(
                                    'property_details',
                                    queryParameters: {
                                      'id': serializeParam(
                                        null,
                                        ParamType.JSON,
                                      ),
                                      'index': serializeParam(
                                        0,
                                        ParamType.int,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                child: Container(
                                  width: 135.0,
                                  height: 40.0,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFFA51FF6),
                                        FlutterFlowTheme.of(context).primary,
                                        FlutterFlowTheme.of(context).primary
                                      ],
                                      stops: [0.0, 0.3, 1.0],
                                      begin: AlignmentDirectional(1.0, 0.0),
                                      end: AlignmentDirectional(-1.0, 0),
                                    ),
                                    borderRadius: BorderRadius.circular(100.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      'View More',
                                      style: GoogleFonts.getFont(
                                        'Work Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
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
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 100.0, 0.0, 24.0),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Browse From Top Categories',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: Color(0xFF1C1C1C),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 32.0,
                                        ),
                                      )
                                    ],
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                    ),
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
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: SvgPicture.asset(
                                  'assets/images/Group_33507_(1).svg',
                                  width: 104.0,
                                  height: 6.0,
                                  fit: BoxFit.cover,
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 65.0, 10.0, 0.0),
                              child: Wrap(
                                spacing: 15.0,
                                runSpacing: 15.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    width: 235.0,
                                    height: 72.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(7.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                            width: 59.0,
                                            height: 59.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFFDEBEC),
                                              borderRadius:
                                                  BorderRadius.circular(59.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(59.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/relax.svg',
                                                  width: 32.0,
                                                  height: 32.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: Text(
                                                'Holiday Rentals',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: Color(0xFF1C1C1C),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 260.0,
                                    height: 72.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(7.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 59.0,
                                            height: 59.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF1F8ED),
                                              borderRadius:
                                                  BorderRadius.circular(59.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(59.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/blueprint.svg',
                                                  width: 32.0,
                                                  height: 32.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: Text(
                                                'Residential Spaces',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: Color(0xFF1C1C1C),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 275.0,
                                    height: 72.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(7.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 59.0,
                                            height: 59.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF6EDF4),
                                              borderRadius:
                                                  BorderRadius.circular(59.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(59.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/compass.svg',
                                                  width: 32.0,
                                                  height: 32.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: Text(
                                                'Service Apartments',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: Color(0xFF1C1C1C),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 18.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 280.0,
                                    height: 72.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(7.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 59.0,
                                            height: 59.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEAF2F9),
                                              borderRadius:
                                                  BorderRadius.circular(59.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(59.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/business-meeting.svg',
                                                  width: 32.0,
                                                  height: 32.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                child: Text(
                                                  'Specialized Business Stays',
                                                  textAlign: TextAlign.start,
                                                  style: GoogleFonts.getFont(
                                                    'Work Sans',
                                                    color: Color(0xFF1C1C1C),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 252.0,
                                    height: 72.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius:
                                          BorderRadius.circular(100.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(7.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 59.0,
                                            height: 59.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFEAF2F9),
                                              borderRadius:
                                                  BorderRadius.circular(59.0),
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(59.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/avatar.svg',
                                                  width: 32.0,
                                                  height: 32.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 10.0, 0.0),
                                              child: Text(
                                                'Co-living Space',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: Color(0xFF1C1C1C),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 20.0,
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
                          FutureBuilder<ApiCallResponse>(
                            future: LiferayBaseUrlGroup.featuredLocationsCall
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
                                          FlutterFlowTheme.of(context).primary,
                                      size: 40.0,
                                    ),
                                  ),
                                );
                              }
                              final columnFeaturedLocationsResponse =
                                  snapshot.data!;
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 100.0, 0.0, 24.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: getJsonField(
                                                columnFeaturedLocationsResponse
                                                    .jsonBody,
                                                r'''$.title''',
                                              ).toString(),
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color: Color(0xFF1C1C1C),
                                                fontWeight: FontWeight.w500,
                                                fontSize: 32.0,
                                              ),
                                            )
                                          ],
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 47.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Group_33507_(1).svg',
                                          width: 104.0,
                                          height: 6.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 45.0, 15.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Flexible(
                                          child: MasonryGridView.builder(
                                            gridDelegate:
                                                SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                              crossAxisCount: 4,
                                            ),
                                            crossAxisSpacing: 30.0,
                                            mainAxisSpacing: 30.0,
                                            itemCount: 6,
                                            shrinkWrap: true,
                                            itemBuilder: (context, index) {
                                              return [
                                                () => Container(
                                                      height: 430.0,
                                                      child: Stack(
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              functions.getImage(
                                                                  FFAppState().BaseUrl,
                                                                  getJsonField(
                                                                    columnFeaturedLocationsResponse
                                                                        .jsonBody,
                                                                    r'''$.images[0].image''',
                                                                  ).toString())!,
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.3,
                                                              height: 430.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 1.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    Color(
                                                                        0x98000000),
                                                                    Color(
                                                                        0x52000000),
                                                                    Colors
                                                                        .transparent
                                                                  ],
                                                                  stops: [
                                                                    0.0,
                                                                    0.4,
                                                                    0.5
                                                                  ],
                                                                  begin:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          1.0),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          -1.0),
                                                                ),
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
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0.0),
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        1.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      columnFeaturedLocationsResponse
                                                                          .jsonBody,
                                                                      r'''$.images[0].name''',
                                                                    ).toString(),
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                () => Container(
                                                      height: 200.0,
                                                      child: Stack(
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              functions.getImage(
                                                                  FFAppState().BaseUrl,
                                                                  getJsonField(
                                                                    columnFeaturedLocationsResponse
                                                                        .jsonBody,
                                                                    r'''$.images[1].image''',
                                                                  ).toString())!,
                                                              width: double
                                                                  .infinity,
                                                              height: 200.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 1.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 75.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    Color(
                                                                        0x98000000),
                                                                    Color(
                                                                        0x53000000),
                                                                    Colors
                                                                        .transparent
                                                                  ],
                                                                  stops: [
                                                                    0.0,
                                                                    0.4,
                                                                    0.5
                                                                  ],
                                                                  begin:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          1.0),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          -1.0),
                                                                ),
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
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0.0),
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        1.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      columnFeaturedLocationsResponse
                                                                          .jsonBody,
                                                                      r'''$.images[1].name''',
                                                                    ).toString(),
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                () => Container(
                                                      height: 200.0,
                                                      child: Stack(
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              functions.getImage(
                                                                  FFAppState().BaseUrl,
                                                                  getJsonField(
                                                                    columnFeaturedLocationsResponse
                                                                        .jsonBody,
                                                                    r'''$.images[2].image''',
                                                                  ).toString())!,
                                                              width: double
                                                                  .infinity,
                                                              height: 200.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 1.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    Color(
                                                                        0x9A000000),
                                                                    Color(
                                                                        0x52000000),
                                                                    Colors
                                                                        .transparent
                                                                  ],
                                                                  stops: [
                                                                    0.0,
                                                                    0.4,
                                                                    0.5
                                                                  ],
                                                                  begin:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          1.0),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          -1.0),
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        1.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      columnFeaturedLocationsResponse
                                                                          .jsonBody,
                                                                      r'''$.images[2].name''',
                                                                    ).toString(),
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                () => Container(
                                                      height: 430.0,
                                                      child: Stack(
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              functions.getImage(
                                                                  FFAppState().BaseUrl,
                                                                  getJsonField(
                                                                    columnFeaturedLocationsResponse
                                                                        .jsonBody,
                                                                    r'''$.images[5].image''',
                                                                  ).toString())!,
                                                              width: double
                                                                  .infinity,
                                                              height: 430.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 1.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    Color(
                                                                        0x9A000000),
                                                                    Color(
                                                                        0x52000000),
                                                                    Colors
                                                                        .transparent
                                                                  ],
                                                                  stops: [
                                                                    0.0,
                                                                    0.4,
                                                                    0.5
                                                                  ],
                                                                  begin:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          1.0),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          -1.0),
                                                                ),
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
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0.0),
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        1.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      columnFeaturedLocationsResponse
                                                                          .jsonBody,
                                                                      r'''$.images[5].name''',
                                                                    ).toString(),
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                () => Container(
                                                      height: 200.0,
                                                      child: Stack(
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              functions.getImage(
                                                                  FFAppState().BaseUrl,
                                                                  getJsonField(
                                                                    columnFeaturedLocationsResponse
                                                                        .jsonBody,
                                                                    r'''$.images[3].image''',
                                                                  ).toString())!,
                                                              width: double
                                                                  .infinity,
                                                              height: 200.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 1.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 75.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    Color(
                                                                        0x99000000),
                                                                    Color(
                                                                        0x80000000),
                                                                    Colors
                                                                        .transparent
                                                                  ],
                                                                  stops: [
                                                                    0.2,
                                                                    0.4,
                                                                    0.7
                                                                  ],
                                                                  begin:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          1.0),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          -1.0),
                                                                ),
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
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0.0),
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        1.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      columnFeaturedLocationsResponse
                                                                          .jsonBody,
                                                                      r'''$.images[3].name''',
                                                                    ).toString(),
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                () => Container(
                                                      height: 200.0,
                                                      child: Stack(
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child:
                                                                Image.network(
                                                              functions.getImage(
                                                                  FFAppState().BaseUrl,
                                                                  getJsonField(
                                                                    columnFeaturedLocationsResponse
                                                                        .jsonBody,
                                                                    r'''$.images[4].image''',
                                                                  ).toString())!,
                                                              width: double
                                                                  .infinity,
                                                              height: 200.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 1.0),
                                                            child: Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 100.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    Color(
                                                                        0x9A000000),
                                                                    Color(
                                                                        0x52000000),
                                                                    Colors
                                                                        .transparent
                                                                  ],
                                                                  stops: [
                                                                    0.0,
                                                                    0.4,
                                                                    0.5
                                                                  ],
                                                                  begin:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          1.0),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          0,
                                                                          -1.0),
                                                                ),
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
                                                                          0.0),
                                                                  topRight: Radius
                                                                      .circular(
                                                                          0.0),
                                                                ),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        1.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16.0,
                                                                          0.0,
                                                                          0.0,
                                                                          16.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      columnFeaturedLocationsResponse
                                                                          .jsonBody,
                                                                      r'''$.images[4].name''',
                                                                    ).toString(),
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                              ][index]();
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 85.0, 0.0, 20.0),
                            child: Container(
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    95.0, 0.0, 95.0, 0.0),
                                child: FutureBuilder<ApiCallResponse>(
                                  future: LiferayBaseUrlGroup.contentCall.call(
                                    articleName: 'why-choose-slh',
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
                                    final staggeredViewContentResponse =
                                        snapshot.data!;
                                    return MasonryGridView.builder(
                                      gridDelegate:
                                          SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                      ),
                                      crossAxisSpacing: 30.0,
                                      mainAxisSpacing: 30.0,
                                      itemCount: 6,
                                      shrinkWrap: true,
                                      itemBuilder: (context, index) {
                                        return [
                                          () => Container(
                                                height: 400.0,
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 30.0, 30.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
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
                                                                    8.0),
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
                                                                  staggeredViewContentResponse
                                                                      .jsonBody,
                                                                  r'''$[0].Title1''',
                                                                ).toString(),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: Color(
                                                                      0xFF1C1C1C),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      42.0,
                                                                ),
                                                              )
                                                            ],
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Work Sans',
                                                            ),
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
                                                              text:
                                                                  getJsonField(
                                                                staggeredViewContentResponse
                                                                    .jsonBody,
                                                                r'''$[0].Title2''',
                                                              ).toString(),
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 42.0,
                                                              ),
                                                            )
                                                          ],
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Work Sans',
                                                          ),
                                                        ),
                                                      ),
                                                      Flexible(
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      15.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Text(
                                                            getJsonField(
                                                              staggeredViewContentResponse
                                                                  .jsonBody,
                                                              r'''$[0].Description''',
                                                            ).toString(),
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Work Sans',
                                                              color: Color(
                                                                  0xFF3E3E3E),
                                                              fontSize: 18.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                          () => MouseRegion(
                                                opaque: false,
                                                cursor: MouseCursor.defer ??
                                                    MouseCursor.defer,
                                                child: Container(
                                                  height: 400.0,
                                                  decoration: BoxDecoration(
                                                    color: _model.onHover1 ==
                                                            true
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                30.0,
                                                                30.0,
                                                                30.0,
                                                                30.0),
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
                                                                      12.0),
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
                                                                    staggeredViewContentResponse
                                                                        .jsonBody,
                                                                    r'''$[1].Title1''',
                                                                  ).toString(),
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: _model.onHover1 ==
                                                                            true
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                        : FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        36.0,
                                                                  ),
                                                                )
                                                              ],
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          getJsonField(
                                                            staggeredViewContentResponse
                                                                .jsonBody,
                                                            r'''$[1].Title2''',
                                                          ).toString(),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Work Sans',
                                                            color: _model
                                                                        .onHover1 ==
                                                                    true
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground
                                                                : Color(
                                                                    0xFF5C5C5C),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 24.0,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  staggeredViewContentResponse
                                                                      .jsonBody,
                                                                  r'''$[1].Description''',
                                                                ).toString(),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: _model
                                                                              .onHover1 ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground
                                                                      : Color(
                                                                          0xFF3E3E3E),
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                onEnter: ((event) async {
                                                  setState(() => _model
                                                          .mouseRegionHovered1 =
                                                      true);
                                                  _model.onHover1 = true;
                                                  _model.onHover2 = false;
                                                  _model.onHover3 = false;
                                                  _model.onHover4 = false;
                                                  _model.onHover5 = false;
                                                  setState(() {});
                                                }),
                                                onExit: ((event) async {
                                                  setState(() => _model
                                                          .mouseRegionHovered1 =
                                                      false);
                                                }),
                                              ),
                                          () => MouseRegion(
                                                opaque: false,
                                                cursor: MouseCursor.defer ??
                                                    MouseCursor.defer,
                                                child: Container(
                                                  height: 400.0,
                                                  decoration: BoxDecoration(
                                                    color: _model.onHover2 ==
                                                            true
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                30.0,
                                                                30.0,
                                                                30.0,
                                                                25.0),
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
                                                                      18.0),
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
                                                                    staggeredViewContentResponse
                                                                        .jsonBody,
                                                                    r'''$[2].Title1''',
                                                                  ).toString(),
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: _model.onHover2 ==
                                                                            true
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                        : FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        36.0,
                                                                  ),
                                                                )
                                                              ],
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          getJsonField(
                                                            staggeredViewContentResponse
                                                                .jsonBody,
                                                            r'''$[2].Title2''',
                                                          ).toString(),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Work Sans',
                                                            color: _model
                                                                        .onHover2 ==
                                                                    true
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground
                                                                : Color(
                                                                    0xFF5C5C5C),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 24.0,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  staggeredViewContentResponse
                                                                      .jsonBody,
                                                                  r'''$[2].Description''',
                                                                ).toString(),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: _model
                                                                              .onHover2 ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground
                                                                      : Color(
                                                                          0xFF3E3E3E),
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                onEnter: ((event) async {
                                                  setState(() => _model
                                                          .mouseRegionHovered2 =
                                                      true);
                                                  _model.onHover1 = false;
                                                  _model.onHover2 = true;
                                                  _model.onHover3 = false;
                                                  _model.onHover4 = false;
                                                  _model.onHover5 = false;
                                                  setState(() {});
                                                }),
                                                onExit: ((event) async {
                                                  setState(() => _model
                                                          .mouseRegionHovered2 =
                                                      false);
                                                }),
                                              ),
                                          () => MouseRegion(
                                                opaque: false,
                                                cursor: MouseCursor.defer ??
                                                    MouseCursor.defer,
                                                child: Container(
                                                  height: 400.0,
                                                  decoration: BoxDecoration(
                                                    color: _model.onHover3 ==
                                                            true
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                30.0,
                                                                28.0,
                                                                30.0,
                                                                40.0),
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
                                                                      18.0),
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
                                                                    staggeredViewContentResponse
                                                                        .jsonBody,
                                                                    r'''$[3].Title1''',
                                                                  ).toString(),
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: _model.onHover3 ==
                                                                            true
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                        : FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        36.0,
                                                                  ),
                                                                )
                                                              ],
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          getJsonField(
                                                            staggeredViewContentResponse
                                                                .jsonBody,
                                                            r'''$[3].Title2''',
                                                          ).toString(),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Work Sans',
                                                            color: _model
                                                                        .onHover3 ==
                                                                    true
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground
                                                                : Color(
                                                                    0xFF5C5C5C),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 24.0,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  staggeredViewContentResponse
                                                                      .jsonBody,
                                                                  r'''$[3].Description''',
                                                                ).toString(),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: _model
                                                                              .onHover3 ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground
                                                                      : Color(
                                                                          0xFF3E3E3E),
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                onEnter: ((event) async {
                                                  setState(() => _model
                                                          .mouseRegionHovered3 =
                                                      true);
                                                  _model.onHover1 = false;
                                                  _model.onHover2 = false;
                                                  _model.onHover3 = true;
                                                  _model.onHover4 = false;
                                                  _model.onHover5 = false;
                                                  setState(() {});
                                                }),
                                                onExit: ((event) async {
                                                  setState(() => _model
                                                          .mouseRegionHovered3 =
                                                      false);
                                                }),
                                              ),
                                          () => MouseRegion(
                                                opaque: false,
                                                cursor: MouseCursor.defer ??
                                                    MouseCursor.defer,
                                                child: Container(
                                                  height: 400.0,
                                                  decoration: BoxDecoration(
                                                    color: _model.onHover4 ==
                                                            true
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                30.0,
                                                                30.0,
                                                                30.0,
                                                                30.0),
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
                                                                      18.0),
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
                                                                    staggeredViewContentResponse
                                                                        .jsonBody,
                                                                    r'''$[4].Title1''',
                                                                  ).toString(),
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: _model.onHover4 ==
                                                                            true
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                        : FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        36.0,
                                                                  ),
                                                                )
                                                              ],
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          getJsonField(
                                                            staggeredViewContentResponse
                                                                .jsonBody,
                                                            r'''$[4].Title2''',
                                                          ).toString(),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Work Sans',
                                                            color: _model
                                                                        .onHover4 ==
                                                                    true
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground
                                                                : Color(
                                                                    0xFF5C5C5C),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 24.0,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  staggeredViewContentResponse
                                                                      .jsonBody,
                                                                  r'''$[4].Description''',
                                                                ).toString(),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: _model
                                                                              .onHover4 ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground
                                                                      : Color(
                                                                          0xFF3E3E3E),
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                onEnter: ((event) async {
                                                  setState(() => _model
                                                          .mouseRegionHovered4 =
                                                      true);
                                                  _model.onHover1 = false;
                                                  _model.onHover2 = false;
                                                  _model.onHover3 = false;
                                                  _model.onHover4 = true;
                                                  _model.onHover5 = false;
                                                  setState(() {});
                                                }),
                                                onExit: ((event) async {
                                                  setState(() => _model
                                                          .mouseRegionHovered4 =
                                                      false);
                                                }),
                                              ),
                                          () => MouseRegion(
                                                opaque: false,
                                                cursor: MouseCursor.defer ??
                                                    MouseCursor.defer,
                                                child: Container(
                                                  height: 400.0,
                                                  decoration: BoxDecoration(
                                                    color: _model.onHover5 ==
                                                            true
                                                        ? FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                        : FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                30.0,
                                                                30.0,
                                                                30.0,
                                                                30.0),
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
                                                                      12.0),
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
                                                                    staggeredViewContentResponse
                                                                        .jsonBody,
                                                                    r'''$[5].Title1''',
                                                                  ).toString(),
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: _model.onHover5 ==
                                                                            true
                                                                        ? FlutterFlowTheme.of(context)
                                                                            .primaryBackground
                                                                        : FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        36.0,
                                                                  ),
                                                                )
                                                              ],
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          getJsonField(
                                                            staggeredViewContentResponse
                                                                .jsonBody,
                                                            r'''$[5].Title2''',
                                                          ).toString(),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Work Sans',
                                                            color: _model
                                                                        .onHover5 ==
                                                                    true
                                                                ? FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground
                                                                : Color(
                                                                    0xFF5C5C5C),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 24.0,
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  staggeredViewContentResponse
                                                                      .jsonBody,
                                                                  r'''$[5].Description''',
                                                                ).toString(),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: _model
                                                                              .onHover5 ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground
                                                                      : Color(
                                                                          0xFF3E3E3E),
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                onEnter: ((event) async {
                                                  setState(() => _model
                                                          .mouseRegionHovered5 =
                                                      true);
                                                  _model.onHover1 = false;
                                                  _model.onHover2 = false;
                                                  _model.onHover3 = false;
                                                  _model.onHover4 = false;
                                                  _model.onHover5 = true;
                                                  setState(() {});
                                                }),
                                                onExit: ((event) async {
                                                  setState(() => _model
                                                          .mouseRegionHovered5 =
                                                      false);
                                                }),
                                              ),
                                        ][index]();
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            decoration: BoxDecoration(
                              color: Color(0xFFF2F2F2),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 95.0, 0.0, 65.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF2F2F2),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 35.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Insights and ',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color: Color(0xFF1C1C1C),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 36.0,
                                            ),
                                          ),
                                          Text(
                                            'Performance',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color: Color(0xFF1C1C1C),
                                              fontWeight: FontWeight.w500,
                                              fontSize: 36.0,
                                            ),
                                          ),
                                          Text(
                                            'Metrics',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 36.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 30.0, 0.0),
                                    child: Container(
                                      width: 210.0,
                                      height: 180.0,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '50k+',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 40.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 5.0, 10.0, 10.0),
                                            child: Text(
                                              'Delighted Customers',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 30.0, 0.0),
                                    child: Container(
                                      width: 200.0,
                                      height: 180.0,
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            '1000+',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 40.0,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 10.0),
                                            child: Text(
                                              'Active Listings',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 18.0,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 200.0,
                                    height: 180.0,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '30+',
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 40.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 5.0, 0.0, 10.0),
                                          child: Text(
                                            'Cities & Counting ',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              fontSize: 18.0,
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
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0x80FFFFFF),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 90.0, 0.0, 65.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        80.0, 0.0, 0.0, 0.0),
                                    child: Container(
                                      decoration: BoxDecoration(),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: SvgPicture.asset(
                                              'assets/images/sid_logo.svg',
                                              width: 78.0,
                                              height: 80.0,
                                              fit: BoxFit.contain,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 18.0, 0.0, 0.0),
                                            child: Text(
                                              'Digital transformation company',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color: Color(0xFF1C1C1C),
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 36.0, 0.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: SvgPicture.asset(
                                                'assets/images/Group_637_(1).svg',
                                                width: 172.0,
                                                height: 26.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Navigation',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color: Color(0xFFE93740),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 21.0, 0.0, 0.0),
                                              child: Text(
                                                'About Us',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: Color(0xFF1C1C1C),
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 21.0, 0.0, 0.0),
                                              child: Text(
                                                'Blog',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: Color(0xFF1C1C1C),
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 21.0, 0.0, 0.0),
                                              child: Text(
                                                'Terms of Use',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: Color(0xFF1C1C1C),
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 21.0, 0.0, 0.0),
                                              child: Text(
                                                'Privacy Policy',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: Color(0xFF1C1C1C),
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Help',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color: Color(0xFFE93740),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 21.0, 0.0, 0.0),
                                              child: Text(
                                                'FAQ',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: Color(0xFF1C1C1C),
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                            Builder(
                                              builder: (context) => Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 21.0, 0.0, 0.0),
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
                                                    await showDialog(
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
                                                                  1.0, 1.0)
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
                                                                    .requestFocus(
                                                                        _model
                                                                            .unfocusNode)
                                                                : FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child:
                                                                NewContactUsWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));
                                                  },
                                                  child: Text(
                                                    'Contact Us',
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                      color: Color(0xFF1C1C1C),
                                                      fontSize: 14.0,
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
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 24.0),
                              child: Text(
                                '© Copyright 2023. SIDGS All Rights Reserved',
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color: Color(0xFF696888),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
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
      ),
    );
  }
}
