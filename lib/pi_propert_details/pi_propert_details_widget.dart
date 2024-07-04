import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/admin/approval_reason/reason_for_approval/reason_for_approval_widget.dart';
import '/luxary_homes/admin/reason_for_reject/reason_for_reject_comp/reason_for_reject_comp_widget.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/internal_host_journey/host_dashboard/dashboard_components/host_new_design_component/host_information/host_information/host_information_widget.dart';
import '/luxary_homes/users/user_components/property_components/house_rule_card/house_rule_card_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
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
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 24.0, 16.0, 24.0),
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
                                fillColor: Color(0xFFBBD1EA),
                                icon: Icon(
                                  Icons.chevron_left,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  30.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Property Details',
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
                      if (FFAppState().ExHostDetailView.status == 3)
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 24.0, 30.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 297.0,
                                height: 120.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF3F3F3),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 7.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          GradientText(
                                            'PRIORITY',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: Color(0xFF5246ED),
                                                  fontSize: 18.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                            colors: [
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                              Color(0xFFA51FF6)
                                            ],
                                            gradientDirection:
                                                GradientDirection.ltr,
                                            gradientType: GradientType.linear,
                                          ),
                                          ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                            child: SvgPicture.asset(
                                              'assets/images/Group_1707477738.svg',
                                              width: 61.0,
                                              height: 61.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'High',
                                            options: FFButtonOptions(
                                              width: 70.0,
                                              height: 35.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFFFFBEBE),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFFFF0000),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'Medium',
                                            options: FFButtonOptions(
                                              width: 70.0,
                                              height: 35.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFFF3F3F3),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF979797),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              elevation: 0.5,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                          FFButtonWidget(
                                            onPressed: () {
                                              print('Button pressed ...');
                                            },
                                            text: 'Low',
                                            options: FFButtonOptions(
                                              width: 70.0,
                                              height: 35.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFFF3F3F3),
                                              textStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFF979797),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                              elevation: 0.5,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 0.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    50.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: 30.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF80BB01),
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Icon(
                                    Icons.check_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    size: 16.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Assigned',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 5.0, 0.0, 0.0),
                                          child: Container(
                                            width: 144.0,
                                            height: 4.0,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0xFF80BB01),
                                                  Color(0xFFFFCD3D)
                                                ],
                                                stops: [0.4, 0.6],
                                                begin: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                end: AlignmentDirectional(
                                                    1.0, 0),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Apr 5th 2024 - 10:15am',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0x80000000),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    2.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: 30.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.hourglassHalf,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 18.0,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Yet to start',
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 5.0, 0.0, 0.0),
                                          child: Container(
                                            width: 144.0,
                                            height: 4.0,
                                            decoration: BoxDecoration(
                                              color: Color(0x6F57636C),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Property Inspection process yet to start.',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0x80000000),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    2.0, 0.0, 0.0, 0.0),
                                child: Container(
                                  width: 30.0,
                                  height: 30.0,
                                  decoration: BoxDecoration(
                                    color: Color(0x7157636C),
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child: Align(
                                    alignment: AlignmentDirectional(0.0, 0.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.hourglassHalf,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 18.0,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 0.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Assigned',
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
                                      'Submitted feed back to  Portfolio Manager',
                                      textAlign: TextAlign.start,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0x80000000),
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: Color(0xFFBBD1EA),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            46.0, 24.0, 46.0, 0.0),
                        child: FutureBuilder<ApiCallResponse>(
                          future: MicroserviceAvailabilityAPIsGroup
                              .adminFullViewCall
                              .call(
                            articleId: FFAppState()
                                .AdminLeasePropertyDetailView
                                .articleId,
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
                            final columnAdminFullViewResponse = snapshot.data!;
                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 25.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
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
                                              width: 735.0,
                                              height: 403.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                                                columnAdminFullViewResponse
                                                                    .jsonBody,
                                                                r'''$.imageURLs''',
                                                              ).toString())
                                                              ?.toList(),
                                                          FFAppState().BaseUrl)!
                                                      .first,
                                                  width: 735.0,
                                                  height: 403.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    26.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  getJsonField(
                                                    columnAdminFullViewResponse
                                                        .jsonBody,
                                                    r'''$.title''',
                                                  ).toString(),
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: Color(0xFF000D3E),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 28.0,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 10.0),
                                                  child: Text(
                                                    'Property type:',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: Color(0xFF000D3E),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20.0,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  getJsonField(
                                                    columnAdminFullViewResponse
                                                        .jsonBody,
                                                    r'''$.propertyType''',
                                                  ).toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 16.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 8.0),
                                                  child: Text(
                                                    'Property address:',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: Color(0xFF000D3E),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20.0,
                                                    ),
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                      child: SvgPicture.asset(
                                                        'assets/images/map_location_dot.svg',
                                                        width: 20.0,
                                                        height: 18.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Text(
                                                        '${getJsonField(
                                                          columnAdminFullViewResponse
                                                              .jsonBody,
                                                          r'''$.plotNo''',
                                                        ).toString()},${getJsonField(
                                                          columnAdminFullViewResponse
                                                              .jsonBody,
                                                          r'''$.street''',
                                                        ).toString()},${getJsonField(
                                                          columnAdminFullViewResponse
                                                              .jsonBody,
                                                          r'''$.zipcode''',
                                                        ).toString()}',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Poppins',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 5.0)),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 14.0, 0.0, 0.0),
                                                  child: Wrap(
                                                    spacing: 15.0,
                                                    runSpacing: 0.0,
                                                    alignment:
                                                        WrapAlignment.start,
                                                    crossAxisAlignment:
                                                        WrapCrossAlignment
                                                            .start,
                                                    direction: Axis.horizontal,
                                                    runAlignment:
                                                        WrapAlignment.start,
                                                    verticalDirection:
                                                        VerticalDirection.down,
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
                                                              width: 20.0,
                                                              height: 18.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Text(
                                                            '${getJsonField(
                                                              columnAdminFullViewResponse
                                                                  .jsonBody,
                                                              r'''$.totalGuests''',
                                                            ).toString()} Guests',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      16.0,
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
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
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
                                                                  0xFFBBD1EA),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                          Text(
                                                            '${getJsonField(
                                                              columnAdminFullViewResponse
                                                                  .jsonBody,
                                                              r'''$.bedrooms''',
                                                            ).toString()} Bedrooms',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      16.0,
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
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Container(
                                                            width: 6.0,
                                                            height: 6.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFBBD1EA),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                          Text(
                                                            '${getJsonField(
                                                              columnAdminFullViewResponse
                                                                  .jsonBody,
                                                              r'''$.beds''',
                                                            ).toString()} beds',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      16.0,
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
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Container(
                                                            width: 6.0,
                                                            height: 6.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFBBD1EA),
                                                              shape: BoxShape
                                                                  .circle,
                                                            ),
                                                          ),
                                                          Text(
                                                            '${getJsonField(
                                                              columnAdminFullViewResponse
                                                                  .jsonBody,
                                                              r'''$.bathrooms''',
                                                            ).toString()} Bathrooms',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontSize:
                                                                      16.0,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 0.0, 10.0),
                                                  child: Text(
                                                    'Property Availability',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: Color(0xFF000D3E),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 20.0,
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
                                                              columnAdminFullViewResponse
                                                                  .jsonBody,
                                                              r'''$.availableFrom''',
                                                            ).toString())),
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color:
                                                              Color(0xFF000D3E),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 14.0,
                                                        ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 24.0, 0.0, 10.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
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
                                                          'Price per night:',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16.0,
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
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: Color(
                                                                    0xFFD70000),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 18.0,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  getJsonField(
                                                                columnAdminFullViewResponse
                                                                    .jsonBody,
                                                                r'''$.basePrice''',
                                                              ).toString(),
                                                              style: TextStyle(
                                                                color: Color(
                                                                    0xFFD70000),
                                                                fontSize: 18.0,
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
                                                                FontWeight.w600,
                                                            fontSize: 16.0,
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
                                                        columnAdminFullViewResponse
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
                                                    BorderRadius.circular(12.0),
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
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ))
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
                                                                              fontSize: 20.0,
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
                                                                        columnAdminFullViewResponse
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
                                                                                16.0,
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
                                                                      40.0,
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
                                                                  Text(
                                                                    'House Rules',
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .titleLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width: double
                                                                          .infinity,
                                                                      constraints:
                                                                          BoxConstraints(
                                                                        maxWidth:
                                                                            800.0,
                                                                      ),
                                                                      decoration:
                                                                          BoxDecoration(),
                                                                      child:
                                                                          Wrap(
                                                                        spacing:
                                                                            20.0,
                                                                        runSpacing:
                                                                            30.0,
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
                                                                            Clip.antiAlias,
                                                                        children: [
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Flexible(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    wrapWithModel(
                                                                                      model: _model.houseRuleCardModel1,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: HouseRuleCardWidget(
                                                                                        ruleNumber: '01',
                                                                                        ruleHeading: 'Check In',
                                                                                        ruleDescription: 'From 12:00 PM',
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Flexible(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    wrapWithModel(
                                                                                      model: _model.houseRuleCardModel2,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: HouseRuleCardWidget(
                                                                                        ruleNumber: '02',
                                                                                        ruleHeading: 'Check Out',
                                                                                        ruleDescription: 'From 11:00 AM',
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Flexible(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    wrapWithModel(
                                                                                      model: _model.houseRuleCardModel3,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: HouseRuleCardWidget(
                                                                                        ruleNumber: '03',
                                                                                        ruleHeading: 'Smoking',
                                                                                        ruleDescription: 'Smoking is not allowed.',
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Flexible(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    wrapWithModel(
                                                                                      model: _model.houseRuleCardModel4,
                                                                                      updateCallback: () => setState(() {}),
                                                                                      child: HouseRuleCardWidget(
                                                                                        ruleNumber: '04',
                                                                                        ruleHeading: 'Parties',
                                                                                        ruleDescription: 'Parties/events are not allowed.',
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                AlignmentDirectional(-1.0, 0.0),
                                                                            child:
                                                                                wrapWithModel(
                                                                              model: _model.houseRuleCardModel5,
                                                                              updateCallback: () => setState(() {}),
                                                                              child: HouseRuleCardWidget(
                                                                                ruleNumber: '05',
                                                                                ruleHeading: 'Cancellation/prepayment',
                                                                                ruleDescription: 'Cancellation and prepayment policies vary according to apartment type. Please check the apartment conditions when selecting your apartment above.',
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ].divide(SizedBox(
                                                                    height:
                                                                        15.0)),
                                                              ),
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
                                                                      'What’s included:',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
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
                                                                                  columnAdminFullViewResponse.jsonBody,
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
                                                                                      width: 25.0,
                                                                                      height: 20.0,
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
                                                                                      fontSize: 16.0,
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
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              wrapWithModel(
                                                model:
                                                    _model.hostInformationModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: HostInformationWidget(
                                                  ownerUserName: getJsonField(
                                                    columnAdminFullViewResponse
                                                        .jsonBody,
                                                    r'''$.ownerUserName''',
                                                  ).toString(),
                                                  ownerPhoneNumber:
                                                      getJsonField(
                                                    columnAdminFullViewResponse
                                                        .jsonBody,
                                                    r'''$.ownerPhoneNumber''',
                                                  ).toString(),
                                                  ownerEmailAddress:
                                                      getJsonField(
                                                    columnAdminFullViewResponse
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
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        if (FFAppState().AdminLeasePropertyDetailView.status ==
                            2)
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                30.0, 16.0, 30.0, 16.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Builder(
                                  builder: (context) => Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 12.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        var _shouldSetState = false;
                                        _model.refreshTokenRespApprove =
                                            await RefreshTokenAPICall.call(
                                          clientId: FFAppConstants.clientId,
                                          clientSecret:
                                              FFAppConstants.clientSecret,
                                          grantType:
                                              FFAppConstants.refreshGrantType,
                                          refreshToken:
                                              FFAppState().refreshToken,
                                        );
                                        _shouldSetState = true;
                                        if ((_model.refreshTokenRespApprove
                                                ?.succeeded ??
                                            true)) {
                                          _model.updatePage(() {
                                            FFAppState().accessToken =
                                                getJsonField(
                                              (_model.refreshTokenRespApprove
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.access_token''',
                                            ).toString();
                                            FFAppState().refreshToken =
                                                getJsonField(
                                              (_model.refreshTokenRespApprove
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.refresh_token''',
                                            ).toString();
                                          });
                                          await showDialog(
                                            barrierDismissible: false,
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, -1.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child:
                                                      ReasonForApprovalWidget(
                                                    propertyId: FFAppState()
                                                        .AdminLeasePropertyDetailView
                                                        .propertyId,
                                                    articleId: FFAppState()
                                                        .AdminLeasePropertyDetailView
                                                        .articleId,
                                                    propertyStatus: FFAppState()
                                                        .AdminLeasePropertyDetailView
                                                        .status,
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));

                                          if (_shouldSetState) setState(() {});
                                          return;
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Information'),
                                                content: Text(
                                                    'Your session is expried, please relogin.'),
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
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }

                                        if (_shouldSetState) setState(() {});
                                      },
                                      text: 'Approve',
                                      options: FFButtonOptions(
                                        width: 320.0,
                                        height: 36.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xFF80BB01),
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
                                ),
                                Builder(
                                  builder: (context) => Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        var _shouldSetState = false;
                                        _model.refreshTokenRespReject =
                                            await RefreshTokenAPICall.call(
                                          clientId: FFAppConstants.clientId,
                                          clientSecret:
                                              FFAppConstants.clientSecret,
                                          grantType:
                                              FFAppConstants.refreshGrantType,
                                          refreshToken:
                                              FFAppState().refreshToken,
                                        );
                                        _shouldSetState = true;
                                        if ((_model.refreshTokenRespReject
                                                ?.succeeded ??
                                            true)) {
                                          _model.updatePage(() {
                                            FFAppState().accessToken =
                                                getJsonField(
                                              (_model.refreshTokenRespReject
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.access_token''',
                                            ).toString();
                                            FFAppState().refreshToken =
                                                getJsonField(
                                              (_model.refreshTokenRespReject
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.refresh_token''',
                                            ).toString();
                                          });
                                          await showDialog(
                                            barrierDismissible: false,
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, -1.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: GestureDetector(
                                                  onTap: () => _model
                                                          .unfocusNode
                                                          .canRequestFocus
                                                      ? FocusScope.of(context)
                                                          .requestFocus(_model
                                                              .unfocusNode)
                                                      : FocusScope.of(context)
                                                          .unfocus(),
                                                  child:
                                                      ReasonForRejectCompWidget(
                                                    propertyId: FFAppState()
                                                        .AdminLeasePropertyDetailView
                                                        .propertyId,
                                                    articleId: FFAppState()
                                                        .AdminLeasePropertyDetailView
                                                        .articleId,
                                                    propertyStatus: FFAppState()
                                                        .AdminLeasePropertyDetailView
                                                        .status,
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));

                                          if (_shouldSetState) setState(() {});
                                          return;
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Information'),
                                                content: Text(
                                                    'Your session is expried, please relogin.'),
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
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }

                                        if (_shouldSetState) setState(() {});
                                      },
                                      text: 'Reject',
                                      options: FFButtonOptions(
                                        width: 320.0,
                                        height: 36.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
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
                                        borderRadius:
                                            BorderRadius.circular(12.0),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
