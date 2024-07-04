import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/homepage_new_web_screens/propertydetails/new_details_card/new_details_card_widget.dart';
import '/luxary_homes/homepage_new_web_screens/propertydetails/new_property_card/new_property_card_widget.dart';
import '/luxary_homes/homepage_new_web_screens/propertydetails/new_user_reviews/new_user_reviews_widget.dart';
import '/luxary_homes/users/filter/filter_widget.dart';
import '/luxary_homes/users/house_rule_card/house_rule_card_widget.dart';
import '/luxary_homes/users/search/search_widget.dart';
import '/luxary_homes/users/search_filter_comp/search_filter_comp_widget.dart';
import 'dart:math';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'new_search_page_model.dart';
export 'new_search_page_model.dart';

class NewSearchPageWidget extends StatefulWidget {
  const NewSearchPageWidget({super.key});

  @override
  State<NewSearchPageWidget> createState() => _NewSearchPageWidgetState();
}

class _NewSearchPageWidgetState extends State<NewSearchPageWidget>
    with TickerProviderStateMixin {
  late NewSearchPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewSearchPageModel());

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.524, 0),
            end: Offset(0, 0),
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 100.0.ms,
            duration: 600.0.ms,
            begin: Offset(0.0, 80.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'buttonOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(1.0, 1.0),
            end: Offset(1.0, 1.0),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (responsiveVisibility(
                context: context,
                desktop: false,
              ))
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 30.0, 12.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FlutterFlowIconButton(
                        borderColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 36.0,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        icon: Icon(
                          Icons.chevron_left,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 20.0,
                        ),
                        onPressed: () async {
                          context.pushNamed(
                            'home_page',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 0),
                              ),
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
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
                        alignment: AlignmentDirectional(0.99, -0.65),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0,
                              25.0,
                              valueOrDefault<double>(
                                () {
                                  if (MediaQuery.sizeOf(context).width <
                                      1536.0) {
                                    return 45.0;
                                  } else if (MediaQuery.sizeOf(context).width <
                                      1750.0) {
                                    return 90.0;
                                  } else if (MediaQuery.sizeOf(context).width >
                                      1536.0) {
                                    return 120.0;
                                  } else {
                                    return 0.0;
                                  }
                                }(),
                                0.0,
                              ),
                              0.0),
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
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '/',
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'SignUp',
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 20.0,
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
                      ),
                  ],
                ),
              if (responsiveVisibility(
                context: context,
                desktop: false,
              ))
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: wrapWithModel(
                    model: _model.searchFilterCompModel,
                    updateCallback: () => setState(() {}),
                    child: SearchFilterCompWidget(),
                  ),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    valueOrDefault<double>(
                      () {
                        if (MediaQuery.sizeOf(context).width < 1536.0) {
                          return 45.0;
                        } else if (MediaQuery.sizeOf(context).width < 1750.0) {
                          return 90.0;
                        } else if (MediaQuery.sizeOf(context).width > 1536.0) {
                          return 120.0;
                        } else {
                          return 0.0;
                        }
                      }(),
                      0.0,
                    ),
                    0.0,
                    valueOrDefault<double>(
                      () {
                        if (MediaQuery.sizeOf(context).width < 1536.0) {
                          return 45.0;
                        } else if (MediaQuery.sizeOf(context).width < 1750.0) {
                          return 90.0;
                        } else if (MediaQuery.sizeOf(context).width > 1536.0) {
                          return 120.0;
                        } else {
                          return 0.0;
                        }
                      }(),
                      0.0,
                    ),
                    0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (FFAppState().searchResultCount > 0)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 12.0, 0.0, 12.0),
                        child: Text(
                          'Discovered ${FFAppState().searchResultCount.toString()} properties.',
                          style: GoogleFonts.getFont(
                            'Work Sans',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
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
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            10.0, 10.0, 10.0, 0.0),
                        child: RefreshIndicator(
                          onRefresh: () async {
                            setState(() =>
                                _model.listViewPagingController?.refresh());
                            await _model.waitForOnePageForListView(
                                minWait: 500, maxWait: 1000);
                          },
                          child: PagedListView<ApiPagingParams, dynamic>(
                            pagingController: _model.setListViewController(
                              (nextPageMarker) =>
                                  MicroserviceAvailabilityAPIsGroup
                                      .searchFilterAPICall
                                      .call(
                                locality: FFAppState().searchLocality,
                                city: FFAppState().searchCity,
                                totalGuests: FFAppState().searchGuests,
                                priceLowerLimit: FFAppState().priceMin,
                                priceUpperLimit: FFAppState().priceMax,
                                propertyTypeIds: functions.listTostrConversion(
                                    FFAppState()
                                        .userFilterPropertyType
                                        .toList()),
                                loaditemsCount:
                                    MediaQuery.sizeOf(context).width <= 500.0
                                        ? 4
                                        : 8,
                                pageNumber: functions.incrementOne(
                                            nextPageMarker.nextPageNumber) >=
                                        0
                                    ? (nextPageMarker.nextPageNumber + 1)
                                    : -1,
                                checkInDate: FFAppState().searchDates.length > 0
                                    ? dateTimeFormat('yyyy-MM-dd',
                                        FFAppState().searchDates.first)
                                    : null,
                                checkOutDate:
                                    FFAppState().searchDates.length > 0
                                        ? dateTimeFormat('yyyy-MM-dd',
                                            FFAppState().searchDates.last)
                                        : null,
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

                              itemBuilder:
                                  (context, _, propertyListingDataIndex) {
                                final propertyListingDataItem = _model
                                    .listViewPagingController!
                                    .itemList![propertyListingDataIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 10.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      FFAppState().PropertyDetailsPage =
                                          PropertyDetailsPageStruct(
                                        propertyId: getJsonField(
                                          propertyListingDataItem,
                                          r'''$.propertyId''',
                                        ),
                                      );
                                      FFAppState()
                                          .updateSyncFisionCalendarDatesStruct(
                                        (e) => e
                                          ..blockedDates = getJsonField(
                                            propertyListingDataItem,
                                            r'''$.bookedDates''',
                                          ).toString()
                                          ..partialBookedDates = getJsonField(
                                            propertyListingDataItem,
                                            r'''$.partialBookedDates''',
                                          ).toString(),
                                      );
                                      setState(() {});

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
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                    child: NewPropertyCardWidget(
                                      key: Key(
                                          'Keynzo_${propertyListingDataIndex}_of_${_model.listViewPagingController!.itemList!.length}'),
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
                                      totalPropertyPrice: getJsonField(
                                        propertyListingDataItem,
                                        r'''$.totalPrice''',
                                      ),
                                      pricePerRoom: getJsonField(
                                        propertyListingDataItem,
                                        r'''$.pricePerRoom''',
                                      ),
                                      index: propertyListingDataIndex,
                                      imageList: functions
                                          .listDataConversion(getJsonField(
                                        propertyListingDataItem,
                                        r'''$.imageURLs''',
                                      ).toString()),
                                      propertyId: getJsonField(
                                        propertyListingDataItem,
                                        r'''$.propertyId''',
                                      ),
                                    ),
                                  ),
                                );
                              },
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
                          alignment: AlignmentDirectional(0.89, 0.98),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      borderRadius: BorderRadius.circular(50.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
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
                Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFFEFEFE), Color(0xFFF5F5F5)],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(0.0, -1.0),
                        end: AlignmentDirectional(0, 1.0),
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Flexible(
                          child: Container(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFFFEFEFE), Color(0xFFF5F5F5)],
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
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.28,
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
                                              buttonSize: 46.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              icon: Icon(
                                                Icons.chevron_left,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 24.0,
                                              ),
                                              onPressed: () async {
                                                context.safePop();
                                                FFAppState().selectedDateRange =
                                                    [];
                                                FFAppState().update(() {});
                                              },
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'SEARCHED PROPERTIES',
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 18.0, 0.0, 0.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      height: 45.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF6F7FA),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                      ),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Flexible(
                                                            child: Container(
                                                              height: 45.0,
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Builder(
                                                                builder:
                                                                    (context) =>
                                                                        InkWell(
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
                                                                    await showDialog(
                                                                      barrierColor:
                                                                          Color(
                                                                              0xCC000D3E),
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
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Container(
                                                                              height: MediaQuery.sizeOf(context).height * 0.75,
                                                                              width: MediaQuery.sizeOf(context).width * 0.5,
                                                                              child: SearchWidget(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        setState(
                                                                            () {}));
                                                                  },
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(0.0),
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          'assets/images/uil_search_(1).svg',
                                                                          width:
                                                                              23.0,
                                                                          height:
                                                                              23.0,
                                                                          fit: BoxFit
                                                                              .contain,
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
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
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
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
                                                                onTap:
                                                                    () async {
                                                                  await showDialog(
                                                                    barrierColor:
                                                                        Color(
                                                                            0xCC000D3E),
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
                                                                          onTap: () => _model.unfocusNode.canRequestFocus
                                                                              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                              : FocusScope.of(context).unfocus(),
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.3,
                                                                            child:
                                                                                FilterWidget(),
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
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/Group_1707478335.png',
                                                                    width: 28.0,
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
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: Color(
                                                                    0xFF475569),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 16.0,
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
                                                                FontWeight.w500,
                                                            fontSize: 14.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Padding(
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
                                                                  .listViewWebResultsPagingController
                                                                  ?.refresh());
                                                              await _model
                                                                  .waitForOnePageForListViewWebResults();
                                                            },
                                                            child: PagedListView<
                                                                ApiPagingParams,
                                                                dynamic>(
                                                              pagingController:
                                                                  _model
                                                                      .setListViewWebResultsController(
                                                                (nextPageMarker) =>
                                                                    MicroserviceAvailabilityAPIsGroup
                                                                        .searchFilterAPICall
                                                                        .call(
                                                                  locality:
                                                                      FFAppState()
                                                                          .searchLocality,
                                                                  city: FFAppState()
                                                                      .searchCity,
                                                                  totalGuests:
                                                                      valueOrDefault<
                                                                          int>(
                                                                    FFAppState()
                                                                        .searchGuests,
                                                                    1,
                                                                  ),
                                                                  priceLowerLimit:
                                                                      FFAppState()
                                                                          .priceMin,
                                                                  priceUpperLimit:
                                                                      FFAppState()
                                                                          .priceMax,
                                                                  propertyTypeIds:
                                                                      functions.listTostrConversion(FFAppState()
                                                                          .userFilterPropertyType
                                                                          .toList()),
                                                                  loaditemsCount:
                                                                      MediaQuery.sizeOf(context).width <=
                                                                              500.0
                                                                          ? 4
                                                                          : 8,
                                                                  pageNumber:
                                                                      functions.incrementOne(nextPageMarker.nextPageNumber) >=
                                                                              0
                                                                          ? (nextPageMarker.nextPageNumber +
                                                                              1)
                                                                          : -1,
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
                                                                ),
                                                              ),
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
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
                                                                          .listViewWebResultsPagingController!
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
                                                                            } else if ((FFAppState().searchPageParameters.index == listingsIndex) && (_model.propertyId == null)) {
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
                                            } else if (FFAppState()
                                                    .searchPageParameters
                                                    .id !=
                                                null) {
                                              return FFAppState()
                                                  .searchPageParameters
                                                  .id;
                                            } else if (FFAppState()
                                                    .searchPageParameters
                                                    .id ==
                                                null) {
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
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                20.0, 24.0),
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
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.3,
                                                              height: MediaQuery
                                                                          .sizeOf(
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
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                                child: Image
                                                                    .network(
                                                                  _model.heroImage !=
                                                                              null &&
                                                                          _model.heroImage !=
                                                                              ''
                                                                      ? _model
                                                                          .heroImage!
                                                                      : functions
                                                                          .initImg(
                                                                              functions
                                                                                  .listDataConversion(getJsonField(
                                                                                    containerPropertyDetailsResponse.jsonBody,
                                                                                    r'''$.imageURLs''',
                                                                                  ).toString())
                                                                                  ?.toList(),
                                                                              FFAppState().BaseUrl)!
                                                                          .first,
                                                                  height: MediaQuery.sizeOf(
                                                                              context)
                                                                          .height *
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
                                                              MainAxisSize.max,
                                                          children: List.generate(
                                                              imagesList.length,
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
                                                              child: Container(
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
                                                                    _model.heroImage =
                                                                        imagesListItem;
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
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          _model.tabs =
                                                              'propertyInfo';
                                                          setState(() {});
                                                        },
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
                                                                          8.0,
                                                                          16.0,
                                                                          8.0,
                                                                          16.0),
                                                              child: Text(
                                                                'Property Information',
                                                                style:
                                                                    GoogleFonts
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
                                                          highlightColor: Colors
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
                                                              if (_model.tabs ==
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
                                                            .fromSTEB(0.0, 16.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      height: MediaQuery.sizeOf(
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
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                    child:
                                                                        Stack(
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.35,
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                30.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
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
                                                                                                        onRatingUpdate: (newValue) => setState(() => _model.ratingBarValue = newValue),
                                                                                                        itemBuilder: (context, index) => Icon(
                                                                                                          Icons.star_rounded,
                                                                                                          color: FlutterFlowTheme.of(context).tertiary,
                                                                                                        ),
                                                                                                        direction: Axis.horizontal,
                                                                                                        initialRating: _model.ratingBarValue ??= getJsonField(
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
                                                                                          if (MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.sharedBookingAllowed(
                                                                                                containerPropertyDetailsResponse.jsonBody,
                                                                                              ) ==
                                                                                              true)
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
                                                                                  desktop: false,
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
                                                                                                'Property Availability Details  ${FFAppState().selectedDateRange.length.toString()}',
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
                                                                                                      propBookedDates: FFAppState().syncFisionCalendarDates.blockedDates,
                                                                                                      isModifyAllowed: false,
                                                                                                      partiallyBookedDates: FFAppState().syncFisionCalendarDates.partialBookedDates,
                                                                                                      availableFromDate: functions.convertStringToDatetime(FFAppState().syncFisionCalendarDates.availableFromDate),
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
                                                                                                      propBookedDates: FFAppState().syncFisionCalendarDates.blockedDates,
                                                                                                      isModifyAllowed: false,
                                                                                                      partiallyBookedDates: FFAppState().syncFisionCalendarDates.partialBookedDates,
                                                                                                      availableFromDate: functions.convertStringToDatetime(FFAppState().syncFisionCalendarDates.availableFromDate),
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
                                                                                                      model: _model.houseRuleCardModel1,
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
                                                                                                      model: _model.houseRuleCardModel2,
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
                                                                                                  model: _model.houseRuleCardModel3,
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
                                                                                                  model: _model.houseRuleCardModel4,
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
                                                                                                    model: _model.houseRuleCardModel5,
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
                                                                    alignment:
                                                                        AlignmentDirectional(
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
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                24.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
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
                                                                                                key: Key('Keyayb_${ratingReviewDataIndex}_of_${_model.gridViewPagingController2!.itemList!.length}'),
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
                                                          if ((_model.tabs ==
                                                                  'propertyInfo') &&
                                                              responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                                tabletLandscape:
                                                                    false,
                                                                desktop: false,
                                                              ))
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
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.25,
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .newDetailsCardModel,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        NewDetailsCardWidget(
                                                                      roomsCount:
                                                                          valueOrDefault<
                                                                              int>(
                                                                        getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.bedrooms''',
                                                                        ),
                                                                        00,
                                                                      ),
                                                                      guestCount:
                                                                          valueOrDefault<
                                                                              int>(
                                                                        getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
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
                                                                          FFAppState()
                                                                              .selectedDateRange,
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
                                                                        40.0,
                                                                        10.0,
                                                                        15.0),
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation:
                                                                      0.1,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.25,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Color(
                                                                          0xFFE8E7FF),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          8.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.center,
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 8.0, 10.0),
                                                                              child: Text(
                                                                                getJsonField(
                                                                                  containerPropertyDetailsResponse.jsonBody,
                                                                                  r'''$.propertyType''',
                                                                                ).toString(),
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontWeight: FontWeight.bold,
                                                                                  fontSize: 22.0,
                                                                                ),
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
                                                                          if (MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.sharedBookingAllowed(
                                                                                containerPropertyDetailsResponse.jsonBody,
                                                                              ) ==
                                                                              true)
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Text(
                                                                                    'Room',
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Work Sans',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontSize: 18.0,
                                                                                    ),
                                                                                  ),
                                                                                  Flexible(
                                                                                    child: RichText(
                                                                                      textScaler: MediaQuery.of(context).textScaler,
                                                                                      text: TextSpan(
                                                                                        children: [
                                                                                          TextSpan(
                                                                                            text: 'INR. ',
                                                                                            style: GoogleFonts.getFont(
                                                                                              'Work Sans',
                                                                                              color: Color(0xFFD70000),
                                                                                              fontWeight: FontWeight.normal,
                                                                                              fontSize: 16.0,
                                                                                            ),
                                                                                          ),
                                                                                          TextSpan(
                                                                                            text: getJsonField(
                                                                                              containerPropertyDetailsResponse.jsonBody,
                                                                                              r'''$.pricePerRoom''',
                                                                                            ).toString(),
                                                                                            style: GoogleFonts.getFont(
                                                                                              'Work Sans',
                                                                                              color: Color(0xFFD70000),
                                                                                              fontWeight: FontWeight.w600,
                                                                                              fontSize: 16.0,
                                                                                            ),
                                                                                          ),
                                                                                          TextSpan(
                                                                                            text: ' / Night',
                                                                                            style: GoogleFonts.getFont(
                                                                                              'Work Sans',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              fontSize: 14.0,
                                                                                            ),
                                                                                          )
                                                                                        ],
                                                                                        style: GoogleFonts.getFont(
                                                                                          'Work Sans',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontWeight: FontWeight.w600,
                                                                                          fontSize: 12.0,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                15.0,
                                                                                5.0,
                                                                                15.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                Text(
                                                                                  'Entire Property',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                                ),
                                                                                Flexible(
                                                                                  child: RichText(
                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'INR. ',
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Work Sans',
                                                                                            color: Color(0xFFD70000),
                                                                                            fontWeight: FontWeight.normal,
                                                                                            fontSize: 16.0,
                                                                                          ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: getJsonField(
                                                                                            containerPropertyDetailsResponse.jsonBody,
                                                                                            r'''$.totalPrice''',
                                                                                          ).toString(),
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Work Sans',
                                                                                            color: Color(0xFFD70000),
                                                                                            fontWeight: FontWeight.w600,
                                                                                            fontSize: 16.0,
                                                                                          ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: ' / Night',
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Work Sans',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontWeight: FontWeight.w600,
                                                                                            fontSize: 14.0,
                                                                                          ),
                                                                                        )
                                                                                      ],
                                                                                      style: GoogleFonts.getFont(
                                                                                        'Work Sans',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        fontSize: 12.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Flexible(
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 14.0),
                                                                              child: FFButtonWidget(
                                                                                onPressed: () async {
                                                                                  if (FFAppState().accessToken != null && FFAppState().accessToken != '') {
                                                                                    FFAppState().BookingDetailsPage = BookingDetailsPageStruct(
                                                                                      taxPercent: getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.taxPercent''',
                                                                                      ),
                                                                                      title: getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.title''',
                                                                                      ).toString(),
                                                                                      locality: getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.locality''',
                                                                                      ).toString(),
                                                                                      city: getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.city''',
                                                                                      ).toString(),
                                                                                      guestCount: getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.totalGuests''',
                                                                                      ),
                                                                                      availableFromDate: getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.availableFrom''',
                                                                                      ).toString(),
                                                                                      bookedDates: getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.bookedDates''',
                                                                                      ).toString(),
                                                                                      bedRoomCount: getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.bedrooms''',
                                                                                      ),
                                                                                      propId: getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.propertyId''',
                                                                                      ),
                                                                                      pricePerRoom: getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.pricePerRoom''',
                                                                                      ),
                                                                                      guestsPerRoom: getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.guestsPerRoom''',
                                                                                      ),
                                                                                      partialBookedDates: getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.partiallyBookedDates''',
                                                                                      ).toString(),
                                                                                      sharedBookingAllowed: getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.sharedBookingsAllowed''',
                                                                                      ),
                                                                                      image: functions
                                                                                          .initImg(
                                                                                              functions
                                                                                                  .listDataConversion(getJsonField(
                                                                                                    containerPropertyDetailsResponse.jsonBody,
                                                                                                    r'''$.imageURLs''',
                                                                                                  ).toString())
                                                                                                  ?.toList(),
                                                                                              FFAppState().BaseUrl)
                                                                                          ?.first,
                                                                                      addressDetails: '${getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.plotNo''',
                                                                                      ).toString()}, ${getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.street''',
                                                                                      ).toString()}, ${getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.locality''',
                                                                                      ).toString()}, ${getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.city''',
                                                                                      ).toString()}, ${getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.state''',
                                                                                      ).toString()} - ${getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.zipcode''',
                                                                                      ).toString()}, ${getJsonField(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                        r'''$.country''',
                                                                                      ).toString()}.',
                                                                                    );
                                                                                    setState(() {});

                                                                                    context.goNamed(
                                                                                      'booking_details',
                                                                                      extra: <String, dynamic>{
                                                                                        kTransitionInfoKey: TransitionInfo(
                                                                                          hasTransition: true,
                                                                                          transitionType: PageTransitionType.fade,
                                                                                          duration: Duration(milliseconds: 0),
                                                                                        ),
                                                                                      },
                                                                                    );

                                                                                    return;
                                                                                  } else {
                                                                                    await showDialog(
                                                                                      context: context,
                                                                                      builder: (alertDialogContext) {
                                                                                        return AlertDialog(
                                                                                          title: Text('Info'),
                                                                                          content: Text('Please Login to book your property.'),
                                                                                          actions: [
                                                                                            TextButton(
                                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                                              child: Text('Ok'),
                                                                                            ),
                                                                                          ],
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                    return;
                                                                                  }
                                                                                },
                                                                                text: 'Request to book',
                                                                                options: FFButtonOptions(
                                                                                  width: 250.0,
                                                                                  height: 36.0,
                                                                                  padding: EdgeInsets.all(0.0),
                                                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  textStyle: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontSize: 14.0,
                                                                                  ),
                                                                                  borderRadius: BorderRadius.circular(12.0),
                                                                                ),
                                                                              ).animateOnPageLoad(animationsMap['buttonOnPageLoadAnimation']!),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ).animateOnPageLoad(
                                                                    animationsMap[
                                                                        'containerOnPageLoadAnimation']!),
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
                ),
            ],
          ),
        ),
      ),
    );
  }
}
