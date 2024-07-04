import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/homepage_new_web_screens/propertydetails/new_property_card/new_property_card_widget.dart';
import '/luxary_homes/users/search_filter_comp/search_filter_comp_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'search_page_model.dart';
export 'search_page_model.dart';

class SearchPageWidget extends StatefulWidget {
  const SearchPageWidget({super.key});

  @override
  State<SearchPageWidget> createState() => _SearchPageWidgetState();
}

class _SearchPageWidgetState extends State<SearchPageWidget> {
  late SearchPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchPageModel());

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
                        if (isAndroid) {
                          return 12.0;
                        } else if (isWeb) {
                          return 58.0;
                        } else {
                          return 12.0;
                        }
                      }(),
                      0.0,
                    ),
                    0.0,
                    12.0,
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
                            shrinkWrap: true,
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
                                          'Key343_${propertyListingDataIndex}_of_${_model.listViewPagingController!.itemList!.length}'),
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          58.0, 0.0, 55.0, 0.0),
                                      child: RefreshIndicator(
                                        onRefresh: () async {
                                          setState(() => _model
                                              .staggeredViewPagingController
                                              ?.refresh());
                                          await _model
                                              .waitForOnePageForStaggeredView(
                                                  minWait: 500, maxWait: 1000);
                                        },
                                        child: PagedMasonryGridView<
                                            ApiPagingParams, dynamic>.count(
                                          pagingController:
                                              _model.setStaggeredViewController(
                                            (nextPageMarker) =>
                                                MicroserviceAvailabilityAPIsGroup
                                                    .searchFilterAPICall
                                                    .call(
                                              locality:
                                                  FFAppState().searchLocality,
                                              city: FFAppState().searchCity,
                                              totalGuests: valueOrDefault<int>(
                                                FFAppState().searchGuests,
                                                1,
                                              ),
                                              priceLowerLimit:
                                                  FFAppState().priceMin,
                                              priceUpperLimit:
                                                  FFAppState().priceMax,
                                              propertyTypeIds:
                                                  functions.listTostrConversion(
                                                      FFAppState()
                                                          .userFilterPropertyType
                                                          .toList()),
                                              loaditemsCount:
                                                  MediaQuery.sizeOf(context)
                                                              .width <=
                                                          500.0
                                                      ? 4
                                                      : 8,
                                              pageNumber: functions.incrementOne(
                                                          nextPageMarker
                                                              .nextPageNumber) >=
                                                      0
                                                  ? (nextPageMarker
                                                          .nextPageNumber +
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
                                          crossAxisCount: 4,
                                          builderDelegate:
                                              PagedChildBuilderDelegate<
                                                  dynamic>(
                                            // Customize what your widget looks like when it's loading the first page.
                                            firstPageProgressIndicatorBuilder:
                                                (_) => Image.asset(
                                              '',
                                            ),
                                            // Customize what your widget looks like when it's loading another page.
                                            newPageProgressIndicatorBuilder:
                                                (_) => Image.asset(
                                              '',
                                            ),

                                            itemBuilder: (context, _,
                                                propertyListingDatawbIndex) {
                                              final propertyListingDatawbItem =
                                                  _model.staggeredViewPagingController!
                                                          .itemList![
                                                      propertyListingDatawbIndex];
                                              return Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 5.0, 15.0, 10.0),
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
                                                            .propertyBookingDetails =
                                                        PropertyBookingDetailsStruct(
                                                      propertyId: getJsonField(
                                                        propertyListingDatawbItem,
                                                        r'''$.propertyId''',
                                                      ),
                                                    );
                                                    setState(() {});

                                                    context.goNamed(
                                                      'property_details',
                                                      queryParameters: {
                                                        'id': serializeParam(
                                                          getJsonField(
                                                            propertyListingDatawbItem,
                                                            r'''$.propertyId''',
                                                          ),
                                                          ParamType.JSON,
                                                        ),
                                                        'index': serializeParam(
                                                          propertyListingDatawbIndex,
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
                                                        'Keypgl_${propertyListingDatawbIndex}_of_${_model.staggeredViewPagingController!.itemList!.length}'),
                                                    propertyType: getJsonField(
                                                      propertyListingDatawbItem,
                                                      r'''$.propertyType''',
                                                    ).toString(),
                                                    locality: getJsonField(
                                                      propertyListingDatawbItem,
                                                      r'''$.locality''',
                                                    ).toString(),
                                                    city: getJsonField(
                                                      propertyListingDatawbItem,
                                                      r'''$.city''',
                                                    ).toString(),
                                                    averageRating: getJsonField(
                                                      propertyListingDatawbItem,
                                                      r'''$.averageRating''',
                                                    ),
                                                    bedRooms: getJsonField(
                                                      propertyListingDatawbItem,
                                                      r'''$.bedRooms''',
                                                    ),
                                                    bathRooms: getJsonField(
                                                      propertyListingDatawbItem,
                                                      r'''$.bathrooms''',
                                                    ),
                                                    totalPropertyPrice:
                                                        getJsonField(
                                                      propertyListingDatawbItem,
                                                      r'''$.totalPrice''',
                                                    ),
                                                    pricePerRoom: getJsonField(
                                                      propertyListingDatawbItem,
                                                      r'''$.pricePerRoom''',
                                                    ),
                                                    index:
                                                        propertyListingDatawbIndex,
                                                    imageList: functions
                                                        .listDataConversion(
                                                            getJsonField(
                                                      propertyListingDatawbItem,
                                                      r'''$.imageURLs''',
                                                    ).toString()),
                                                    propertyId: getJsonField(
                                                      propertyListingDatawbItem,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.webCopyWriteModel,
                    updateCallback: () => setState(() {}),
                    child: WebCopyWriteWidget(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
