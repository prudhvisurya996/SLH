import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'm_in_reject_properties_model.dart';
export 'm_in_reject_properties_model.dart';

class MInRejectPropertiesWidget extends StatefulWidget {
  const MInRejectPropertiesWidget({
    super.key,
    required this.propertyStatus,
    required this.articleId,
  });

  final int? propertyStatus;
  final String? articleId;

  @override
  State<MInRejectPropertiesWidget> createState() =>
      _MInRejectPropertiesWidgetState();
}

class _MInRejectPropertiesWidgetState extends State<MInRejectPropertiesWidget> {
  late MInRejectPropertiesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MInRejectPropertiesModel());

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
      child: RefreshIndicator(
        onRefresh: () async {
          setState(() => _model.listViewPagingController?.refresh());
          await _model.waitForOnePageForListView();
        },
        child: PagedListView<ApiPagingParams, dynamic>(
          pagingController: _model.setListViewController(
            (nextPageMarker) =>
                MicroserviceAvailabilityAPIsGroup.hostPropertyListsCall.call(
              pageNo: functions.incrementOne(nextPageMarker.nextPageNumber) >= 0
                  ? (nextPageMarker.nextPageNumber + 1)
                  : -1,
              userId: FFAppState().userData.userId,
              status: widget.propertyStatus,
              pageSize: 4,
            ),
          ),
          padding: EdgeInsets.zero,
          primary: false,
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

            itemBuilder: (context, _, rejectedListMobileIndex) {
              final rejectedListMobileItem = _model
                  .listViewPagingController!.itemList![rejectedListMobileIndex];
              return InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  FFAppState().HostDetailView = HostDetailViewStruct(
                    status: widget.propertyStatus,
                    propertyId: getJsonField(
                      rejectedListMobileItem,
                      r'''$.propertyId''',
                    ),
                  );
                  setState(() {});

                  context.pushNamed(
                    'in_host_db_detail_view',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: CachedNetworkImage(
                                fadeInDuration: Duration(milliseconds: 500),
                                fadeOutDuration: Duration(milliseconds: 500),
                                imageUrl: functions
                                    .initImg(
                                        functions
                                            .listDataConversion(getJsonField(
                                              rejectedListMobileItem,
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
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          child: Text(
                                            getJsonField(
                                              rejectedListMobileItem,
                                              r'''$.title''',
                                            ).toString(),
                                            maxLines: 2,
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                '₹${getJsonField(
                                                  rejectedListMobileItem,
                                                  r'''$.basePrice''',
                                                ).toString()}',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                              Text(
                                                ' /night',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color:
                                                              Color(0xFF878787),
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 10.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(-1.0, 1.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                '${getJsonField(
                                                  rejectedListMobileItem,
                                                  r'''$.locality''',
                                                ).toString()} - ${getJsonField(
                                                  rejectedListMobileItem,
                                                  r'''$.city''',
                                                ).toString()}',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Color(0xFF878787),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 12.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: SvgPicture.asset(
                                            'assets/images/Vector_(1).svg',
                                            width: 15.0,
                                            height: 15.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    8.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              dateTimeFormat(
                                                  'dd MMM yyyy',
                                                  functions
                                                      .convertStringToDatetime(
                                                          getJsonField(
                                                    rejectedListMobileItem,
                                                    r'''$.availableFrom''',
                                                  ).toString())),
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: Color(0xFF878787),
                                                fontWeight: FontWeight.w500,
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
    );
  }
}
