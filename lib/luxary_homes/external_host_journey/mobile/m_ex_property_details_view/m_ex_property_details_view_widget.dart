import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'm_ex_property_details_view_model.dart';
export 'm_ex_property_details_view_model.dart';

class MExPropertyDetailsViewWidget extends StatefulWidget {
  const MExPropertyDetailsViewWidget({
    super.key,
    required this.propertyStatus,
    required this.articleId,
  });

  final int? propertyStatus;
  final String? articleId;

  @override
  State<MExPropertyDetailsViewWidget> createState() =>
      _MExPropertyDetailsViewWidgetState();
}

class _MExPropertyDetailsViewWidgetState
    extends State<MExPropertyDetailsViewWidget> {
  late MExPropertyDetailsViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MExPropertyDetailsViewModel());

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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 15.0, 12.0, 0.0),
      child: FutureBuilder<ApiCallResponse>(
        future: MicroserviceExternalHostGroup.exHostPropertyFullViewCall.call(
          articleId: widget.articleId,
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
          final columnExHostPropertyFullViewResponse = snapshot.data!;
          return SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Property details',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        color: Color(0xFF101010),
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Hide property details',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                    decoration: TextDecoration.underline,
                                  ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_up_sharp,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 20.0,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Text(
                    getJsonField(
                      columnExHostPropertyFullViewResponse.jsonBody,
                      r'''$.title''',
                    ).toString(),
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Text(
                    'Property type',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Text(
                    getJsonField(
                      columnExHostPropertyFullViewResponse.jsonBody,
                      r'''$.propertyType''',
                    ).toString(),
                    style: TextStyle(
                      color: Color(0xFF101010),
                      fontSize: 16.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Text(
                    'Property address',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.asset(
                          'assets/images/map_location_dot.svg',
                          width: 20.0,
                          height: 20.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            '${getJsonField(
                              columnExHostPropertyFullViewResponse.jsonBody,
                              r'''$.plotNo''',
                            ).toString()},${getJsonField(
                              columnExHostPropertyFullViewResponse.jsonBody,
                              r'''$.street''',
                            ).toString()},${getJsonField(
                              columnExHostPropertyFullViewResponse.jsonBody,
                              r'''$.locality''',
                            ).toString()}, ${getJsonField(
                              columnExHostPropertyFullViewResponse.jsonBody,
                              r'''$.city''',
                            ).toString()}, ${getJsonField(
                              columnExHostPropertyFullViewResponse.jsonBody,
                              r'''$.state''',
                            ).toString()}, ${getJsonField(
                              columnExHostPropertyFullViewResponse.jsonBody,
                              r'''$.zipcode''',
                            ).toString()}, ${getJsonField(
                              columnExHostPropertyFullViewResponse.jsonBody,
                              r'''$.country''',
                            ).toString()}.',
                            style: TextStyle(
                              color: Color(0xFF101010),
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.asset(
                          'assets/images/house_chimney_blank.svg',
                          width: 20.0,
                          height: 20.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 0.0, 0.0, 0.0),
                          child: Text(
                            getJsonField(
                              columnExHostPropertyFullViewResponse.jsonBody,
                              r'''$.propertySubType''',
                            ).toString(),
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Text(
                    'Property Availability',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: dateTimeFormat(
                              'dd-MM-yyyy',
                              functions.strToDateTimeConversion(getJsonField(
                                columnExHostPropertyFullViewResponse.jsonBody,
                                r'''$.availableFrom''',
                              ).toString())),
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: Color(0xFF000D3E),
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ),
                        TextSpan(
                          text: '  to  ',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        ),
                        TextSpan(
                          text: dateTimeFormat(
                              'dd-MM-yyyy',
                              functions.strToDateTimeConversion(getJsonField(
                                columnExHostPropertyFullViewResponse.jsonBody,
                                r'''$.availableTo''',
                              ).toString())),
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.0,
                          ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            fontSize: 14.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Price per month:  ',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        TextSpan(
                          text: '₹${getJsonField(
                            columnExHostPropertyFullViewResponse.jsonBody,
                            r'''$.expectedPrice''',
                          ).toString()}',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Poppins',
                                fontSize: 18.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Text(
                      'Description',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Text(
                      getJsonField(
                        columnExHostPropertyFullViewResponse.jsonBody,
                        r'''$.description''',
                      ).toString(),
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Text(
                    'What’s included',
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Poppins',
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                  child: Builder(
                    builder: (context) {
                      final amenitiesList = functions
                              .listMapConversion(getJsonField(
                                columnExHostPropertyFullViewResponse.jsonBody,
                                r'''$.amenities''',
                              ).toString())
                              ?.toList() ??
                          [];
                      return GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 4.5,
                        ),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: amenitiesList.length,
                        itemBuilder: (context, amenitiesListIndex) {
                          final amenitiesListItem =
                              amenitiesList[amenitiesListIndex];
                          return Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(0.0),
                                bottomRight: Radius.circular(0.0),
                                topLeft: Radius.circular(0.0),
                                topRight: Radius.circular(0.0),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 6.0,
                                  height: 6.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      7.0, 0.0, 0.0, 0.0),
                                  child: Container(
                                    height: 26.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF5F5F5),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(8.0),
                                        bottomRight: Radius.circular(8.0),
                                        topLeft: Radius.circular(8.0),
                                        topRight: Radius.circular(8.0),
                                      ),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            6.0, 0.0, 6.0, 0.0),
                                        child: Text(
                                          getJsonField(
                                            amenitiesListItem,
                                            r'''$.name''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Text(
                    'safety items',
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                  child: GridView(
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 4.5,
                    ),
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(0.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 6.0,
                                height: 6.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    7.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  height: 26.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFF5F5F5),
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(8.0),
                                      bottomRight: Radius.circular(8.0),
                                      topLeft: Radius.circular(8.0),
                                      topRight: Radius.circular(8.0),
                                    ),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          6.0, 0.0, 6.0, 0.0),
                                      child: Text(
                                        'Smoke alarm',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 12.0,
                                              letterSpacing: 0.0,
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
                    ],
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Text(
                      'Property Images',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 3.0),
                  child: Builder(
                    builder: (context) {
                      final imagesList = functions
                              .initImg(
                                  functions
                                      .listDataConversion(getJsonField(
                                        columnExHostPropertyFullViewResponse
                                            .jsonBody,
                                        r'''$.imageURLs''',
                                      ).toString())
                                      ?.toList(),
                                  FFAppState().BaseUrl)
                              ?.toList() ??
                          [];
                      return Wrap(
                        spacing: 12.0,
                        runSpacing: 12.0,
                        alignment: WrapAlignment.start,
                        crossAxisAlignment: WrapCrossAlignment.start,
                        direction: Axis.horizontal,
                        runAlignment: WrapAlignment.start,
                        verticalDirection: VerticalDirection.down,
                        clipBehavior: Clip.none,
                        children:
                            List.generate(imagesList.length, (imagesListIndex) {
                          final imagesListItem = imagesList[imagesListIndex];
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              imagesListItem,
                              width: 109.0,
                              height: 109.0,
                              fit: BoxFit.cover,
                            ),
                          );
                        }),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
