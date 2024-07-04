import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/external_host_journey/ex_error_message/ex_error_message_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'm_ex_rejected_model.dart';
export 'm_ex_rejected_model.dart';

class MExRejectedWidget extends StatefulWidget {
  const MExRejectedWidget({
    super.key,
    required this.propertyStatus,
    required this.articleId,
    required this.pageNo,
    required this.pageSize,
  });

  final int? propertyStatus;
  final String? articleId;
  final int? pageNo;
  final int? pageSize;

  @override
  State<MExRejectedWidget> createState() => _MExRejectedWidgetState();
}

class _MExRejectedWidgetState extends State<MExRejectedWidget> {
  late MExRejectedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MExRejectedModel());

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

    return FutureBuilder<ApiCallResponse>(
      future: MicroserviceExternalHostGroup.exHostDashboardCall.call(
        pageNo: widget.pageNo,
        status: widget.propertyStatus,
        pageSize: widget.pageSize,
        userId: FFAppState().userData.userId,
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
        final listViewExHostDashboardResponse = snapshot.data!;
        return Builder(
          builder: (context) {
            final rejectedPropertyListing = getJsonField(
              listViewExHostDashboardResponse.jsonBody,
              r'''$.simplePropertyDetails''',
            ).toList();
            if (rejectedPropertyListing.isEmpty) {
              return Center(
                child: ExErrorMessageWidget(),
              );
            }
            return ListView.builder(
              padding: EdgeInsets.zero,
              primary: false,
              scrollDirection: Axis.vertical,
              itemCount: rejectedPropertyListing.length,
              itemBuilder: (context, rejectedPropertyListingIndex) {
                final rejectedPropertyListingItem =
                    rejectedPropertyListing[rejectedPropertyListingIndex];
                return InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    FFAppState().ExHostDetailView = ExHostDetailViewStruct(
                      status: widget.propertyStatus,
                      articleId: int.parse(getJsonField(
                        rejectedPropertyListingItem,
                        r'''$.articleId''',
                      ).toString()),
                    );
                    setState(() {});

                    context.pushNamed('ex_host_detail_View');
                  },
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: FlutterFlowTheme.of(context).info,
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.network(
                                  functions
                                      .initImg(
                                          functions
                                              .listDataConversion(getJsonField(
                                                rejectedPropertyListingItem,
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
                                      5.0, 0.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                rejectedPropertyListingItem,
                                                r'''$.title''',
                                              ).toString(),
                                              maxLines: 2,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
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
                                                    rejectedPropertyListingItem,
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
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                                              alignment: AlignmentDirectional(
                                                  -1.0, 1.0),
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
                                                    .fromSTEB(
                                                        8.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  '${getJsonField(
                                                    rejectedPropertyListingItem,
                                                    r'''$.locality''',
                                                  ).toString()} - ${getJsonField(
                                                    rejectedPropertyListingItem,
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
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                dateTimeFormat(
                                                    'dd MMM yyyy',
                                                    functions
                                                        .convertStringToDatetime(
                                                            getJsonField(
                                                      rejectedPropertyListingItem,
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
                                      Align(
                                        alignment:
                                            AlignmentDirectional(1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  8.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'View Details',
                                            style: FlutterFlowTheme.of(context)
                                                .labelMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 12.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  decoration:
                                                      TextDecoration.underline,
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
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
