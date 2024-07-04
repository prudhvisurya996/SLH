import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_login_component/phone_login_component_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import '/luxary_homes/users/user_components/property_components/property_card/property_card_widget.dart';
import '/luxary_homes/users/user_components/search_filter_component/search_filter_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
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
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng? currentUserLocationValue;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

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
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: Stack(
            children: [
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
                    desktop: false,
                  ))
                    Flexible(
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 0.0),
                              child: RefreshIndicator(
                                onRefresh: () async {
                                  setState(() => _model
                                      .listViewPagingController1
                                      ?.refresh());
                                  await _model.waitForOnePageForListView1();
                                },
                                child: PagedListView<ApiPagingParams,
                                    dynamic>.separated(
                                  pagingController:
                                      _model.setListViewController1(
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
                                          ? (nextPageMarker.nextPageNumber + 1)
                                          : -1,
                                    ),
                                  ),
                                  padding: EdgeInsets.zero,
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

                                    itemBuilder:
                                        (context, _, propertyListingDataIndex) {
                                      final propertyListingDataItem = _model
                                          .listViewPagingController1!
                                          .itemList![propertyListingDataIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 5.0, 10.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setState(() {
                                              FFAppState().PropertyDetailsPage =
                                                  PropertyDetailsPageStruct(
                                                articleId: getJsonField(
                                                  propertyListingDataItem,
                                                  r'''$.articleId''',
                                                ).toString(),
                                              );
                                            });

                                            context.pushNamed(
                                              'PropertyDetailsPage',
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
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            child: Hero(
                                              tag: 'propertyDetailsPage',
                                              transitionOnUserGestures: true,
                                              child: Material(
                                                color: Colors.transparent,
                                                child: PropertyCardWidget(
                                                  key: Key(
                                                      'Keycfm_${propertyListingDataIndex}_of_${_model.listViewPagingController1!.itemList!.length}'),
                                                  pageName: 'home',
                                                  title: valueOrDefault<String>(
                                                    getJsonField(
                                                      propertyListingDataItem,
                                                      r'''$.title''',
                                                    )?.toString(),
                                                    'NA',
                                                  ),
                                                  price: valueOrDefault<double>(
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
                          if (((FFAppState().accessToken != null &&
                                      FFAppState().accessToken != '') &&
                                  (!FFAppState().userData.isAdmin &&
                                      !FFAppState().userData.isHost)) &&
                              responsiveVisibility(
                                context: context,
                                desktop: false,
                              ))
                            Align(
                              alignment: AlignmentDirectional(0.96, 0.69),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'm_welcomepage',
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
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width: 40.0,
                                        height: 40.0,
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
                                            FontAwesomeIcons.solidHandPointLeft,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            size: 22.0,
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
                                                  75.0, 0.0, 55.0, 0.0),
                                          child: RefreshIndicator(
                                            onRefresh: () async {
                                              setState(() => _model
                                                  .staggeredViewPagingController
                                                  ?.refresh());
                                              await _model
                                                  .waitForOnePageForStaggeredView();
                                            },
                                            child: PagedMasonryGridView<
                                                ApiPagingParams, dynamic>.count(
                                              pagingController: _model
                                                  .setStaggeredViewController(
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
                                                      _model.staggeredViewPagingController!
                                                              .itemList![
                                                          propertyListingWebDataIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                15.0, 10.0),
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
                                                        setState(() {
                                                          FFAppState()
                                                                  .PropertyDetailsPage =
                                                              PropertyDetailsPageStruct(
                                                            articleId:
                                                                getJsonField(
                                                              propertyListingWebDataItem,
                                                              r'''$.articleId''',
                                                            ).toString(),
                                                          );
                                                        });

                                                        context.pushNamed(
                                                          'PropertyDetailsPage',
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
                                                                'Keyc68_${propertyListingWebDataIndex}_of_${_model.staggeredViewPagingController!.itemList!.length}'),
                                                            pageName: 'home',
                                                            title: getJsonField(
                                                              propertyListingWebDataItem,
                                                              r'''$.title''',
                                                            ).toString(),
                                                            price: getJsonField(
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
                                                            propertyArticleid:
                                                                getJsonField(
                                                              propertyListingWebDataItem,
                                                              r'''$.articleId''',
                                                            ).toString(),
                                                            locality:
                                                                getJsonField(
                                                              propertyListingWebDataItem,
                                                              r'''$.locality''',
                                                            ).toString(),
                                                            city: getJsonField(
                                                              propertyListingWebDataItem,
                                                              r'''$.city''',
                                                            ).toString(),
                                                            averageRating:
                                                                getJsonField(
                                                              propertyListingWebDataItem,
                                                              r'''$.averageRating''',
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
                                      !FFAppState().userData.isPI)) &&
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
                                    'w_welcome_page',
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
                        model: _model.webBottomCopyWriteModel,
                        updateCallback: () => setState(() {}),
                        child: WebBottomCopyWriteWidget(),
                      ),
                    ),
                ],
              ),
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
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 40.0),
                                        child: PageView(
                                          controller: _model
                                                  .pageViewController ??=
                                              PageController(initialPage: 0),
                                          onPageChanged: (_) => setState(() {}),
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(40.0,
                                                                50.0, 0.0, 0.0),
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
                                                ),
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Perfect choice',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 43.0,
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
                                                          'for your',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 43.0,
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
                                                          'property',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 43.0,
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
                                                                      50.0),
                                                          child: Text(
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
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 35.0, 0.0, 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: SvgPicture.asset(
                                                      'assets/images/Illustration-1.svg',
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: MediaQuery.sizeOf(
                                                                  context)
                                                              .height *
                                                          0.288,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(20.0, 0.0,
                                                                0.0, 0.0),
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
                                                                fontSize: 43.0,
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
                                                        Flexible(
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
                                              ],
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(10.0, 30.0,
                                                          10.0, 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: SvgPicture.asset(
                                                      'assets/images/12085337_20944166_1.svg',
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: MediaQuery.sizeOf(
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
                                                            .fromSTEB(20.0, 0.0,
                                                                0.0, 0.0),
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
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        40.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Begin your hosting journey with us',
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
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      53.0,
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 30.0, 0.0, 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: SvgPicture.asset(
                                                      'assets/images/5375307_For_sale_1_(2).svg',
                                                      width: double.infinity,
                                                      height: MediaQuery.sizeOf(
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
                                                            .fromSTEB(20.0, 0.0,
                                                                0.0, 0.0),
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
                                                                fontSize: 43.0,
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
                                                                fontSize: 16.0,
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 30.0, 0.0, 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: SvgPicture.asset(
                                                      'assets/images/9147969_4108027_1_(1).svg',
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: MediaQuery.sizeOf(
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
                                                            .fromSTEB(20.0, 0.0,
                                                                0.0, 0.0),
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
                                                                fontSize: 38.0,
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
                                                          'Entrust your property to us, and we\'ll transform it into a brand-new asset. Our expert team specializes in renovating and rebranding properties, turning them into modern, desirable assets.',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 18.0,
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
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 30.0, 0.0, 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: SvgPicture.asset(
                                                      'assets/images/12325319_4952519_1.svg',
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          1.0,
                                                      height: MediaQuery.sizeOf(
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
                                                            .fromSTEB(20.0, 0.0,
                                                                0.0, 0.0),
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
                                                                fontSize: 43.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontStyle:
                                                                    FontStyle
                                                                        .italic,
                                                              ),
                                                        ),
                                                        Text(
                                                          'We prioritize safety, transparency, \nand flexibility in both booking and leasing, ensuring that our platform serves the diverse needs of travelers and property owners alike.',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 18.0,
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
                                            controller: _model
                                                    .pageViewController ??=
                                                PageController(initialPage: 0),
                                            count: 6,
                                            axisDirection: Axis.horizontal,
                                            onDotClicked: (i) async {
                                              await _model.pageViewController!
                                                  .animateToPage(
                                                i,
                                                duration:
                                                    Duration(milliseconds: 500),
                                                curve: Curves.ease,
                                              );
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
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                          setState(() {
                                            FFAppState().skipforHome = true;
                                          });
                                          setState(() {
                                            FFAppState().launchApp =
                                                getCurrentTimestamp;
                                          });
                                        },
                                        child: Text(
                                          'Skip',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                          setState(() {
                                            FFAppState().skipforHome = true;
                                          });
                                          setState(() {
                                            FFAppState().launchApp =
                                                getCurrentTimestamp;
                                          });
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
                                                  child: Container(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.65,
                                                    child:
                                                        PhoneLoginComponentWidget(),
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
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 170.0, 0.0, 50.0),
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                                        fontFamily: 'Work Sans',
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 5.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Home',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          color:
                                                              Color(0xFF5246ED),
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 0.0),
                                                  child: Text(
                                                    '25% Off',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          color:
                                                              Color(0xFFAC341A),
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
                                        begin: AlignmentDirectional(1.0, -0.98),
                                        end: AlignmentDirectional(-1.0, 0.98),
                                      ),
                                      borderRadius: BorderRadius.circular(10.0),
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
                                                        fontFamily: 'Work Sans',
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
                                                        fontFamily: 'Work Sans',
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
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
                                              InkWell(
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
                                                  if ((_model.filterOutputCopy1
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

                                                    _model.filter1Copy1 =
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
                                                    if ((_model.filter1Copy1
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
                                                    if ((_model.filter1
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

                                                    _model.filter2Copy1 =
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
                                                    if ((_model.filter2Copy1
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
                                                    if ((_model.filter2
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
                                          context.pushNamed(
                                            'listings',
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
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        color:
                                                            Color(0xFF375FE3),
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
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
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.61,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 10.0, 12.0, 0.0),
                                    child: RefreshIndicator(
                                      onRefresh: () async {
                                        setState(() => _model
                                            .listViewPagingController2
                                            ?.refresh());
                                        await _model
                                            .waitForOnePageForListView2();
                                      },
                                      child: PagedListView<ApiPagingParams,
                                          dynamic>.separated(
                                        pagingController:
                                            _model.setListViewController2(
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
                                            PagedChildBuilderDelegate<dynamic>(
                                          // Customize what your widget looks like when it's loading the first page.
                                          firstPageProgressIndicatorBuilder:
                                              (_) => Center(
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
                                          ),
                                          // Customize what your widget looks like when it's loading another page.
                                          newPageProgressIndicatorBuilder:
                                              (_) => Center(
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
                                          ),

                                          itemBuilder: (context, _,
                                              propertyListingDataIndex) {
                                            final propertyListingDataItem =
                                                _model.listViewPagingController2!
                                                        .itemList![
                                                    propertyListingDataIndex];
                                            return Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      5.0, 0.0, 5.0, 10.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
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
                                                    transitionOnUserGestures:
                                                        true,
                                                    child: Material(
                                                      color: Colors.transparent,
                                                      child: PropertyCardWidget(
                                                        key: Key(
                                                            'Key3eg_${propertyListingDataIndex}_of_${_model.listViewPagingController2!.itemList!.length}'),
                                                        pageName: 'home',
                                                        title: valueOrDefault<
                                                            String>(
                                                          getJsonField(
                                                            propertyListingDataItem,
                                                            r'''$.title''',
                                                          )?.toString(),
                                                          'NA',
                                                        ),
                                                        price: valueOrDefault<
                                                            double>(
                                                          getJsonField(
                                                            propertyListingDataItem,
                                                            r'''$.basePrice''',
                                                          ),
                                                          0.0,
                                                        ),
                                                        propertyType:
                                                            valueOrDefault<
                                                                String>(
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
                                                            valueOrDefault<
                                                                String>(
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
                                                        averageRating:
                                                            getJsonField(
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
                  if ((FFAppState().skipforHome == true) &&
                      responsiveVisibility(
                        context: context,
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
                        desktop: false,
                      ))
                    Align(
                      alignment: AlignmentDirectional(0.0, -0.76),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: wrapWithModel(
                          model: _model.searchFilterComponentModel,
                          updateCallback: () => setState(() {}),
                          child: SearchFilterComponentWidget(),
                        ),
                      ),
                    ),
                  if (((FFAppState().accessToken != null &&
                              FFAppState().accessToken != '') &&
                          (!FFAppState().userData.isAdmin &&
                              !FFAppState().userData.isHost) &&
                          (FFAppState().skipforHome == true)) &&
                      responsiveVisibility(
                        context: context,
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
                            'm_welcomepage',
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
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
            ],
          ),
        ),
      ),
    );
  }
}
