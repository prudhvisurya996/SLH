import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/users/user_components/property_components/property_card/property_card_widget.dart';
import '/luxary_homes/users/user_components/search_filter_component/search_filter_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'listings_model.dart';
export 'listings_model.dart';

class ListingsWidget extends StatefulWidget {
  const ListingsWidget({super.key});

  @override
  State<ListingsWidget> createState() => _ListingsWidgetState();
}

class _ListingsWidgetState extends State<ListingsWidget> {
  late ListingsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListingsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                          borderColor: Colors.transparent,
                          borderRadius: 20.0,
                          borderWidth: 1.0,
                          fillColor: Color(0x4DBBD1EA),
                          icon: Icon(
                            Icons.chevron_left,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 30.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('HomePage');
                          },
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: wrapWithModel(
                      model: _model.searchFilterComponentModel,
                      updateCallback: () => setState(() {}),
                      child: SearchFilterComponentWidget(),
                    ),
                  ),
                  Flexible(
                    child: Align(
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
                          child:
                              PagedListView<ApiPagingParams, dynamic>.separated(
                            pagingController: _model.setListViewController(
                              (nextPageMarker) =>
                                  MicroserviceAvailabilityAPIsGroup
                                      .propertyListingsCall
                                      .call(
                                pageLoadItemsCount:
                                    MediaQuery.sizeOf(context).width <= 500.0
                                        ? 4
                                        : 8,
                                pageNoCount: functions.incrementOne(
                                            nextPageMarker.nextPageNumber) >=
                                        0
                                    ? (nextPageMarker.nextPageNumber + 1)
                                    : -1,
                              ),
                            ),
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            reverse: false,
                            scrollDirection: Axis.vertical,
                            separatorBuilder: (_, __) => SizedBox(height: 3.0),
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
                                      0.0, 0.0, 0.0, 10.0),
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
                                      decoration: BoxDecoration(),
                                      child: Hero(
                                        tag: 'propertyDetailsPage',
                                        transitionOnUserGestures: true,
                                        child: Material(
                                          color: Colors.transparent,
                                          child: PropertyCardWidget(
                                            key: Key(
                                                'Keyy85_${propertyListingDataIndex}_of_${_model.listViewPagingController!.itemList!.length}'),
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
                                            imageList:
                                                functions.listDataConversion(
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
