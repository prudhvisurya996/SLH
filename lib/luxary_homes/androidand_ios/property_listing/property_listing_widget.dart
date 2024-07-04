import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/homepage_new_web_screens/propertydetails/new_property_card/new_property_card_widget.dart';
import '/luxary_homes/users/search_filter_comp/search_filter_comp_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'property_listing_model.dart';
export 'property_listing_model.dart';

class PropertyListingWidget extends StatefulWidget {
  const PropertyListingWidget({super.key});

  @override
  State<PropertyListingWidget> createState() => _PropertyListingWidgetState();
}

class _PropertyListingWidgetState extends State<PropertyListingWidget> {
  late PropertyListingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropertyListingModel());

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
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 10.0, 12.0, 16.0),
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
                            context.safePop();
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: wrapWithModel(
                      model: _model.searchFilterCompModel,
                      updateCallback: () => setState(() {}),
                      child: SearchFilterCompWidget(),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width <= 500.0
                            ? 12.0
                            : 80.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                      ),
                      if (FFAppState().searchResultCount > 0)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 12.0, 12.0, 12.0),
                          child: Text(
                            'Discovered ${FFAppState().searchResultCount.toString()} properties.',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Work Sans',
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                    ],
                  ),
                  Flexible(
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 10.0, 12.0, 0.0),
                            child: RefreshIndicator(
                              onRefresh: () async {
                                setState(() =>
                                    _model.listViewPagingController?.refresh());
                                await _model.waitForOnePageForListView();
                              },
                              child: PagedListView<ApiPagingParams,
                                  dynamic>.separated(
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
                                        .listViewPagingController!
                                        .itemList![propertyListingDataIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 10.0),
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
                                              ..partialBookedDates =
                                                  getJsonField(
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
                                          child: NewPropertyCardWidget(
                                            key: Key(
                                                'Keykfb_${propertyListingDataIndex}_of_${_model.listViewPagingController!.itemList!.length}'),
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
                                              r'''$.bathrooms''',
                                            ),
                                            pricePerRoom: getJsonField(
                                              propertyListingDataItem,
                                              r'''$.pricePerRoom''',
                                            ),
                                            index: propertyListingDataIndex,
                                            propertyId: getJsonField(
                                              propertyListingDataItem,
                                              r'''$.propertyId''',
                                            ),
                                            imageList:
                                                functions.listDataConversion(
                                                    getJsonField(
                                              propertyListingDataItem,
                                              r'''$.imageURLs''',
                                            ).toString()),
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
                                    !FFAppState().userData.isHost &&
                                    !FFAppState().userData.isPI &&
                                    !FFAppState().userData.isAT &&
                                    !FFAppState()
                                        .userData
                                        .isPortfolioManager)) &&
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
