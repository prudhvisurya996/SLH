import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/users/property_card/property_card_widget.dart';
import '/luxary_homes/users/search_filter_comp/search_filter_comp_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'explore_page_model.dart';
export 'explore_page_model.dart';

class ExplorePageWidget extends StatefulWidget {
  const ExplorePageWidget({super.key});

  @override
  State<ExplorePageWidget> createState() => _ExplorePageWidgetState();
}

class _ExplorePageWidgetState extends State<ExplorePageWidget> {
  late ExplorePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExplorePageModel());

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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: wrapWithModel(
                      model: _model.searchFilterCompModel,
                      updateCallback: () => setState(() {}),
                      child: SearchFilterCompWidget(),
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
                                setState(() =>
                                    _model.listViewPagingController?.refresh());
                                await _model.waitForOnePageForListView();
                              },
                              child: PagedListView<ApiPagingParams, dynamic>(
                                pagingController: _model.setListViewController(
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
                                shrinkWrap: true,
                                reverse: false,
                                scrollDirection: Axis.vertical,
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
                                        .listViewPagingController!
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

                                          context.pushNamed('property_details');
                                        },
                                        child: wrapWithModel(
                                          model: _model.propertyCardModels1
                                              .getModel(
                                            random_data.randomString(
                                              1,
                                              10,
                                              true,
                                              false,
                                              false,
                                            ),
                                            propertyListingDataIndex,
                                          ),
                                          updateCallback: () => setState(() {}),
                                          child: Hero(
                                            tag: 'propertyDetailsPage',
                                            transitionOnUserGestures: true,
                                            child: Material(
                                              color: Colors.transparent,
                                              child: PropertyCardWidget(
                                                key: Key(
                                                  'Keyawp_${random_data.randomString(
                                                    1,
                                                    10,
                                                    true,
                                                    false,
                                                    false,
                                                  )}',
                                                ),
                                                pageName: 'explore',
                                                title: getJsonField(
                                                  propertyListingDataItem,
                                                  r'''$.title''',
                                                ).toString(),
                                                price: getJsonField(
                                                  propertyListingDataItem,
                                                  r'''$.basePrice''',
                                                ),
                                                propertyType: getJsonField(
                                                  propertyListingDataItem,
                                                  r'''$.propertyType''',
                                                ).toString(),
                                                imageList: functions
                                                    .listDataConversion(
                                                        getJsonField(
                                                  propertyListingDataItem,
                                                  r'''$.imageURLs''',
                                                ).toString()),
                                                propertyArticleid: getJsonField(
                                                  propertyListingDataItem,
                                                  r'''$.articleId''',
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
                            alignment: AlignmentDirectional(0.74, 0.98),
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
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
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
                  Expanded(
                    child: Stack(
                      children: [
                        Column(
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
                                          .waitForOnePageForStaggeredView();
                                    },
                                    child: PagedMasonryGridView<ApiPagingParams,
                                        dynamic>.count(
                                      pagingController:
                                          _model.setStaggeredViewController(
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
                                              ? (nextPageMarker.nextPageNumber +
                                                  1)
                                              : -1,
                                        ),
                                      ),
                                      crossAxisCount: 4,
                                      shrinkWrap: true,
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
                                        newPageProgressIndicatorBuilder: (_) =>
                                            Center(
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
                                            propertyListingDatawbIndex) {
                                          final propertyListingDatawbItem = _model
                                                  .staggeredViewPagingController!
                                                  .itemList![
                                              propertyListingDatawbIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 15.0, 10.0),
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
                                                      propertyListingDatawbItem,
                                                      r'''$.articleId''',
                                                    ).toString(),
                                                  );
                                                });

                                                context.pushNamed(
                                                  'property_details',
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
                                              child: Hero(
                                                tag: 'propertyDetailsPage',
                                                transitionOnUserGestures: true,
                                                child: Material(
                                                  color: Colors.transparent,
                                                  child: PropertyCardWidget(
                                                    key: Key(
                                                        'Key5lk_${propertyListingDatawbIndex}_of_${_model.staggeredViewPagingController!.itemList!.length}'),
                                                    pageName: 'explore',
                                                    title: getJsonField(
                                                      propertyListingDatawbItem,
                                                      r'''$.title''',
                                                    ).toString(),
                                                    price: getJsonField(
                                                      propertyListingDatawbItem,
                                                      r'''$.basePrice''',
                                                    ),
                                                    propertyType: getJsonField(
                                                      propertyListingDatawbItem,
                                                      r'''$.propertyType''',
                                                    ).toString(),
                                                    imageList: functions
                                                        .listDataConversion(
                                                            getJsonField(
                                                      propertyListingDatawbItem,
                                                      r'''$.imageURLs''',
                                                    ).toString()),
                                                    propertyArticleid:
                                                        getJsonField(
                                                      propertyListingDatawbItem,
                                                      r'''$.articleId''',
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
                        if ((FFAppState().accessToken != null &&
                                FFAppState().accessToken != '') &&
                            (!FFAppState().userData.isAdmin &&
                                !FFAppState().userData.isHost &&
                                !FFAppState().userData.isPI &&
                                !FFAppState().userData.isAT))
                          Align(
                            alignment: AlignmentDirectional(0.88, 0.9),
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
                                            color: FlutterFlowTheme.of(context)
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
      ),
    );
  }
}
