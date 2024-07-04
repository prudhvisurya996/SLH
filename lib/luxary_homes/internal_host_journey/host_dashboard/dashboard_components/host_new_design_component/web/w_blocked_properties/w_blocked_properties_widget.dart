import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/ad_er_msg/ad_er_msg_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'w_blocked_properties_model.dart';
export 'w_blocked_properties_model.dart';

class WBlockedPropertiesWidget extends StatefulWidget {
  const WBlockedPropertiesWidget({
    super.key,
    required this.userId,
    required this.pageNo,
    required this.propertyStatus,
    required this.pageSize,
    required this.totalCount,
    required this.lastPage,
    required this.articleId,
  });

  final int? userId;
  final int? pageNo;
  final int? propertyStatus;
  final int? pageSize;
  final int? totalCount;
  final int? lastPage;
  final String? articleId;

  @override
  State<WBlockedPropertiesWidget> createState() =>
      _WBlockedPropertiesWidgetState();
}

class _WBlockedPropertiesWidgetState extends State<WBlockedPropertiesWidget> {
  late WBlockedPropertiesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WBlockedPropertiesModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Visibility(
        visible: responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 145.0, 0.0),
                      child: Container(
                        height: 50.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBgOpacity,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 14.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: SvgPicture.asset(
                                        'assets/images/list_1.svg',
                                        width: 32.0,
                                        height: 32.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    () {
                                      if (widget.propertyStatus == 1) {
                                        return 'Your active properties ';
                                      } else if (widget.propertyStatus == 2) {
                                        return 'Your pending properties ';
                                      } else if (widget.propertyStatus == 0) {
                                        return 'Your rejected properties ';
                                      } else if (widget.propertyStatus == 3) {
                                        return 'Your blocked properties ';
                                      } else {
                                        return 'NA';
                                      }
                                    }(),
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ],
                              ),
                              Align(
                                alignment: AlignmentDirectional(1.0, 0.0),
                                child: Container(
                                  width: 55.0,
                                  height: 50.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0.0),
                                      bottomRight: Radius.circular(12.0),
                                      topLeft: Radius.circular(0.0),
                                      topRight: Radius.circular(12.0),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Text(
                                      widget.totalCount.toString(),
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
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
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Host new property ',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              color: FlutterFlowTheme.of(context).primary,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: '+',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              color: FlutterFlowTheme.of(context).primary,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                ],
              ),
              if (widget.totalCount != 0)
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: RefreshIndicator(
                        onRefresh: () async {
                          setState(() =>
                              _model.staggeredViewPagingController?.refresh());
                          await _model.waitForOnePageForStaggeredView();
                        },
                        child: PagedMasonryGridView<ApiPagingParams,
                            dynamic>.count(
                          pagingController: _model.setStaggeredViewController(
                            (nextPageMarker) =>
                                MicroserviceAvailabilityAPIsGroup
                                    .hostPropertyListsCall
                                    .call(
                              userId: widget.userId,
                              status: widget.propertyStatus,
                              pageNo: functions.incrementOne(
                                          nextPageMarker.nextPageNumber) >=
                                      0
                                  ? (nextPageMarker.nextPageNumber + 1)
                                  : -1,
                              pageSize: 12,
                            ),
                          ),
                          crossAxisCount: 3,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          shrinkWrap: true,
                          builderDelegate: PagedChildBuilderDelegate<dynamic>(
                            // Customize what your widget looks like when it's loading the first page.
                            firstPageProgressIndicatorBuilder: (_) => Center(
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: SizedBox(
                                  width: 40.0,
                                  height: 40.0,
                                  child: SpinKitPulse(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 40.0,
                                  ),
                                ),
                              ),
                            ),
                            // Customize what your widget looks like when it's loading another page.
                            newPageProgressIndicatorBuilder: (_) => Center(
                              child: Padding(
                                padding: EdgeInsets.all(24.0),
                                child: SizedBox(
                                  width: 40.0,
                                  height: 40.0,
                                  child: SpinKitPulse(
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 40.0,
                                  ),
                                ),
                              ),
                            ),

                            itemBuilder: (context, _, blockedListWebIndex) {
                              final blockedListWebItem = _model
                                  .staggeredViewPagingController!
                                  .itemList![blockedListWebIndex];
                              return InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  setState(() {
                                    FFAppState().HostDetailView =
                                        HostDetailViewStruct(
                                      status: widget.propertyStatus,
                                      articleId: getJsonField(
                                        blockedListWebItem,
                                        r'''$.articleId''',
                                      ),
                                    );
                                  });

                                  context.pushNamed(
                                    'inHostDB_property_detail_page',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                },
                                child: Card(
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  color: FlutterFlowTheme.of(context).info,
                                  elevation: 2.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: CachedNetworkImage(
                                                fadeInDuration:
                                                    Duration(milliseconds: 500),
                                                fadeOutDuration:
                                                    Duration(milliseconds: 500),
                                                imageUrl: functions
                                                    .initImg(
                                                        functions
                                                            .listDataConversion(
                                                                getJsonField(
                                                              blockedListWebItem,
                                                              r'''$.imageURLs''',
                                                            ).toString())
                                                            ?.toList(),
                                                        FFAppState().BaseUrl)!
                                                    .last,
                                                width: 110.0,
                                                height: 100.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Flexible(
                                                          child: Text(
                                                            getJsonField(
                                                              blockedListWebItem,
                                                              r'''$.title''',
                                                            ).toString(),
                                                            maxLines: 2,
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 14.0,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Text(
                                                                '₹${getJsonField(
                                                                  blockedListWebItem,
                                                                  r'''$.basePrice''',
                                                                ).toString()}',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                              Text(
                                                                ' /night',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFF878787),
                                                                      letterSpacing:
                                                                          0.0,
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
                                                                  10.0,
                                                                  0.0,
                                                                  10.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 1.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/location-pin.svg',
                                                                width: 15.0,
                                                                height: 15.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                '${getJsonField(
                                                                  blockedListWebItem,
                                                                  r'''$.locality''',
                                                                ).toString()} - ${getJsonField(
                                                                  blockedListWebItem,
                                                                  r'''$.city''',
                                                                ).toString()}',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: Color(
                                                                      0xFF878787),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      12.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/Vector_(1).svg',
                                                            width: 15.0,
                                                            height: 15.0,
                                                            fit: BoxFit.contain,
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        8.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              dateTimeFormat(
                                                                  'dd MMM yyyy',
                                                                  functions
                                                                      .convertStringToDatetime(
                                                                          getJsonField(
                                                                    blockedListWebItem,
                                                                    r'''$.availableFrom''',
                                                                  ).toString())),
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: Color(
                                                                    0xFF878787),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 12.0,
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
              if (widget.totalCount == 0)
                Expanded(
                  child: wrapWithModel(
                    model: _model.adErMsgModel,
                    updateCallback: () => setState(() {}),
                    child: AdErMsgWidget(
                      propertyStatus: widget.propertyStatus!,
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
