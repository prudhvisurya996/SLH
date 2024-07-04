import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/admin/assign_property/assign_property/assign_property_widget.dart';
import '/luxary_homes/admin/lease_property_reject/lease_property_reject_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/host_information/ex_hostdetails/ex_hostdetails_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lease_request_view_model.dart';
export 'lease_request_view_model.dart';

class LeaseRequestViewWidget extends StatefulWidget {
  const LeaseRequestViewWidget({
    super.key,
    required this.articleId,
    required this.propertyStatus,
    required this.propertyId,
    required this.cityPI,
  });

  final String? articleId;
  final int? propertyStatus;
  final int? propertyId;
  final String? cityPI;

  @override
  State<LeaseRequestViewWidget> createState() => _LeaseRequestViewWidgetState();
}

class _LeaseRequestViewWidgetState extends State<LeaseRequestViewWidget> {
  late LeaseRequestViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeaseRequestViewModel());

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
        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: FutureBuilder<ApiCallResponse>(
                  future: MicroserviceExternalHostGroup
                      .adminLeaseRequestPropertyDetailCall
                      .call(
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
                    final columnAdminLeaseRequestPropertyDetailResponse =
                        snapshot.data!;
                    return SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          if (widget.propertyStatus == 3)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 30.0,
                                    height: 30.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFD70000),
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Icon(
                                      Icons.clear_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 16.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        16.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Rejected',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Admin Rejected your Property',
                                          textAlign: TextAlign.start,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0x80000000),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (widget.propertyStatus == 3)
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Reason for rejection:',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: Color(0xFFD70000),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 0.0),
                                    child: Text(
                                      getJsonField(
                                        columnAdminLeaseRequestPropertyDetailResponse
                                            .jsonBody,
                                        r'''$.comments''',
                                      ).toString(),
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 24.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Material(
                                    color: Colors.transparent,
                                    elevation: 0.5,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.3,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.38,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                        child: Image.network(
                                          functions
                                              .initImg(
                                                  functions
                                                      .listDataConversion(
                                                          getJsonField(
                                                        columnAdminLeaseRequestPropertyDetailResponse
                                                            .jsonBody,
                                                        r'''$.imageURLs''',
                                                      ).toString())
                                                      ?.toList(),
                                                  FFAppState().BaseUrl)!
                                              .first,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.3,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.38,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        26.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          getJsonField(
                                            columnAdminLeaseRequestPropertyDetailResponse
                                                .jsonBody,
                                            r'''$.title''',
                                          ).toString(),
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: Color(0xFF000D3E),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 10.0),
                                          child: Text(
                                            'Property type:',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color: Color(0xFF000D3E),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          getJsonField(
                                            columnAdminLeaseRequestPropertyDetailResponse
                                                .jsonBody,
                                            r'''$.propertyType''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 8.0),
                                          child: Text(
                                            'Property address:',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color: Color(0xFF000D3E),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: SvgPicture.asset(
                                                'assets/images/map_location_dot.svg',
                                                width: 18.0,
                                                height: 16.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Flexible(
                                              child: Text(
                                                '${getJsonField(
                                                  columnAdminLeaseRequestPropertyDetailResponse
                                                      .jsonBody,
                                                  r'''$.plotNo''',
                                                ).toString()},${getJsonField(
                                                  columnAdminLeaseRequestPropertyDetailResponse
                                                      .jsonBody,
                                                  r'''$.street''',
                                                ).toString()},${getJsonField(
                                                  columnAdminLeaseRequestPropertyDetailResponse
                                                      .jsonBody,
                                                  r'''$.locality''',
                                                ).toString()}, ${getJsonField(
                                                  columnAdminLeaseRequestPropertyDetailResponse
                                                      .jsonBody,
                                                  r'''$.city''',
                                                ).toString()}, ${getJsonField(
                                                  columnAdminLeaseRequestPropertyDetailResponse
                                                      .jsonBody,
                                                  r'''$.state''',
                                                ).toString()}, ${getJsonField(
                                                  columnAdminLeaseRequestPropertyDetailResponse
                                                      .jsonBody,
                                                  r'''$.zipcode''',
                                                ).toString()}, ${getJsonField(
                                                  columnAdminLeaseRequestPropertyDetailResponse
                                                      .jsonBody,
                                                  r'''$.country''',
                                                ).toString()}.',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ].divide(SizedBox(width: 5.0)),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 14.0, 0.0, 0.0),
                                          child: Wrap(
                                            spacing: 15.0,
                                            runSpacing: 0.0,
                                            alignment: WrapAlignment.start,
                                            crossAxisAlignment:
                                                WrapCrossAlignment.start,
                                            direction: Axis.horizontal,
                                            runAlignment: WrapAlignment.start,
                                            verticalDirection:
                                                VerticalDirection.down,
                                            clipBehavior: Clip.none,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    child: SvgPicture.asset(
                                                      'assets/images/house_chimney_blank.svg',
                                                      width: 18.0,
                                                      height: 16.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Text(
                                                    getJsonField(
                                                      columnAdminLeaseRequestPropertyDetailResponse
                                                          .jsonBody,
                                                      r'''$.propertySubType''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                ].divide(SizedBox(width: 5.0)),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 15.0, 0.0, 10.0),
                                          child: Text(
                                            'Property Availability',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color: Color(0xFF000D3E),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0,
                                            ),
                                          ),
                                        ),
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: dateTimeFormat(
                                                    'dd-MM-yyyy',
                                                    functions
                                                        .strToDateTimeConversion(
                                                            getJsonField(
                                                      columnAdminLeaseRequestPropertyDetailResponse
                                                          .jsonBody,
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: dateTimeFormat(
                                                    'dd-MM-yyyy',
                                                    functions
                                                        .strToDateTimeConversion(
                                                            getJsonField(
                                                      columnAdminLeaseRequestPropertyDetailResponse
                                                          .jsonBody,
                                                      r'''$.availableTo''',
                                                    ).toString())),
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14.0,
                                                ),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 24.0, 0.0, 10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 5.0, 0.0),
                                                child: Text(
                                                  'Price per month:',
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14.0,
                                                  ),
                                                ),
                                              ),
                                              RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '₹',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            Color(0xFFD70000),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: getJsonField(
                                                        columnAdminLeaseRequestPropertyDetailResponse
                                                            .jsonBody,
                                                        r'''$.expectedPrice''',
                                                      ).toString(),
                                                      style: TextStyle(
                                                        color:
                                                            Color(0xFFD70000),
                                                        fontSize: 14.0,
                                                      ),
                                                    )
                                                  ],
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 14.0,
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
                              ],
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              final imagesList = functions
                                      .initImg(
                                          functions
                                              .listDataConversion(getJsonField(
                                                columnAdminLeaseRequestPropertyDetailResponse
                                                    .jsonBody,
                                                r'''$.imageURLs''',
                                              ).toString())
                                              ?.toList(),
                                          FFAppState().BaseUrl)
                                      ?.toList() ??
                                  [];
                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(imagesList.length,
                                      (imagesListIndex) {
                                    final imagesListItem =
                                        imagesList[imagesListIndex];
                                    return Material(
                                      color: Colors.transparent,
                                      elevation: 0.5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          child: Image.network(
                                            imagesListItem,
                                            width: 100.0,
                                            height: 100.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    );
                                  }).divide(SizedBox(width: 15.0)),
                                ),
                              );
                            },
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 24.0, 0.0, 0.0),
                            child: Wrap(
                              spacing: 0.0,
                              runSpacing: 0.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 12.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, -1.0),
                                                            child: Text(
                                                              'Summary',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    fontSize:
                                                                        18.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      15.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            getJsonField(
                                                              columnAdminLeaseRequestPropertyDetailResponse
                                                                  .jsonBody,
                                                              r'''$.description''',
                                                            ).toString(),
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  lineHeight:
                                                                      1.5,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: Container(
                                                  decoration: BoxDecoration(),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, -1.0),
                                                          child: Text(
                                                            'What’s Existed',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      18.0,
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
                                                                      15.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Builder(
                                                            builder: (context) {
                                                              final amenitiesList = functions
                                                                      .listMapConversion(getJsonField(
                                                                        columnAdminLeaseRequestPropertyDetailResponse
                                                                            .jsonBody,
                                                                        r'''$.amenities''',
                                                                      ).toString())
                                                                      ?.toList() ??
                                                                  [];
                                                              return Wrap(
                                                                spacing: 5.0,
                                                                runSpacing: 5.0,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    WrapCrossAlignment
                                                                        .start,
                                                                direction: Axis
                                                                    .horizontal,
                                                                runAlignment:
                                                                    WrapAlignment
                                                                        .start,
                                                                verticalDirection:
                                                                    VerticalDirection
                                                                        .down,
                                                                clipBehavior:
                                                                    Clip.none,
                                                                children: List.generate(
                                                                    amenitiesList
                                                                        .length,
                                                                    (amenitiesListIndex) {
                                                                  final amenitiesListItem =
                                                                      amenitiesList[
                                                                          amenitiesListIndex];
                                                                  return Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            5.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      children:
                                                                          [
                                                                        Container(
                                                                          width:
                                                                              6.0,
                                                                          height:
                                                                              6.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            borderRadius:
                                                                                BorderRadius.circular(6.0),
                                                                          ),
                                                                        ),
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(0.0),
                                                                          child:
                                                                              Image.network(
                                                                            functions.getImage(
                                                                                FFAppState().BaseUrl,
                                                                                getJsonField(
                                                                                  amenitiesListItem,
                                                                                  r'''$.imageIcon''',
                                                                                ).toString())!,
                                                                            width:
                                                                                20.0,
                                                                            height:
                                                                                15.0,
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        ),
                                                                        Text(
                                                                          getJsonField(
                                                                            amenitiesListItem,
                                                                            r'''$.name''',
                                                                          ).toString(),
                                                                          textAlign:
                                                                              TextAlign.center,
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                Color(0xFF000D3E),
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontSize:
                                                                                14.0,
                                                                          ),
                                                                        ),
                                                                      ].divide(SizedBox(
                                                                              width: 15.0)),
                                                                    ),
                                                                  );
                                                                }),
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: Text(
                                                        'User personal document:',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 18.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                            ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '(${getJsonField(
                                                            functions.getDocName(
                                                                functions
                                                                    .listMapConversionEx(getJsonField(
                                                                      columnAdminLeaseRequestPropertyDetailResponse
                                                                          .jsonBody,
                                                                      r'''$.fileURLs''',
                                                                    ))
                                                                    ?.toList(),
                                                                'govId'),
                                                            r'''$.DocName''',
                                                          ).toString()})',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontSize: 12.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    setState(() {
                                                      _model.fileURL =
                                                          getJsonField(
                                                        functions.getDocName(
                                                            functions
                                                                .listMapConversionEx(
                                                                    getJsonField(
                                                                  columnAdminLeaseRequestPropertyDetailResponse
                                                                      .jsonBody,
                                                                  r'''$.fileURLs''',
                                                                ))
                                                                ?.toList(),
                                                            'govId'),
                                                        r'''$.fileURL''',
                                                      ).toString();
                                                    });
                                                    await launchURL(
                                                        '${FFAppState().BaseUrl}${_model.fileURL}');
                                                  },
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.6,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xFFA51FF6),
                                                          Color(0xFFA51FF6),
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                        ],
                                                        stops: [
                                                          0.0,
                                                          0.0,
                                                          0.6,
                                                          0.6
                                                        ],
                                                        begin:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        end:
                                                            AlignmentDirectional(
                                                                -1.0, 0),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFF60A5FA),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Icon(
                                                            Icons.attach_file,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            size: 20.0,
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  functions.getDocName(
                                                                      functions
                                                                          .listMapConversionEx(getJsonField(
                                                                            columnAdminLeaseRequestPropertyDetailResponse.jsonBody,
                                                                            r'''$.fileURLs''',
                                                                          ))
                                                                          ?.toList(),
                                                                      'govId'),
                                                                  r'''$.fileName''',
                                                                ).toString(),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Noto Serif',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'View & Download',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: Text(
                                                        'Property document:',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, -1.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          '(${getJsonField(
                                                            functions.getDocName(
                                                                functions
                                                                    .listMapConversionEx(getJsonField(
                                                                      columnAdminLeaseRequestPropertyDetailResponse
                                                                          .jsonBody,
                                                                      r'''$.fileURLs''',
                                                                    ))
                                                                    ?.toList(),
                                                                'propDoc'),
                                                            r'''$.DocName''',
                                                          ).toString()})',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                            fontSize: 14.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    setState(() {
                                                      _model.fileURL =
                                                          getJsonField(
                                                        functions.getDocName(
                                                            functions
                                                                .listMapConversionEx(
                                                                    getJsonField(
                                                                  columnAdminLeaseRequestPropertyDetailResponse
                                                                      .jsonBody,
                                                                  r'''$.fileURLs''',
                                                                ))
                                                                ?.toList(),
                                                            'propDoc'),
                                                        r'''$.fileURL''',
                                                      ).toString();
                                                    });
                                                    await launchURL(
                                                        '${FFAppState().BaseUrl}${_model.fileURL}');
                                                  },
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.6,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xFFA51FF6),
                                                          Color(0xFFA51FF6),
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary
                                                        ],
                                                        stops: [
                                                          0.0,
                                                          0.0,
                                                          0.6,
                                                          0.6
                                                        ],
                                                        begin:
                                                            AlignmentDirectional(
                                                                1.0, 0.0),
                                                        end:
                                                            AlignmentDirectional(
                                                                -1.0, 0),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFF60A5FA),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Icon(
                                                            Icons.attach_file,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            size: 20.0,
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                getJsonField(
                                                                  functions.getDocName(
                                                                      functions
                                                                          .listMapConversionEx(getJsonField(
                                                                            columnAdminLeaseRequestPropertyDetailResponse.jsonBody,
                                                                            r'''$.fileURLs''',
                                                                          ))
                                                                          ?.toList(),
                                                                      'propDoc'),
                                                                  r'''$.fileName''',
                                                                ).toString(),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Noto Serif',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'View & Download',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 14.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
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
                                    wrapWithModel(
                                      model: _model.exHostdetailsModel,
                                      updateCallback: () => setState(() {}),
                                      child: ExHostdetailsWidget(
                                        userName: getJsonField(
                                          columnAdminLeaseRequestPropertyDetailResponse
                                              .jsonBody,
                                          r'''$.createdByUserName''',
                                        ).toString(),
                                        phoneNumber: getJsonField(
                                          columnAdminLeaseRequestPropertyDetailResponse
                                              .jsonBody,
                                          r'''$.ownerPhoneNumber''',
                                        ).toString(),
                                        emailAddress: getJsonField(
                                          columnAdminLeaseRequestPropertyDetailResponse
                                              .jsonBody,
                                          r'''$.ownerEmailAddress''',
                                        ).toString(),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.0, 1.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              if (widget.propertyStatus == 0)
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(30.0, 16.0, 30.0, 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(0.0, -1.0)
                                        .resolve(Directionality.of(context)),
                                    child: Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.9,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.8,
                                      child: AssignPropertyWidget(
                                        piLocation: widget.cityPI!,
                                        propertyId: widget.propertyId!,
                                        articleId: widget.articleId!,
                                      ),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            },
                            text: 'Assign',
                            options: FFButtonOptions(
                              width: 320.0,
                              height: 36.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: GoogleFonts.getFont(
                                'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                        ),
                      ),
                      Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              await showDialog(
                                barrierDismissible: false,
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(0.0, -1.0)
                                        .resolve(Directionality.of(context)),
                                    child: LeasePropertyRejectWidget(
                                      propertyId: widget.propertyId!,
                                      articleId: widget.articleId!,
                                      propertyStatus: widget.propertyStatus!,
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            },
                            text: 'Reject',
                            options: FFButtonOptions(
                              width: 320.0,
                              height: 36.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFD70000),
                              textStyle: GoogleFonts.getFont(
                                'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                              elevation: 4.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
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
      ],
    );
  }
}
