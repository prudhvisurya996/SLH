import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/ad_er_msg/ad_er_msg_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lease_pending_model.dart';
export 'lease_pending_model.dart';

class LeasePendingWidget extends StatefulWidget {
  const LeasePendingWidget({
    super.key,
    required this.propertyStatus,
    required this.pageNo,
    required this.pageSize,
  });

  final int? propertyStatus;
  final int? pageNo;
  final int? pageSize;

  @override
  State<LeasePendingWidget> createState() => _LeasePendingWidgetState();
}

class _LeasePendingWidgetState extends State<LeasePendingWidget> {
  late LeasePendingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeasePendingModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: MicroserviceExternalHostGroup.adminLeaseRequestDashboardCall.call(
        status: widget.propertyStatus,
        pageNo: widget.pageNo,
        pageSize: widget.pageSize,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 40.0,
              height: 40.0,
              child: SpinKitPulse(
                color: FlutterFlowTheme.of(context).primary,
                size: 40.0,
              ),
            ),
          );
        }
        final columnAdminLeaseRequestDashboardResponse = snapshot.data!;
        return Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (MicroserviceExternalHostGroup.adminLeaseRequestDashboardCall
                    .totalCount(
                  columnAdminLeaseRequestDashboardResponse.jsonBody,
                ) !=
                0)
              Flexible(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 12.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFFF9FAFC),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Text(
                                        'Property Title',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Type',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Posted on',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Availability',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'location',
                                        textAlign: TextAlign.start,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Asisgned Phase',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Text(
                                          'Task Status',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Text(
                                        'Action',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Divider(
                            height: 1.0,
                            thickness: 1.0,
                            color: Color(0xFF979797),
                          ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                            tabletLandscape: false,
                          ))
                            Flexible(
                              child: Builder(
                                builder: (context) {
                                  final pendingPropertylisting = getJsonField(
                                    columnAdminLeaseRequestDashboardResponse
                                        .jsonBody,
                                    r'''$.simplePropertyDetails''',
                                  ).toList();
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: pendingPropertylisting.length,
                                    itemBuilder:
                                        (context, pendingPropertylistingIndex) {
                                      final pendingPropertylistingItem =
                                          pendingPropertylisting[
                                              pendingPropertylistingIndex];
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 2.0),
                                            child: Container(
                                              decoration: BoxDecoration(),
                                              child: Padding(
                                                padding: EdgeInsets.all(12.0),
                                                child: Row(
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
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: AutoSizeText(
                                                          getJsonField(
                                                            pendingPropertylistingItem,
                                                            r'''$.title''',
                                                          )
                                                              .toString()
                                                              .maybeHandleOverflow(
                                                                maxChars: 32,
                                                                replacement:
                                                                    '…',
                                                              ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 16.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    5.0,
                                                                    5.0,
                                                                    5.0),
                                                        child: Text(
                                                          getJsonField(
                                                            pendingPropertylistingItem,
                                                            r'''$.propertyType''',
                                                          ).toString(),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          getJsonField(
                                                            pendingPropertylistingItem,
                                                            r'''$.postedOn''',
                                                          ).toString(),
                                                          textAlign:
                                                              TextAlign.start,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0x65000D3E),
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
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
                                                                        5.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  width: 6.0,
                                                                  height: 6.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0xFF80BB01),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      pendingPropertylistingItem,
                                                                      r'''$.availableFrom''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xFF80BB01),
                                                                          letterSpacing:
                                                                              0.0,
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
                                                                        40.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'to',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontSize:
                                                                        12.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  width: 6.0,
                                                                  height: 6.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: Color(
                                                                        0xFF80BB01),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    getJsonField(
                                                                      pendingPropertylistingItem,
                                                                      r'''$.availableTo''',
                                                                    ).toString(),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          color:
                                                                              Color(0xFF80BB01),
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  getJsonField(
                                                                    pendingPropertylistingItem,
                                                                    r'''$.city''',
                                                                  ).toString(),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                Text(
                                                                  getJsonField(
                                                                    pendingPropertylistingItem,
                                                                    r'''$.locality''',
                                                                  ).toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ],
                                                            ),
                                                          ],
                                                        ),
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
                                                                      5.0,
                                                                      5.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                pendingPropertylistingItem,
                                                                r'''$.assignedPhase''',
                                                              )?.toString(),
                                                              '--',
                                                            ),
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 16.0,
                                                            ),
                                                          ),
                                                        ),
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
                                                                      5.0,
                                                                      5.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                pendingPropertylistingItem,
                                                                r'''$.status''',
                                                              )?.toString(),
                                                              '--',
                                                            ),
                                                            textAlign: TextAlign
                                                                .center,
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 16.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    if (functions
                                                            .getPMStatusFromJsonToStr(
                                                                getJsonField(
                                                          pendingPropertylistingItem,
                                                          r'''$.status''',
                                                        ).toString()) !=
                                                        'Completed')
                                                      Expanded(
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
                                                            setState(() {
                                                              FFAppState()
                                                                      .AdminLeasePropertyDetailView =
                                                                  AdminLeasePropertyDetailViewStruct(
                                                                articleId:
                                                                    getJsonField(
                                                                  pendingPropertylistingItem,
                                                                  r'''$.articleId''',
                                                                ).toString(),
                                                                status: widget
                                                                    .propertyStatus,
                                                                city:
                                                                    getJsonField(
                                                                  pendingPropertylistingItem,
                                                                  r'''$.city''',
                                                                ).toString(),
                                                                propertyId:
                                                                    getJsonField(
                                                                  pendingPropertylistingItem,
                                                                  r'''$.propertyId''',
                                                                ),
                                                              );
                                                            });

                                                            context.pushNamed(
                                                              'LeasePptyDtlVw',
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
                                                          child: Icon(
                                                            Icons
                                                                .visibility_outlined,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 32.0,
                                                          ),
                                                        ),
                                                      ),
                                                    if (functions
                                                            .getPMStatusFromJsonToStr(
                                                                getJsonField(
                                                          pendingPropertylistingItem,
                                                          r'''$.status''',
                                                        ).toString()) ==
                                                        'Completed')
                                                      Expanded(
                                                        child: Icon(
                                                          Icons.visibility_off,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 32.0,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          Divider(
                                            height: 1.0,
                                            thickness: 1.0,
                                            color: Color(0xFF979797),
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
              ),
            if (MicroserviceExternalHostGroup.adminLeaseRequestDashboardCall
                    .totalCount(
                  columnAdminLeaseRequestDashboardResponse.jsonBody,
                ) ==
                0)
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
        );
      },
    );
  }
}
