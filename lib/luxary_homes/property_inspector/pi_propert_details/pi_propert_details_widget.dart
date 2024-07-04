import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_login_component/phone_login_component_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/host_information/ex_hostdetails/ex_hostdetails_widget.dart';
import '/luxary_homes/property_inspector/pi_property_success/pi_property_success_widget.dart';
import '/luxary_homes/property_inspector/review_reject_pi/review_reject_pi_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pi_propert_details_model.dart';
export 'pi_propert_details_model.dart';

class PiPropertDetailsWidget extends StatefulWidget {
  const PiPropertDetailsWidget({super.key});

  @override
  State<PiPropertDetailsWidget> createState() => _PiPropertDetailsWidgetState();
}

class _PiPropertDetailsWidgetState extends State<PiPropertDetailsWidget> {
  late PiPropertDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PiPropertDetailsModel());

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
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                wrapWithModel(
                  model: _model.commonTopBarModel,
                  updateCallback: () => setState(() {}),
                  child: CommonTopBarWidget(
                    showSearchFilter: false,
                  ),
                ),
                Flexible(
                  child: FutureBuilder<ApiCallResponse>(
                    future: MicroserviceExternalHostGroup
                        .pIDashboardPropertyDetailViewCall
                        .call(
                      reviewId: FFAppState().PIdetailView.reviewId,
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
                      final columnPIDashboardPropertyDetailViewResponse =
                          snapshot.data!;
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 12.0, 15.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 0.0, 0.0, 0.0),
                                  child: FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    fillColor: Color(0x4DBBD1EA),
                                    icon: Icon(
                                      Icons.chevron_left,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      context.safePop();
                                    },
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    () {
                                      if ((FFAppState().PIdetailView.propertyStatus == 0) ||
                                          (FFAppState()
                                                  .PIdetailView
                                                  .propertyStatus ==
                                              1) ||
                                          (FFAppState()
                                                  .PIdetailView
                                                  .propertyStatus ==
                                              2)) {
                                        return 'View Property';
                                      } else if (FFAppState()
                                              .PIdetailView
                                              .propertyStatus ==
                                          4) {
                                        return 'Property Rejection';
                                      } else {
                                        return 'NA';
                                      }
                                    }(),
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: Color(0xFF000D3E),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  45.0, 8.0, 45.0, 24.0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (FFAppState()
                                            .PIdetailView
                                            .propertyStatus ==
                                        4)
                                      Text(
                                        'Reason for Rejection',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    if (FFAppState()
                                            .PIdetailView
                                            .propertyStatus ==
                                        4)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 8.0, 0.0, 0.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(12.0),
                                              bottomRight:
                                                  Radius.circular(12.0),
                                              topLeft: Radius.circular(12.0),
                                              topRight: Radius.circular(12.0),
                                            ),
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .errorText,
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 16.0, 24.0, 16.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                getJsonField(
                                                  columnPIDashboardPropertyDetailViewResponse
                                                      .jsonBody,
                                                  r'''$.reviewComments''',
                                                )?.toString(),
                                                '--',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 0.0, 24.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 0.5,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.3,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.38,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                  child: Image.network(
                                                    functions
                                                        .initImg(
                                                            functions
                                                                .listDataConversion(
                                                                    getJsonField(
                                                                  columnPIDashboardPropertyDetailViewResponse
                                                                      .jsonBody,
                                                                  r'''$.imageURLs''',
                                                                ).toString())
                                                                ?.toList(),
                                                            FFAppState()
                                                                .BaseUrl)!
                                                        .first,
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.3,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.48,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      26.0, 0.0, 0.0, 0.0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    getJsonField(
                                                      columnPIDashboardPropertyDetailViewResponse
                                                          .jsonBody,
                                                      r'''$.title''',
                                                    ).toString(),
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: Color(0xFF000D3E),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22.0,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 5.0),
                                                    child: Text(
                                                      'Property type:',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            Color(0xFF000D3E),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Text(
                                                    getJsonField(
                                                      columnPIDashboardPropertyDetailViewResponse
                                                          .jsonBody,
                                                      r'''$.propertyType''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 5.0),
                                                    child: Text(
                                                      'Property address:',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            Color(0xFF000D3E),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
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
                                                            columnPIDashboardPropertyDetailViewResponse
                                                                .jsonBody,
                                                            r'''$.plotNo''',
                                                          ).toString()},${getJsonField(
                                                            columnPIDashboardPropertyDetailViewResponse
                                                                .jsonBody,
                                                            r'''$.street''',
                                                          ).toString()},${getJsonField(
                                                            columnPIDashboardPropertyDetailViewResponse
                                                                .jsonBody,
                                                            r'''$.locality''',
                                                          ).toString()}, ${getJsonField(
                                                            columnPIDashboardPropertyDetailViewResponse
                                                                .jsonBody,
                                                            r'''$.city''',
                                                          ).toString()}, ${getJsonField(
                                                            columnPIDashboardPropertyDetailViewResponse
                                                                .jsonBody,
                                                            r'''$.state''',
                                                          ).toString()}, ${getJsonField(
                                                            columnPIDashboardPropertyDetailViewResponse
                                                                .jsonBody,
                                                            r'''$.zipcode''',
                                                          ).toString()}, ${getJsonField(
                                                            columnPIDashboardPropertyDetailViewResponse
                                                                .jsonBody,
                                                            r'''$.country''',
                                                          ).toString()}.',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ].divide(
                                                        SizedBox(width: 5.0)),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 8.0,
                                                                0.0, 0.0),
                                                    child: Wrap(
                                                      spacing: 15.0,
                                                      runSpacing: 0.0,
                                                      alignment:
                                                          WrapAlignment.start,
                                                      crossAxisAlignment:
                                                          WrapCrossAlignment
                                                              .start,
                                                      direction:
                                                          Axis.horizontal,
                                                      runAlignment:
                                                          WrapAlignment.start,
                                                      verticalDirection:
                                                          VerticalDirection
                                                              .down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/house_chimney_blank.svg',
                                                                width: 18.0,
                                                                height: 16.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                            Text(
                                                              getJsonField(
                                                                columnPIDashboardPropertyDetailViewResponse
                                                                    .jsonBody,
                                                                r'''$.propertySubType''',
                                                              ).toString(),
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
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              width: 5.0)),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 5.0),
                                                    child: Text(
                                                      'Property Availability',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            Color(0xFF000D3E),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18.0,
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
                                                          text: dateTimeFormat(
                                                              'dd-MM-yyyy',
                                                              functions
                                                                  .strToDateTimeConversion(
                                                                      getJsonField(
                                                                columnPIDashboardPropertyDetailViewResponse
                                                                    .jsonBody,
                                                                r'''$.availableFrom''',
                                                              ).toString())),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: Color(
                                                                0xFF000D3E),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 14.0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: '  to  ',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 14.0,
                                                          ),
                                                        ),
                                                        TextSpan(
                                                          text: dateTimeFormat(
                                                              'dd-MM-yyyy',
                                                              functions
                                                                  .strToDateTimeConversion(
                                                                      getJsonField(
                                                                columnPIDashboardPropertyDetailViewResponse
                                                                    .jsonBody,
                                                                r'''$.availableTo''',
                                                              ).toString())),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 14.0,
                                                          ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 12.0,
                                                                0.0, 10.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
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
                                                          child: Text(
                                                            'Price per month:',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 14.0,
                                                            ),
                                                          ),
                                                        ),
                                                        RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: '₹',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: Color(
                                                                      0xFFD70000),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    getJsonField(
                                                                  columnPIDashboardPropertyDetailViewResponse
                                                                      .jsonBody,
                                                                  r'''$.expectedPrice''',
                                                                ).toString(),
                                                                style:
                                                                    TextStyle(
                                                                  color: Color(
                                                                      0xFFD70000),
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              )
                                                            ],
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 14.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 10.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
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
                                                          child: Text(
                                                            'Assigned On:',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18.0,
                                                            ),
                                                          ),
                                                        ),
                                                        RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: dateTimeFormat(
                                                                    'dd-MM-yyyy',
                                                                    functions.strToDateTimeConversion(getJsonField(
                                                                      columnPIDashboardPropertyDetailViewResponse
                                                                          .jsonBody,
                                                                      r'''$.taskAssignedDate''',
                                                                    ).toString())),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              )
                                                            ],
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 16.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
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
                                                          child: Text(
                                                            'Priority:',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 18.0,
                                                            ),
                                                          ),
                                                        ),
                                                        RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text: () {
                                                                  if (MicroserviceExternalHostGroup
                                                                          .pIDashboardPropertyDetailViewCall
                                                                          .priority(
                                                                        columnPIDashboardPropertyDetailViewResponse
                                                                            .jsonBody,
                                                                      ) ==
                                                                      0) {
                                                                    return 'Low';
                                                                  } else if (MicroserviceExternalHostGroup
                                                                          .pIDashboardPropertyDetailViewCall
                                                                          .priority(
                                                                        columnPIDashboardPropertyDetailViewResponse
                                                                            .jsonBody,
                                                                      ) ==
                                                                      1) {
                                                                    return 'Medium';
                                                                  } else if (MicroserviceExternalHostGroup
                                                                          .pIDashboardPropertyDetailViewCall
                                                                          .priority(
                                                                        columnPIDashboardPropertyDetailViewResponse
                                                                            .jsonBody,
                                                                      ) ==
                                                                      2) {
                                                                    return 'High';
                                                                  } else {
                                                                    return 'N/A';
                                                                  }
                                                                }(),
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: () {
                                                                    if (MicroserviceExternalHostGroup
                                                                            .pIDashboardPropertyDetailViewCall
                                                                            .priority(
                                                                          columnPIDashboardPropertyDetailViewResponse
                                                                              .jsonBody,
                                                                        ) ==
                                                                        0) {
                                                                      return Color(
                                                                          0xFFFFC700);
                                                                    } else if (MicroserviceExternalHostGroup
                                                                            .pIDashboardPropertyDetailViewCall
                                                                            .priority(
                                                                          columnPIDashboardPropertyDetailViewResponse
                                                                              .jsonBody,
                                                                        ) ==
                                                                        1) {
                                                                      return Color(
                                                                          0xFFFFA500);
                                                                    } else if (MicroserviceExternalHostGroup
                                                                            .pIDashboardPropertyDetailViewCall
                                                                            .priority(
                                                                          columnPIDashboardPropertyDetailViewResponse
                                                                              .jsonBody,
                                                                        ) ==
                                                                        2) {
                                                                      return Color(
                                                                          0xFFFF0000);
                                                                    } else {
                                                                      return FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText;
                                                                    }
                                                                  }(),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              )
                                                            ],
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: () {
                                                                if (MicroserviceExternalHostGroup
                                                                        .pIDashboardPropertyDetailViewCall
                                                                        .priority(
                                                                      columnPIDashboardPropertyDetailViewResponse
                                                                          .jsonBody,
                                                                    ) ==
                                                                    0) {
                                                                  return Color(
                                                                      0xFFFFC700);
                                                                } else if (MicroserviceExternalHostGroup
                                                                        .pIDashboardPropertyDetailViewCall
                                                                        .priority(
                                                                      columnPIDashboardPropertyDetailViewResponse
                                                                          .jsonBody,
                                                                    ) ==
                                                                    1) {
                                                                  return Color(
                                                                      0xFFFFA500);
                                                                } else if (MicroserviceExternalHostGroup
                                                                        .pIDashboardPropertyDetailViewCall
                                                                        .priority(
                                                                      columnPIDashboardPropertyDetailViewResponse
                                                                          .jsonBody,
                                                                    ) ==
                                                                    2) {
                                                                  return Color(
                                                                      0xFFFF0000);
                                                                } else {
                                                                  return FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText;
                                                                }
                                                              }(),
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
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
                                                        .listDataConversion(
                                                            getJsonField(
                                                          columnPIDashboardPropertyDetailViewResponse
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
                                            children:
                                                List.generate(imagesList.length,
                                                    (imagesListIndex) {
                                              final imagesListItem =
                                                  imagesList[imagesListIndex];
                                              return Material(
                                                color: Colors.transparent,
                                                elevation: 0.5,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
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
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                12.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Align(
                                                                      alignment: AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                      child:
                                                                          Text(
                                                                        'Summary',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .titleSmall
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              fontSize: 18.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            16.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      getJsonField(
                                                                        columnPIDashboardPropertyDetailViewResponse
                                                                            .jsonBody,
                                                                        r'''$.description''',
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
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          12.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                    child: Text(
                                                                      'What’s Existed',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
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
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Builder(
                                                                      builder:
                                                                          (context) {
                                                                        final amenitiesList = functions
                                                                                .listMapConversion(getJsonField(
                                                                                  columnPIDashboardPropertyDetailViewResponse.jsonBody,
                                                                                  r'''$.amenities''',
                                                                                ).toString())
                                                                                ?.toList() ??
                                                                            [];
                                                                        return Wrap(
                                                                          spacing:
                                                                              5.0,
                                                                          runSpacing:
                                                                              5.0,
                                                                          alignment:
                                                                              WrapAlignment.start,
                                                                          crossAxisAlignment:
                                                                              WrapCrossAlignment.start,
                                                                          direction:
                                                                              Axis.horizontal,
                                                                          runAlignment:
                                                                              WrapAlignment.start,
                                                                          verticalDirection:
                                                                              VerticalDirection.down,
                                                                          clipBehavior:
                                                                              Clip.none,
                                                                          children: List.generate(
                                                                              amenitiesList.length,
                                                                              (amenitiesListIndex) {
                                                                            final amenitiesListItem =
                                                                                amenitiesList[amenitiesListIndex];
                                                                            return Padding(
                                                                              padding: EdgeInsets.all(5.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                children: [
                                                                                  Container(
                                                                                    width: 6.0,
                                                                                    height: 6.0,
                                                                                    decoration: BoxDecoration(
                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      borderRadius: BorderRadius.circular(6.0),
                                                                                    ),
                                                                                  ),
                                                                                  ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(0.0),
                                                                                    child: Image.network(
                                                                                      functions.getImage(
                                                                                          FFAppState().BaseUrl,
                                                                                          getJsonField(
                                                                                            amenitiesListItem,
                                                                                            r'''$.imageIcon''',
                                                                                          ).toString())!,
                                                                                      width: 20.0,
                                                                                      height: 15.0,
                                                                                      fit: BoxFit.contain,
                                                                                    ),
                                                                                  ),
                                                                                  Text(
                                                                                    getJsonField(
                                                                                      amenitiesListItem,
                                                                                      r'''$.name''',
                                                                                    ).toString(),
                                                                                    textAlign: TextAlign.center,
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Poppins',
                                                                                      color: Color(0xFF000D3E),
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontSize: 14.0,
                                                                                    ),
                                                                                  ),
                                                                                ].divide(SizedBox(width: 15.0)),
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
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      50.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        -1.0),
                                                                child: Text(
                                                                  'User personal document:',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        -1.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
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
                                                                                columnPIDashboardPropertyDetailViewResponse.jsonBody,
                                                                                r'''$.fileURLs''',
                                                                              ))
                                                                              ?.toList(),
                                                                          'govId'),
                                                                      r'''$.DocName''',
                                                                    ).toString()})',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Poppins',
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontSize:
                                                                          12.0,
                                                                    ),
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
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              setState(() {
                                                                _model.fileURL =
                                                                    getJsonField(
                                                                  functions.getDocName(
                                                                      functions
                                                                          .listMapConversionEx(getJsonField(
                                                                            columnPIDashboardPropertyDetailViewResponse.jsonBody,
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
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.6,
                                                              height: 50.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    Color(
                                                                        0xFFA51FF6),
                                                                    Color(
                                                                        0xFFA51FF6),
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
                                                                          1.0,
                                                                          0.0),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0),
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF60A5FA),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .attach_file,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            functions.getDocName(
                                                                                functions
                                                                                    .listMapConversionEx(getJsonField(
                                                                                      columnPIDashboardPropertyDetailViewResponse.jsonBody,
                                                                                      r'''$.fileURLs''',
                                                                                    ))
                                                                                    ?.toList(),
                                                                                'govId'),
                                                                            r'''$.fileName''',
                                                                          ).toString(),
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                Color(0xFFC3C3C3),
                                                                            fontSize:
                                                                                14.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'View & Download',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              14.0,
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
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      24.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        -1.0),
                                                                child: Text(
                                                                  'Property document:',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        -1.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
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
                                                                                columnPIDashboardPropertyDetailViewResponse.jsonBody,
                                                                                r'''$.fileURLs''',
                                                                              ))
                                                                              ?.toList(),
                                                                          'propDoc'),
                                                                      r'''$.DocName''',
                                                                    ).toString()})',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Poppins',
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
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
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              setState(() {
                                                                _model.fileURL =
                                                                    getJsonField(
                                                                  functions.getDocName(
                                                                      functions
                                                                          .listMapConversionEx(getJsonField(
                                                                            columnPIDashboardPropertyDetailViewResponse.jsonBody,
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
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.6,
                                                              height: 50.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                gradient:
                                                                    LinearGradient(
                                                                  colors: [
                                                                    Color(
                                                                        0xFFA51FF6),
                                                                    Color(
                                                                        0xFFA51FF6),
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
                                                                          1.0,
                                                                          0.0),
                                                                  end:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          0),
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                                border:
                                                                    Border.all(
                                                                  color: Color(
                                                                      0xFF60A5FA),
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        0.0,
                                                                        12.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Icon(
                                                                      Icons
                                                                          .attach_file,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      size:
                                                                          20.0,
                                                                    ),
                                                                    Expanded(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          getJsonField(
                                                                            functions.getDocName(
                                                                                functions
                                                                                    .listMapConversionEx(getJsonField(
                                                                                      columnPIDashboardPropertyDetailViewResponse.jsonBody,
                                                                                      r'''$.fileURLs''',
                                                                                    ))
                                                                                    ?.toList(),
                                                                                'propDoc'),
                                                                            r'''$.fileName''',
                                                                          ).toString(),
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                Color(0xFFC3C3C3),
                                                                            fontSize:
                                                                                14.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'View & Download',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              14.0,
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
                                                model:
                                                    _model.exHostdetailsModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: ExHostdetailsWidget(
                                                  userName: getJsonField(
                                                    columnPIDashboardPropertyDetailViewResponse
                                                        .jsonBody,
                                                    r'''$.createdByUserName''',
                                                  ).toString(),
                                                  phoneNumber:
                                                      valueOrDefault<String>(
                                                    getJsonField(
                                                      columnPIDashboardPropertyDetailViewResponse
                                                          .jsonBody,
                                                      r'''$.ownerPhoneNumber''',
                                                    )?.toString(),
                                                    '--',
                                                  ),
                                                  emailAddress: getJsonField(
                                                    columnPIDashboardPropertyDetailViewResponse
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
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, 1.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (FFAppState()
                                          .PIdetailView
                                          .propertyStatus ==
                                      0)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          30.0, 16.0, 30.0, 16.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Builder(
                                            builder: (context) => Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 12.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  var _shouldSetState = false;
                                                  _model.refreshRespForPI =
                                                      await RefreshTokenAPICall
                                                          .call(
                                                    clientId:
                                                        FFAppConstants.clientId,
                                                    clientSecret: FFAppConstants
                                                        .clientSecret,
                                                    grantType: FFAppConstants
                                                        .refreshGrantType,
                                                    refreshToken: FFAppState()
                                                        .refreshToken,
                                                  );
                                                  _shouldSetState = true;
                                                  if ((_model.refreshRespForPI
                                                          ?.succeeded ??
                                                      true)) {
                                                    setState(() {
                                                      FFAppState().accessToken =
                                                          getJsonField(
                                                        (_model.refreshRespForPI
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.access_token''',
                                                      ).toString();
                                                      FFAppState()
                                                              .refreshToken =
                                                          getJsonField(
                                                        (_model.refreshRespForPI
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.refresh_token''',
                                                      ).toString();
                                                    });
                                                    _model.piStatusUpdateResp =
                                                        await LiferayBaseUrlGroup
                                                            .pIStatusUpdateCall
                                                            .call(
                                                      accessToken: FFAppState()
                                                          .accessToken,
                                                      reviewId: getJsonField(
                                                        columnPIDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.reviewId''',
                                                      ),
                                                      status: 1,
                                                      comments: getJsonField(
                                                        columnPIDashboardPropertyDetailViewResponse
                                                            .jsonBody,
                                                        r'''$.reviewComments''',
                                                      ).toString(),
                                                    );
                                                    _shouldSetState = true;
                                                    if ((_model
                                                            .piStatusUpdateResp
                                                            ?.succeeded ??
                                                        true)) {
                                                      await showDialog(
                                                        barrierDismissible:
                                                            false,
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () => _model
                                                                      .unfocusNode
                                                                      .canRequestFocus
                                                                  ? FocusScope.of(
                                                                          context)
                                                                      .requestFocus(
                                                                          _model
                                                                              .unfocusNode)
                                                                  : FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child:
                                                                  PiPropertySuccessWidget(
                                                                message:
                                                                    'Property Accepted successfully!',
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          setState(() {}));

                                                      if (_shouldSetState)
                                                        setState(() {});
                                                      return;
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title: Text(
                                                                'Information'),
                                                            content: Text(
                                                                'Something went wrong'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                      if (_shouldSetState)
                                                        setState(() {});
                                                      return;
                                                    }
                                                  } else {
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                              .hostAddressDetail =
                                                          HostAddressDetailsStruct
                                                              .fromSerializableMap(
                                                                  jsonDecode(
                                                                      '{\"availability\":\"[]\"}'));
                                                      FFAppState()
                                                              .propertyType =
                                                          jsonDecode(
                                                              '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                                                      FFAppState()
                                                          .basicDetailsBeds = 1;
                                                      FFAppState()
                                                          .basicDetailsGuests = 1;
                                                      FFAppState()
                                                          .basicDetailsBathrooms = 1;
                                                      FFAppState()
                                                              .propertyBasicData =
                                                          BasicDetailsStruct();
                                                      FFAppState()
                                                          .selectedAMNames = [];
                                                      FFAppState()
                                                              .tellAboutYourProperty =
                                                          TellYourPropertyStruct();
                                                      FFAppState()
                                                          .webHostStepIndex = 0;
                                                      FFAppState().SavedRoute =
                                                          '';
                                                      FFAppState()
                                                          .propertyPrice = 0;
                                                      FFAppState()
                                                          .basicDetailsBedrooms = 1;
                                                      FFAppState()
                                                          .SelectedAmenities = [];
                                                      FFAppState()
                                                          .webHostSaveRoute = 0;
                                                      FFAppState().accessToken =
                                                          '';
                                                      FFAppState()
                                                          .refreshToken = '';
                                                      FFAppState()
                                                              .exHostAcceptTC =
                                                          false;
                                                    });
                                                    await showDialog(
                                                      barrierColor:
                                                          Color(0xCC000D3E),
                                                      barrierDismissible: false,
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () => _model
                                                                    .unfocusNode
                                                                    .canRequestFocus
                                                                ? FocusScope.of(
                                                                        context)
                                                                    .requestFocus(
                                                                        _model
                                                                            .unfocusNode)
                                                                : FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Container(
                                                              height: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .height *
                                                                  0.9,
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.3,
                                                              child:
                                                                  PhoneLoginComponentWidget(),
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));

                                                    if (_shouldSetState)
                                                      setState(() {});
                                                    return;
                                                  }

                                                  if (_shouldSetState)
                                                    setState(() {});
                                                },
                                                text: 'Accept',
                                                options: FFButtonOptions(
                                                  width: 320.0,
                                                  height: 36.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  textStyle:
                                                      GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16.0,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Builder(
                                            builder: (context) => Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await showDialog(
                                                    barrierDismissible: false,
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                    0.0, -1.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: GestureDetector(
                                                          onTap: () => _model
                                                                  .unfocusNode
                                                                  .canRequestFocus
                                                              ? FocusScope.of(
                                                                      context)
                                                                  .requestFocus(
                                                                      _model
                                                                          .unfocusNode)
                                                              : FocusScope.of(
                                                                      context)
                                                                  .unfocus(),
                                                          child:
                                                              ReviewRejectPiWidget(
                                                            reviewId:
                                                                getJsonField(
                                                              columnPIDashboardPropertyDetailViewResponse
                                                                  .jsonBody,
                                                              r'''$.reviewId''',
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));
                                                },
                                                text: 'Reject',
                                                options: FFButtonOptions(
                                                  width: 320.0,
                                                  height: 36.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 24.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0xFFD70000),
                                                  textStyle:
                                                      GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16.0,
                                                  ),
                                                  elevation: 4.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (FFAppState()
                                          .PIdetailView
                                          .propertyStatus ==
                                      1)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 16.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Builder(
                                            builder: (context) =>
                                                FFButtonWidget(
                                              onPressed: () async {
                                                var _shouldSetState = false;
                                                _model.refreshRespForPIStarted =
                                                    await RefreshTokenAPICall
                                                        .call(
                                                  clientId:
                                                      FFAppConstants.clientId,
                                                  clientSecret: FFAppConstants
                                                      .clientSecret,
                                                  grantType: FFAppConstants
                                                      .refreshGrantType,
                                                  refreshToken:
                                                      FFAppState().refreshToken,
                                                );
                                                _shouldSetState = true;
                                                if ((_model
                                                        .refreshRespForPIStarted
                                                        ?.succeeded ??
                                                    true)) {
                                                  setState(() {
                                                    FFAppState().accessToken =
                                                        getJsonField(
                                                      (_model.refreshRespForPIStarted
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.access_token''',
                                                    ).toString();
                                                    FFAppState().refreshToken =
                                                        getJsonField(
                                                      (_model.refreshRespForPIStarted
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.refresh_token''',
                                                    ).toString();
                                                  });
                                                  _model.piStatusUpdateRespStarted =
                                                      await LiferayBaseUrlGroup
                                                          .pIStatusUpdateCall
                                                          .call(
                                                    accessToken: FFAppState()
                                                        .accessToken,
                                                    reviewId: getJsonField(
                                                      columnPIDashboardPropertyDetailViewResponse
                                                          .jsonBody,
                                                      r'''$.reviewId''',
                                                    ),
                                                    status: 2,
                                                    comments: getJsonField(
                                                      columnPIDashboardPropertyDetailViewResponse
                                                          .jsonBody,
                                                      r'''$.reviewComments''',
                                                    ).toString(),
                                                  );
                                                  _shouldSetState = true;
                                                  if ((_model
                                                          .piStatusUpdateRespStarted
                                                          ?.succeeded ??
                                                      true)) {
                                                    await showDialog(
                                                      barrierDismissible: false,
                                                      context: context,
                                                      builder: (dialogContext) {
                                                        return Dialog(
                                                          elevation: 0,
                                                          insetPadding:
                                                              EdgeInsets.zero,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          alignment: AlignmentDirectional(
                                                                  0.0, 0.0)
                                                              .resolve(
                                                                  Directionality.of(
                                                                      context)),
                                                          child:
                                                              GestureDetector(
                                                            onTap: () => _model
                                                                    .unfocusNode
                                                                    .canRequestFocus
                                                                ? FocusScope.of(
                                                                        context)
                                                                    .requestFocus(
                                                                        _model
                                                                            .unfocusNode)
                                                                : FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child:
                                                                PiPropertySuccessWidget(
                                                              message:
                                                                  'Property Inspection Started successfully!',
                                                            ),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        setState(() {}));

                                                    if (_shouldSetState)
                                                      setState(() {});
                                                    return;
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text(
                                                              'Information'),
                                                          content: Text(
                                                              'Something went wrong'),
                                                          actions: [
                                                            TextButton(
                                                              onPressed: () =>
                                                                  Navigator.pop(
                                                                      alertDialogContext),
                                                              child: Text('Ok'),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                    if (_shouldSetState)
                                                      setState(() {});
                                                    return;
                                                  }
                                                } else {
                                                  FFAppState().update(() {
                                                    FFAppState()
                                                            .hostAddressDetail =
                                                        HostAddressDetailsStruct
                                                            .fromSerializableMap(
                                                                jsonDecode(
                                                                    '{\"availability\":\"[]\"}'));
                                                    FFAppState().propertyType =
                                                        jsonDecode(
                                                            '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                                                    FFAppState()
                                                        .basicDetailsBeds = 1;
                                                    FFAppState()
                                                        .basicDetailsGuests = 1;
                                                    FFAppState()
                                                        .basicDetailsBathrooms = 1;
                                                    FFAppState()
                                                            .propertyBasicData =
                                                        BasicDetailsStruct();
                                                    FFAppState()
                                                        .selectedAMNames = [];
                                                    FFAppState()
                                                            .tellAboutYourProperty =
                                                        TellYourPropertyStruct();
                                                    FFAppState()
                                                        .webHostStepIndex = 0;
                                                    FFAppState().SavedRoute =
                                                        '';
                                                    FFAppState().propertyPrice =
                                                        0;
                                                    FFAppState()
                                                        .basicDetailsBedrooms = 1;
                                                    FFAppState()
                                                        .SelectedAmenities = [];
                                                    FFAppState()
                                                        .webHostSaveRoute = 0;
                                                    FFAppState().accessToken =
                                                        '';
                                                    FFAppState().refreshToken =
                                                        '';
                                                    FFAppState()
                                                        .exHostAcceptTC = false;
                                                  });
                                                  await showDialog(
                                                    barrierColor:
                                                        Color(0xCC000D3E),
                                                    barrierDismissible: false,
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: GestureDetector(
                                                          onTap: () => _model
                                                                  .unfocusNode
                                                                  .canRequestFocus
                                                              ? FocusScope.of(
                                                                      context)
                                                                  .requestFocus(
                                                                      _model
                                                                          .unfocusNode)
                                                              : FocusScope.of(
                                                                      context)
                                                                  .unfocus(),
                                                          child: Container(
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.9,
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.3,
                                                            child:
                                                                PhoneLoginComponentWidget(),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));

                                                  if (_shouldSetState)
                                                    setState(() {});
                                                  return;
                                                }

                                                if (_shouldSetState)
                                                  setState(() {});
                                              },
                                              text: 'Start Inspection',
                                              options: FFButtonOptions(
                                                width: 320.0,
                                                height: 36.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                textStyle: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 12.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pop();
                                              },
                                              child: Text(
                                                'Cancel',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Color(0xFF5246ED),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16.0,
                                                  decoration:
                                                      TextDecoration.underline,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  if (FFAppState()
                                          .PIdetailView
                                          .propertyStatus ==
                                      2)
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 24.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed(
                                            'PI_form',
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
                                        text: 'Feedback Form',
                                        options: FFButtonOptions(
                                          width: 320.0,
                                          height: 36.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          textStyle: GoogleFonts.getFont(
                                            'Poppins',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
