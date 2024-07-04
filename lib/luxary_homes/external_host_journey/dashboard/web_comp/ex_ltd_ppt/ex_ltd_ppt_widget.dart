import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/external_host_journey/dashboard/web_comp/ad_lse_er_msg/ad_lse_er_msg_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ex_ltd_ppt_model.dart';
export 'ex_ltd_ppt_model.dart';

class ExLtdPptWidget extends StatefulWidget {
  const ExLtdPptWidget({
    super.key,
    required this.propertyStatus,
    required this.pageNo,
    required this.pageSize,
    required this.userId,
    required this.totalCount,
  });

  final int? propertyStatus;
  final int? pageNo;
  final int? pageSize;
  final int? userId;
  final int? totalCount;

  @override
  State<ExLtdPptWidget> createState() => _ExLtdPptWidgetState();
}

class _ExLtdPptWidgetState extends State<ExLtdPptWidget> {
  late ExLtdPptModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExLtdPptModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (widget.totalCount != 0)
          Flexible(
            child: FutureBuilder<ApiCallResponse>(
              future: (_model
                      .apiRequestCompleter ??= Completer<ApiCallResponse>()
                    ..complete(
                        MicroserviceExternalHostGroup.exHostDashboardCall.call(
                      status: widget.propertyStatus,
                      userId: widget.userId,
                      pageNo: widget.pageNo,
                      pageSize: widget.pageSize,
                    )))
                  .future,
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
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
                  );
                }
                final staggeredViewExHostDashboardResponse = snapshot.data!;
                return Builder(
                  builder: (context) {
                    final listedPropertiesData = getJsonField(
                      staggeredViewExHostDashboardResponse.jsonBody,
                      r'''$.simplePropertyDetails''',
                    ).toList();
                    return RefreshIndicator(
                      onRefresh: () async {
                        setState(() => _model.apiRequestCompleter = null);
                        await _model.waitForApiRequestCompleted();
                      },
                      child: MasonryGridView.builder(
                        gridDelegate:
                            SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        itemCount: listedPropertiesData.length,
                        shrinkWrap: true,
                        itemBuilder: (context, listedPropertiesDataIndex) {
                          final listedPropertiesDataItem =
                              listedPropertiesData[listedPropertiesDataIndex];
                          return InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              setState(() {
                                FFAppState().ExHostDetailView =
                                    ExHostDetailViewStruct(
                                  status: widget.propertyStatus,
                                  articleId: int.parse(getJsonField(
                                    listedPropertiesDataItem,
                                    r'''$.articleId''',
                                  ).toString()),
                                );
                              });

                              context.pushNamed(
                                'Exhost_detail_View',
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
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.network(
                                            functions
                                                .initImg(
                                                    functions
                                                        .listDataConversion(
                                                            getJsonField(
                                                          listedPropertiesDataItem,
                                                          r'''$.imageURLs''',
                                                        ).toString())
                                                        ?.toList(),
                                                    FFAppState().BaseUrl)!
                                                .last,
                                            width: 138.0,
                                            height: 125.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  getJsonField(
                                                    listedPropertiesDataItem,
                                                    r'''$.title''',
                                                  ).toString(),
                                                  maxLines: 2,
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 10.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
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
                                                          child:
                                                              SvgPicture.asset(
                                                            'assets/images/location-pin.svg',
                                                            width: 15.0,
                                                            height: 15.0,
                                                            fit: BoxFit.contain,
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
                                                              listedPropertiesDataItem,
                                                              r'''$.locality''',
                                                            ).toString()} - ${getJsonField(
                                                              listedPropertiesDataItem,
                                                              r'''$.city''',
                                                            ).toString()}',
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
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
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
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          getJsonField(
                                                            listedPropertiesDataItem,
                                                            r'''$.postedOn''',
                                                          ).toString(),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: Color(
                                                                0xFF878787),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 12.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 18.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        'View details',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 12.0,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                        ),
                                                      ),
                                                    ],
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
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
          ),
        if (widget.totalCount == 0)
          Flexible(
            child: wrapWithModel(
              model: _model.adLseErMsgModel,
              updateCallback: () => setState(() {}),
              child: AdLseErMsgWidget(
                propertyStatus: widget.propertyStatus!,
              ),
            ),
          ),
      ],
    );
  }
}
