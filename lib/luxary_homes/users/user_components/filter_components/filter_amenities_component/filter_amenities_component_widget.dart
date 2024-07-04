import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'filter_amenities_component_model.dart';
export 'filter_amenities_component_model.dart';

class FilterAmenitiesComponentWidget extends StatefulWidget {
  const FilterAmenitiesComponentWidget({super.key});

  @override
  State<FilterAmenitiesComponentWidget> createState() =>
      _FilterAmenitiesComponentWidgetState();
}

class _FilterAmenitiesComponentWidgetState
    extends State<FilterAmenitiesComponentWidget> {
  late FilterAmenitiesComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterAmenitiesComponentModel());

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
      future: LiferayBaseUrlGroup.getAmenitiesCall.call(),
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
        final columnGetAmenitiesResponse = snapshot.data!;
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Amenities',
              style: GoogleFonts.getFont(
                'Poppins',
                color: Color(0xFF000D3E),
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
              child: Text(
                'Basic Amenities',
                style: GoogleFonts.getFont(
                  'Poppins',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 16.0,
                ),
              ),
            ),
            Builder(
              builder: (context) {
                final basicAmenities = LiferayBaseUrlGroup.getAmenitiesCall
                        .basicAmenities(
                          columnGetAmenitiesResponse.jsonBody,
                        )
                        ?.toList() ??
                    [];
                return Wrap(
                  spacing: 15.0,
                  runSpacing: 15.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: List.generate(basicAmenities.length,
                      (basicAmenitiesIndex) {
                    final basicAmenitiesItem =
                        basicAmenities[basicAmenitiesIndex];
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState()
                            .userFilterBasicAmenities
                            .contains(getJsonField(
                              basicAmenitiesItem,
                              r'''$.categoryId''',
                            ))) {
                          setState(() {
                            FFAppState().removeFromUserFilterBasicAmenities(
                                getJsonField(
                              basicAmenitiesItem,
                              r'''$.categoryId''',
                            ));
                          });
                        } else {
                          setState(() {
                            FFAppState()
                                .addToUserFilterBasicAmenities(getJsonField(
                              basicAmenitiesItem,
                              r'''$.categoryId''',
                            ));
                          });
                        }
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (!FFAppState()
                              .userFilterBasicAmenities
                              .contains(getJsonField(
                                basicAmenitiesItem,
                                r'''$.categoryId''',
                              )))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 5.0, 0.0),
                              child: Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState()
                              .userFilterBasicAmenities
                              .contains(getJsonField(
                                basicAmenitiesItem,
                                r'''$.categoryId''',
                              )))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 5.0, 0.0),
                              child: Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.check,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 16.0,
                                  ),
                                ),
                              ),
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: Text(
                              getJsonField(
                                basicAmenitiesItem,
                                r'''$.name''',
                              ).toString(),
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: Color(0xFF000D3E),
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                );
              },
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
              child: Text(
                'Security Amenities',
                style: GoogleFonts.getFont(
                  'Poppins',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 16.0,
                ),
              ),
            ),
            Builder(
              builder: (context) {
                final securityAmenities = LiferayBaseUrlGroup.getAmenitiesCall
                        .securityAmenities(
                          columnGetAmenitiesResponse.jsonBody,
                        )
                        ?.toList() ??
                    [];
                return Wrap(
                  spacing: 15.0,
                  runSpacing: 15.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: List.generate(securityAmenities.length,
                      (securityAmenitiesIndex) {
                    final securityAmenitiesItem =
                        securityAmenities[securityAmenitiesIndex];
                    return InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (FFAppState()
                            .userFilterSecurityAmenities
                            .contains(getJsonField(
                              securityAmenitiesItem,
                              r'''$.categoryId''',
                            ))) {
                          setState(() {
                            FFAppState().removeFromUserFilterSecurityAmenities(
                                getJsonField(
                              securityAmenitiesItem,
                              r'''$.categoryId''',
                            ));
                          });
                        } else {
                          setState(() {
                            FFAppState()
                                .addToUserFilterSecurityAmenities(getJsonField(
                              securityAmenitiesItem,
                              r'''$.categoryId''',
                            ));
                          });
                        }
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (!FFAppState()
                              .userFilterSecurityAmenities
                              .contains(getJsonField(
                                securityAmenitiesItem,
                                r'''$.categoryId''',
                              )))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 5.0, 0.0),
                              child: Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                          if (FFAppState()
                              .userFilterSecurityAmenities
                              .contains(getJsonField(
                                securityAmenitiesItem,
                                r'''$.categoryId''',
                              )))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 5.0, 0.0),
                              child: Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                  borderRadius: BorderRadius.circular(6.0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: FaIcon(
                                    FontAwesomeIcons.check,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 16.0,
                                  ),
                                ),
                              ),
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: Text(
                              getJsonField(
                                securityAmenitiesItem,
                                r'''$.name''',
                              ).toString(),
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: Color(0xFF000D3E),
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
