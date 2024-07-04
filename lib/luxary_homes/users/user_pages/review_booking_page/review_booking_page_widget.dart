import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_login_component/phone_login_component_widget.dart';
import '/luxary_homes/common_components/web_bottom_copy_write/web_bottom_copy_write_widget.dart';
import '/luxary_homes/users/user_components/property_components/payment_confirmed/payment_confirmed_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'review_booking_page_model.dart';
export 'review_booking_page_model.dart';

class ReviewBookingPageWidget extends StatefulWidget {
  const ReviewBookingPageWidget({super.key});

  @override
  State<ReviewBookingPageWidget> createState() =>
      _ReviewBookingPageWidgetState();
}

class _ReviewBookingPageWidgetState extends State<ReviewBookingPageWidget> {
  late ReviewBookingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewBookingPageModel());

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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                wrapWithModel(
                  model: _model.commonTopBarModel,
                  updateCallback: () => setState(() {}),
                  child: CommonTopBarWidget(
                    showSearchFilter: false,
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                desktop: false,
              ))
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 20.0,
                        borderWidth: 1.0,
                        buttonSize: 36.0,
                        fillColor: Color(0x4CBBD1EA),
                        icon: Icon(
                          Icons.arrow_back_ios_rounded,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 18.0,
                        ),
                        onPressed: () async {
                          context.safePop();
                        },
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Review your booking',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                desktop: false,
              ))
                Divider(
                  height: 1.0,
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              if (responsiveVisibility(
                context: context,
                desktop: false,
              ))
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 0.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              FFAppState().bookingDetails.propTitle,
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.bold,
                                fontSize: 24.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: SvgPicture.asset(
                                      'assets/images/location-pin.svg',
                                      width: 13.0,
                                      height: 18.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      '${FFAppState().bookingDetails.propLocality}- ${FFAppState().bookingDetails.propCity}',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: Color(0xFF878787),
                                        fontWeight: FontWeight.normal,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  FFAppState().bookingDetails.propType,
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      '₹${FFAppState().bookingDetails.propBasePrice.toString()}',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        '/ Night',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 16.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBgOpacity,
                                    borderRadius: BorderRadius.circular(14.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 10.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 10.0, 0.0),
                                              child: Icon(
                                                Icons.date_range_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 24.0,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 90.0,
                                              child: VerticalDivider(
                                                thickness: 1.5,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 10.0, 10.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Check In',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 10.0),
                                                child: Text(
                                                  dateTimeFormat(
                                                      'dd MMM yyyy',
                                                      FFAppState()
                                                          .bookingDetails
                                                          .checkInDate!),
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.access_time,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 24.0,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '12:00 PM',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 10.0, 10.0, 10.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Check Out',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 10.0),
                                                child: Text(
                                                  dateTimeFormat(
                                                      'dd MMM yyyy',
                                                      FFAppState()
                                                          .bookingDetails
                                                          .checkOutDate!),
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.access_time,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 24.0,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      '11:00 AM',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
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
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBgOpacity,
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 10.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 10.0, 10.0, 20.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Text(
                                                  'Guests',
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    -1.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          16.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFAppState()
                                                        .bookingDetails
                                                        .guestsCount
                                                        .toString(),
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 18.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 20.0, 10.0, 10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                '${FFAppState().bookingDetails.noOfBedrooms.toString()} Bedrooms',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              Container(
                                                width: 6.0,
                                                height: 6.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                '${FFAppState().bookingDetails.noOfBeds.toString()} Beds',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              Container(
                                                width: 6.0,
                                                height: 6.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  shape: BoxShape.circle,
                                                ),
                                              ),
                                              Text(
                                                '${FFAppState().bookingDetails.noOfBathrooms.toString()} Bathrooms',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Text(
                                        'Fare Details',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Divider(
                                    height: 1.0,
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 16.0, 0.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: FFAppState()
                                                    .bookingDetails
                                                    .noOfStayingDaysCount
                                                    .toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: ' nights',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: ' x ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: '₹',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: FFAppState()
                                                    .bookingDetails
                                                    .propBasePrice
                                                    .toString(),
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.0,
                                                ),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '₹',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              TextSpan(
                                                text: FFAppState()
                                                    .bookingDetails
                                                    .nightPrice
                                                    .toString(),
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 16.0,
                                                ),
                                              )
                                            ],
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Taxes',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: ' (Inc all taxes)',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '₹',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: FFAppState()
                                                    .bookingDetails
                                                    .taxPrice
                                                    .toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              )
                                            ],
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  StyledDivider(
                                    height: 1.0,
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    lineStyle: DividerLineStyle.dashed,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 10.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Total: ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 16.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: '₹',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Color(0xFFD70000),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: FFAppState()
                                                    .bookingDetails
                                                    .totalPrice
                                                    .toString(),
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Color(0xFFD70000),
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16.0,
                                                ),
                                              )
                                            ],
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w600,
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Text(
                                'Cancellation policy',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '1. Full Refund: ',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'Guests are eligible for a full refund if they cancel the booking within 24 hours before check in date',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0,
                                      ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: '2. No Refund: ',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text:
                                          'No refunds will be initiated if the guest cancels the booking in less than 24 hours of check-in time.',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0,
                                      ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
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
                desktop: false,
              ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            -4.0,
                          ),
                          spreadRadius: 0.0,
                        )
                      ],
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 2,
                            child: FFButtonWidget(
                              onPressed: () async {
                                var _shouldSetState = false;
                                _model.refreshTokenRespCopy =
                                    await RefreshTokenAPICall.call(
                                  clientId: FFAppConstants.clientId,
                                  clientSecret: FFAppConstants.clientSecret,
                                  grantType: FFAppConstants.refreshGrantType,
                                  refreshToken: FFAppState().refreshToken,
                                );
                                _shouldSetState = true;
                                if ((_model.refreshTokenRespCopy?.succeeded ??
                                    true)) {
                                  setState(() {
                                    FFAppState().accessToken = getJsonField(
                                      (_model.refreshTokenRespCopy?.jsonBody ??
                                          ''),
                                      r'''$.access_token''',
                                    ).toString();
                                    FFAppState().refreshToken = getJsonField(
                                      (_model.refreshTokenRespCopy?.jsonBody ??
                                          ''),
                                      r'''$.refresh_token''',
                                    ).toString();
                                  });
                                  _model.initiateBookingRespCopy =
                                      await LiferayBaseUrlGroup
                                          .initiateBookingCall
                                          .call(
                                    articleId:
                                        FFAppState().bookingDetails.articleid,
                                    checkIn: dateTimeFormat(
                                        'yyyy-MM-dd',
                                        FFAppState()
                                            .bookingDetails
                                            .checkInDate),
                                    checkOut: dateTimeFormat(
                                        'yyyy-MM-dd',
                                        FFAppState()
                                            .bookingDetails
                                            .checkOutDate),
                                    propertyId:
                                        FFAppState().bookingDetails.propId,
                                    totalAmount:
                                        FFAppState().bookingDetails.totalPrice,
                                    totalGuests:
                                        FFAppState().bookingDetails.guestsCount,
                                    totalTax:
                                        FFAppState().bookingDetails.taxPrice,
                                    accesssToken: FFAppState().accessToken,
                                  );
                                  _shouldSetState = true;
                                  if ((_model
                                          .initiateBookingRespCopy?.succeeded ??
                                      true)) {
                                    _model.rzpRespCopy =
                                        await actions.razorpayPayment(
                                      context,
                                      FFAppState().bookingDetails.totalPrice,
                                      'SID Luxury Homes',
                                      FFAppState().bookingDetails.propTitle,
                                      true,
                                      300,
                                      getJsonField(
                                        (_model.initiateBookingRespCopy
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.orderId''',
                                      ).toString(),
                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hospitality-platform-co0kn0/assets/sqbydke8nyxc/sid_logo.svg',
                                      FFAppState().userData.phoneNumber,
                                      FFAppState().userData.emailAddress,
                                      '${FFAppState().userData.firstName} ${FFAppState().userData.lastName}',
                                      () async {
                                        var _shouldSetState = false;
                                        _model.apiResult6p5Copy =
                                            await LiferayBaseUrlGroup
                                                .completeBookingCall
                                                .call(
                                          bookingId: getJsonField(
                                            (_model.initiateBookingRespCopy
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.bookingId''',
                                          ).toString(),
                                          errorCode: -1,
                                          razorOrderId: getJsonField(
                                            FFAppState().rzpPaymentResp,
                                            r'''$.orderId''',
                                          ).toString(),
                                          razorPaymentId: getJsonField(
                                            FFAppState().rzpPaymentResp,
                                            r'''$.paymentId''',
                                          ).toString(),
                                          razorSignature: getJsonField(
                                            FFAppState().rzpPaymentResp,
                                            r'''$.signature''',
                                          ).toString(),
                                          accessToken: FFAppState().accessToken,
                                        );
                                        _shouldSetState = true;
                                        if ((_model
                                                .apiResult6p5Copy?.succeeded ??
                                            true)) {
                                          await showModalBottomSheet(
                                            isScrollControlled: true,
                                            backgroundColor: Colors.transparent,
                                            isDismissible: false,
                                            enableDrag: false,
                                            context: context,
                                            builder: (context) {
                                              return GestureDetector(
                                                onTap: () => _model.unfocusNode
                                                        .canRequestFocus
                                                    ? FocusScope.of(context)
                                                        .requestFocus(
                                                            _model.unfocusNode)
                                                    : FocusScope.of(context)
                                                        .unfocus(),
                                                child: Padding(
                                                  padding:
                                                      MediaQuery.viewInsetsOf(
                                                          context),
                                                  child: PaymentConfirmedWidget(
                                                    bookingId: getJsonField(
                                                      (_model.apiResult6p5Copy
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.bookingRefId''',
                                                    ).toString(),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));

                                          setState(() {
                                            FFAppState()
                                                .updateBookingDetailsPageStruct(
                                              (e) => e
                                                ..priceValue = null
                                                ..taxPercent = null
                                                ..title = null
                                                ..locality = null
                                                ..city = null
                                                ..guestCount = null
                                                ..availableFromDate = null
                                                ..bookedDates = null
                                                ..propTypes = null
                                                ..bedCount = null
                                                ..bedRoomCount = null
                                                ..propId = null
                                                ..bathRoomCount = null
                                                ..articleId = null,
                                            );
                                          });
                                          return;
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Error'),
                                                content: Text(
                                                    'Something went wrong! please reachout to support@luxuryhomes.com'),
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
                                          return;
                                        }
                                      },
                                      () async {
                                        var _shouldSetState = false;
                                        _model.mobileFailureResp =
                                            await LiferayBaseUrlGroup
                                                .completeBookingCall
                                                .call(
                                          bookingId: getJsonField(
                                            (_model.initiateBookingRespCopy
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.bookingId''',
                                          ).toString(),
                                          errorCode: 2,
                                          razorOrderId: getJsonField(
                                            FFAppState().rzpPaymentResp,
                                            r'''$.orderId''',
                                          ).toString(),
                                          razorPaymentId: getJsonField(
                                            FFAppState().rzpPaymentResp,
                                            r'''$.paymentId''',
                                          ).toString(),
                                          razorSignature: getJsonField(
                                            FFAppState().rzpPaymentResp,
                                            r'''$.signature''',
                                          ).toString(),
                                          accessToken: FFAppState().accessToken,
                                          errorResponse: getJsonField(
                                            FFAppState().rzpPaymentResp,
                                            r'''$.message''',
                                          ).toString(),
                                        );
                                        _shouldSetState = true;
                                        if ((_model
                                                .mobileFailureResp?.succeeded ??
                                            true)) {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Error'),
                                                content: Text(getJsonField(
                                                  FFAppState().rzpPaymentResp,
                                                  r'''$.message''',
                                                ).toString()),
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
                                          return;
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Error'),
                                                content: Text(getJsonField(
                                                  (_model.mobileFailureResp
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.message''',
                                                ).toString()),
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
                                          return;
                                        }
                                      },
                                      () async {},
                                      getJsonField(
                                        (_model.initiateBookingRespCopy
                                                ?.jsonBody ??
                                            ''),
                                        r'''$.rzpKey''',
                                      ).toString(),
                                    );
                                    _shouldSetState = true;
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Error'),
                                          content: Text(getJsonField(
                                            (_model.initiateBookingRespCopy
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.message''',
                                          ).toString()),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
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
                                } else {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title: Text('Error'),
                                        content: Text(
                                            'Your session is expired, please re-login.'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
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
                              text: 'Request to book',
                              options: FFButtonOptions(
                                width: MediaQuery.sizeOf(context).width * 0.5,
                                height: 36.0,
                                padding: EdgeInsets.all(0.0),
                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 3.0,
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 68.0,
                        decoration: BoxDecoration(),
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 36.0,
                                    fillColor: Color(0x4DBBD1EA),
                                    icon: Icon(
                                      Icons.arrow_back_ios_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 18.0,
                                    ),
                                    onPressed: () async {
                                      context.safePop();
                                    },
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Review Your Booking',
                                      style: GoogleFonts.getFont(
                                        'Work Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16.0),
                                    border: Border.all(
                                      color: Color(0xFFBBD1EA),
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 16.0, 24.0, 16.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                Text(
                                                  FFAppState()
                                                      .bookingDetails
                                                      .propTitle,
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 24.0,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          24.0, 0.0, 0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        child: SvgPicture.asset(
                                                          'assets/images/location-pin.svg',
                                                          width: 16.0,
                                                          height: 16.0,
                                                          fit: BoxFit.contain,
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
                                                        child: Text(
                                                          '${FFAppState().bookingDetails.propLocality}- ${FFAppState().bookingDetails.propCity}',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: Color(
                                                                    0xFF878787),
                                                                fontSize: 14.0,
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
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 26.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                16.0, 0.0),
                                                    child: Text(
                                                      FFAppState()
                                                          .bookingDetails
                                                          .propType,
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Text(
                                                        '₹${FFAppState().bookingDetails.propBasePrice.toString()}',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 18.0,
                                                        ),
                                                      ),
                                                      Text(
                                                        ' / Night',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16.0,
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
                                      Divider(
                                        height: 3.0,
                                        thickness: 1.0,
                                        color: Color(0xFFBBD1EA),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 16.0, 20.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Flexible(
                                              flex: 2,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <=
                                                                500.0
                                                            ? MediaQuery.sizeOf(
                                                                    context)
                                                                .width
                                                            : (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.28),
                                                        height: 140.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBgOpacity,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      14.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      20.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            15.0,
                                                                            0.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .date_range_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    height:
                                                                        90.0,
                                                                    child:
                                                                        VerticalDivider(
                                                                      thickness:
                                                                          1.5,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        10.0,
                                                                        10.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Check-In',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            10.0),
                                                                        child:
                                                                            Text(
                                                                          '${dateTimeFormat('dd MMM yyyy', FFAppState().bookingDetails.checkInDate)}',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontSize:
                                                                                16.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .access_time,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '12:00 PM',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        10.0,
                                                                        10.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Text(
                                                                      'Check-Out',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            10.0),
                                                                        child:
                                                                            Text(
                                                                          '${dateTimeFormat('dd MMM yyyy', FFAppState().bookingDetails.checkOutDate)}',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontSize:
                                                                                16.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Icon(
                                                                          Icons
                                                                              .access_time,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          size:
                                                                              24.0,
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '11:00 AM',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
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
                                                  ),
                                                  Flexible(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: MediaQuery.sizeOf(
                                                                        context)
                                                                    .width <=
                                                                500.0
                                                            ? MediaQuery.sizeOf(
                                                                    context)
                                                                .width
                                                            : (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.28),
                                                        height: 140.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBgOpacity,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      10.0,
                                                                      0.0,
                                                                      10.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        0.0,
                                                                        20.0,
                                                                        20.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Text(
                                                                        'Guests',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              18.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Align(
                                                                      alignment:
                                                                          AlignmentDirectional(
                                                                              -1.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            16.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          FFAppState()
                                                                              .bookingDetails
                                                                              .guestsCount
                                                                              .toString(),
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                18.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Divider(
                                                                height: 1.0,
                                                                thickness: 1.0,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        20.0,
                                                                        20.0,
                                                                        20.0,
                                                                        0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      '${FFAppState().bookingDetails.noOfBedrooms.toString()}  Bedrooms',
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
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          6.0,
                                                                      height:
                                                                          6.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      '${FFAppState().bookingDetails.noOfBeds.toString()} Beds',
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
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          6.0,
                                                                      height:
                                                                          6.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        shape: BoxShape
                                                                            .circle,
                                                                      ),
                                                                    ),
                                                                    Text(
                                                                      '${FFAppState().bookingDetails.noOfBathrooms.toString()} Bathrooms',
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
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ],
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
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        40.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: MediaQuery.sizeOf(
                                                                      context)
                                                                  .width <=
                                                              500.0
                                                          ? MediaQuery.sizeOf(
                                                                  context)
                                                              .width
                                                          : (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.28),
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, 0.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Fare Details',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Divider(
                                                            height: 1.0,
                                                            thickness: 1.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        10.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                RichText(
                                                                  textScaler: MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text: FFAppState()
                                                                            .bookingDetails
                                                                            .noOfStayingDaysCount
                                                                            .toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                      TextSpan(
                                                                        text:
                                                                            ' nights',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      TextSpan(
                                                                        text:
                                                                            ' x ',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                      TextSpan(
                                                                        text:
                                                                            '₹',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                      TextSpan(
                                                                        text: FFAppState()
                                                                            .bookingDetails
                                                                            .propBasePrice
                                                                            .toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      )
                                                                    ],
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
                                                                ),
                                                                RichText(
                                                                  textScaler: MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text:
                                                                            '₹',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      ),
                                                                      TextSpan(
                                                                        text: FFAppState()
                                                                            .bookingDetails
                                                                            .nightPrice
                                                                            .toString(),
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      )
                                                                    ],
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
                                                                        16.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .spaceBetween,
                                                              children: [
                                                                RichText(
                                                                  textScaler: MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text:
                                                                            'Taxes',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                      TextSpan(
                                                                        text:
                                                                            ' (Inc all taxes)',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineLarge
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      )
                                                                    ],
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
                                                                ),
                                                                RichText(
                                                                  textScaler: MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text:
                                                                            '₹',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      ),
                                                                      TextSpan(
                                                                        text: FFAppState()
                                                                            .bookingDetails
                                                                            .taxPrice
                                                                            .toString(),
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          StyledDivider(
                                                            height: 1.0,
                                                            thickness: 1.0,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            lineStyle:
                                                                DividerLineStyle
                                                                    .dashed,
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
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          5.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Total:',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontSize:
                                                                          16.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                                RichText(
                                                                  textScaler: MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text:
                                                                            '₹',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              Color(0xFFD70000),
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      ),
                                                                      TextSpan(
                                                                        text: FFAppState()
                                                                            .bookingDetails
                                                                            .totalPrice
                                                                            .toString(),
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              Color(0xFFD70000),
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Poppins',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontSize:
                                                                          16.0,
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
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 20.0, 20.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Flexible(
                                              flex: 2,
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.75,
                                                decoration: BoxDecoration(),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  16.0,
                                                                  0.0,
                                                                  16.0),
                                                      child: Text(
                                                        'Cancellation policy',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20.0,
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
                                                                  5.0),
                                                      child: RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  'Full Refund: ',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 16.0,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  'Guests are eligible for a full refund if they cancel the booking within 24 hours before the check-in date.',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16.0,
                                                              ),
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: RichText(
                                                        textScaler:
                                                            MediaQuery.of(
                                                                    context)
                                                                .textScaler,
                                                        text: TextSpan(
                                                          children: [
                                                            TextSpan(
                                                              text:
                                                                  'No Refund: ',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 16.0,
                                                              ),
                                                            ),
                                                            TextSpan(
                                                              text:
                                                                  'No refunds will be initiated if the guest cancels the booking in less than 24 hours of check-in time.',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16.0,
                                                              ),
                                                            )
                                                          ],
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        40.0, 16.0, 0.0, 0.0),
                                                child: Container(
                                                  decoration: BoxDecoration(),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Flexible(
                                                        child: Builder(
                                                          builder: (context) =>
                                                              FFButtonWidget(
                                                            onPressed:
                                                                () async {
                                                              var _shouldSetState =
                                                                  false;
                                                              _model.refreshTokenResp =
                                                                  await RefreshTokenAPICall
                                                                      .call(
                                                                clientId:
                                                                    FFAppConstants
                                                                        .clientId,
                                                                clientSecret:
                                                                    FFAppConstants
                                                                        .clientSecret,
                                                                grantType:
                                                                    FFAppConstants
                                                                        .refreshGrantType,
                                                                refreshToken:
                                                                    FFAppState()
                                                                        .refreshToken,
                                                              );
                                                              _shouldSetState =
                                                                  true;
                                                              if ((_model
                                                                      .refreshTokenResp
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                setState(() {
                                                                  FFAppState()
                                                                          .accessToken =
                                                                      getJsonField(
                                                                    (_model.refreshTokenResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.access_token''',
                                                                  ).toString();
                                                                  FFAppState()
                                                                          .refreshToken =
                                                                      getJsonField(
                                                                    (_model.refreshTokenResp
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.refresh_token''',
                                                                  ).toString();
                                                                });
                                                                _model.initiateBookingResp =
                                                                    await LiferayBaseUrlGroup
                                                                        .initiateBookingCall
                                                                        .call(
                                                                  articleId: FFAppState()
                                                                      .bookingDetails
                                                                      .articleid,
                                                                  checkIn: dateTimeFormat(
                                                                      'yyyy-MM-dd',
                                                                      FFAppState()
                                                                          .bookingDetails
                                                                          .checkInDate),
                                                                  checkOut: dateTimeFormat(
                                                                      'yyyy-MM-dd',
                                                                      FFAppState()
                                                                          .bookingDetails
                                                                          .checkOutDate),
                                                                  propertyId:
                                                                      FFAppState()
                                                                          .bookingDetails
                                                                          .propId,
                                                                  totalAmount:
                                                                      FFAppState()
                                                                          .bookingDetails
                                                                          .totalPrice,
                                                                  totalGuests:
                                                                      FFAppState()
                                                                          .bookingDetails
                                                                          .guestsCount,
                                                                  totalTax: FFAppState()
                                                                      .bookingDetails
                                                                      .taxPrice,
                                                                  accesssToken:
                                                                      FFAppState()
                                                                          .accessToken,
                                                                );
                                                                _shouldSetState =
                                                                    true;
                                                                if ((_model
                                                                        .initiateBookingResp
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  _model.rzpResp =
                                                                      await actions
                                                                          .razorpayPayment(
                                                                    context,
                                                                    FFAppState()
                                                                        .bookingDetails
                                                                        .totalPrice,
                                                                    'SID Luxury Homes',
                                                                    FFAppState()
                                                                        .bookingDetails
                                                                        .propTitle,
                                                                    true,
                                                                    300,
                                                                    getJsonField(
                                                                      (_model.initiateBookingResp
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                      r'''$.orderId''',
                                                                    ).toString(),
                                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hospitality-platform-co0kn0/assets/sqbydke8nyxc/sid_logo.svg',
                                                                    FFAppState()
                                                                        .userData
                                                                        .phoneNumber,
                                                                    FFAppState()
                                                                        .userData
                                                                        .emailAddress,
                                                                    '${FFAppState().userData.firstName} ${FFAppState().userData.lastName}',
                                                                    () async {
                                                                      var _shouldSetState =
                                                                          false;
                                                                      _model.apiResult6p5 = await LiferayBaseUrlGroup
                                                                          .completeBookingCall
                                                                          .call(
                                                                        bookingId:
                                                                            getJsonField(
                                                                          (_model.initiateBookingResp?.jsonBody ??
                                                                              ''),
                                                                          r'''$.bookingId''',
                                                                        ).toString(),
                                                                        errorCode:
                                                                            -1,
                                                                        razorOrderId:
                                                                            getJsonField(
                                                                          FFAppState()
                                                                              .rzpPaymentResp,
                                                                          r'''$.orderId''',
                                                                        ).toString(),
                                                                        razorPaymentId:
                                                                            getJsonField(
                                                                          FFAppState()
                                                                              .rzpPaymentResp,
                                                                          r'''$.paymentId''',
                                                                        ).toString(),
                                                                        razorSignature:
                                                                            getJsonField(
                                                                          FFAppState()
                                                                              .rzpPaymentResp,
                                                                          r'''$.signature''',
                                                                        ).toString(),
                                                                        accessToken:
                                                                            FFAppState().accessToken,
                                                                      );
                                                                      _shouldSetState =
                                                                          true;
                                                                      if ((_model
                                                                              .apiResult6p5
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        await showDialog(
                                                                          barrierDismissible:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (dialogContext) {
                                                                            return Dialog(
                                                                              elevation: 0,
                                                                              insetPadding: EdgeInsets.zero,
                                                                              backgroundColor: Colors.transparent,
                                                                              alignment: AlignmentDirectional(0.0, -1.0).resolve(Directionality.of(context)),
                                                                              child: GestureDetector(
                                                                                onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                                child: PaymentConfirmedWidget(
                                                                                  bookingId: getJsonField(
                                                                                    (_model.apiResult6p5?.jsonBody ?? ''),
                                                                                    r'''$.bookingRefId''',
                                                                                  ).toString(),
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            setState(() {}));

                                                                        setState(
                                                                            () {
                                                                          FFAppState().searchDates =
                                                                              [];
                                                                          FFAppState().searchCity =
                                                                              '';
                                                                          FFAppState().searchGuests =
                                                                              0;
                                                                          FFAppState().searchLocality =
                                                                              '';
                                                                        });
                                                                        return;
                                                                      } else {
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return AlertDialog(
                                                                              content: Text('Something went wrong! please reachout to support@luxuryhomes.com'),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () => Navigator.pop(alertDialogContext),
                                                                                  child: Text('Ok'),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        );
                                                                        return;
                                                                      }
                                                                    },
                                                                    () async {
                                                                      var _shouldSetState =
                                                                          false;
                                                                      _model.webFailureRespCopy = await LiferayBaseUrlGroup
                                                                          .completeBookingCall
                                                                          .call(
                                                                        bookingId:
                                                                            getJsonField(
                                                                          (_model.initiateBookingResp?.jsonBody ??
                                                                              ''),
                                                                          r'''$.bookingId''',
                                                                        ).toString(),
                                                                        errorCode:
                                                                            2,
                                                                        razorOrderId:
                                                                            getJsonField(
                                                                          FFAppState()
                                                                              .rzpPaymentResp,
                                                                          r'''$.orderId''',
                                                                        ).toString(),
                                                                        razorPaymentId:
                                                                            getJsonField(
                                                                          FFAppState()
                                                                              .rzpPaymentResp,
                                                                          r'''$.paymentId''',
                                                                        ).toString(),
                                                                        razorSignature:
                                                                            getJsonField(
                                                                          FFAppState()
                                                                              .rzpPaymentResp,
                                                                          r'''$.signature''',
                                                                        ).toString(),
                                                                        accessToken:
                                                                            FFAppState().accessToken,
                                                                        errorResponse:
                                                                            getJsonField(
                                                                          FFAppState()
                                                                              .rzpPaymentResp,
                                                                          r'''$.message''',
                                                                        ).toString(),
                                                                      );
                                                                      _shouldSetState =
                                                                          true;
                                                                      if ((_model
                                                                              .webFailureRespCopy
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return AlertDialog(
                                                                              content: Text(getJsonField(
                                                                                FFAppState().rzpPaymentResp,
                                                                                r'''$.message''',
                                                                              ).toString()),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () => Navigator.pop(alertDialogContext),
                                                                                  child: Text('Ok'),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        );
                                                                        return;
                                                                      } else {
                                                                        await showDialog(
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return AlertDialog(
                                                                              content: Text(getJsonField(
                                                                                (_model.webFailureRespCopy?.jsonBody ?? ''),
                                                                                r'''$.message''',
                                                                              ).toString()),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () => Navigator.pop(alertDialogContext),
                                                                                  child: Text('Ok'),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        );
                                                                        return;
                                                                      }
                                                                    },
                                                                    () async {},
                                                                    getJsonField(
                                                                      (_model.initiateBookingResp
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                      r'''$.rzpKey''',
                                                                    ).toString(),
                                                                  );
                                                                  _shouldSetState =
                                                                      true;
                                                                  if (_shouldSetState)
                                                                    setState(
                                                                        () {});
                                                                  return;
                                                                } else {
                                                                  await showDialog(
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (alertDialogContext) {
                                                                      return AlertDialog(
                                                                        content:
                                                                            Text(getJsonField(
                                                                          (_model.initiateBookingResp?.jsonBody ??
                                                                              ''),
                                                                          r'''$.message''',
                                                                        ).toString()),
                                                                        actions: [
                                                                          TextButton(
                                                                            onPressed: () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                            child:
                                                                                Text('Ok'),
                                                                          ),
                                                                        ],
                                                                      );
                                                                    },
                                                                  );
                                                                  if (_shouldSetState)
                                                                    setState(
                                                                        () {});
                                                                  return;
                                                                }
                                                              } else {
                                                                await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (alertDialogContext) {
                                                                    return AlertDialog(
                                                                      title: Text(
                                                                          'Info'),
                                                                      content: Text(
                                                                          'Your session is expired, please re-login.'),
                                                                      actions: [
                                                                        TextButton(
                                                                          onPressed: () =>
                                                                              Navigator.pop(alertDialogContext),
                                                                          child:
                                                                              Text('Ok'),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                );
                                                                _model.requestToBookRefreshTokenResp =
                                                                    await RefreshTokenAPICall
                                                                        .call(
                                                                  clientId:
                                                                      FFAppConstants
                                                                          .clientId,
                                                                  clientSecret:
                                                                      FFAppConstants
                                                                          .clientSecret,
                                                                  grantType:
                                                                      FFAppConstants
                                                                          .refreshGrantType,
                                                                  refreshToken:
                                                                      FFAppState()
                                                                          .refreshToken,
                                                                );
                                                                _shouldSetState =
                                                                    true;
                                                                if ((_model
                                                                        .requestToBookRefreshTokenResp
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .accessToken =
                                                                        getJsonField(
                                                                      (_model.requestToBookRefreshTokenResp
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                      r'''$.access_token''',
                                                                    ).toString();
                                                                    FFAppState()
                                                                            .refreshToken =
                                                                        getJsonField(
                                                                      (_model.requestToBookRefreshTokenResp
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                      r'''$.refresh_token''',
                                                                    ).toString();
                                                                  });
                                                                  _model.logoutAPIRespRequestToBook =
                                                                      await LogOutCall
                                                                          .call(
                                                                    accessToken:
                                                                        FFAppState()
                                                                            .accessToken,
                                                                    refreshToken:
                                                                        FFAppState()
                                                                            .refreshToken,
                                                                  );
                                                                  _shouldSetState =
                                                                      true;
                                                                  if ((_model
                                                                          .logoutAPIRespRequestToBook
                                                                          ?.succeeded ??
                                                                      true)) {
                                                                    Navigator.pop(
                                                                        context);
                                                                    setState(
                                                                        () {
                                                                      FFAppState()
                                                                          .accessToken = '';
                                                                      FFAppState()
                                                                          .refreshToken = '';
                                                                      FFAppState()
                                                                          .searchDates = [];
                                                                      FFAppState()
                                                                          .searchCity = '';
                                                                      FFAppState()
                                                                          .searchGuests = 0;
                                                                      FFAppState()
                                                                          .searchLocality = '';
                                                                      FFAppState()
                                                                              .priceMin =
                                                                          500.0;
                                                                      FFAppState()
                                                                              .priceMax =
                                                                          99999.0;
                                                                      FFAppState()
                                                                          .userFilterPropertyType = [];
                                                                      FFAppState()
                                                                          .searchResultCount = 0;
                                                                    });
                                                                    await showDialog(
                                                                      barrierColor:
                                                                          Color(
                                                                              0xCC000D3E),
                                                                      barrierDismissible:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Dialog(
                                                                          elevation:
                                                                              0,
                                                                          insetPadding:
                                                                              EdgeInsets.zero,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          alignment:
                                                                              AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Container(
                                                                              height: MediaQuery.sizeOf(context).height * 0.9,
                                                                              width: MediaQuery.sizeOf(context).width * 0.3,
                                                                              child: PhoneLoginComponentWidget(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        setState(
                                                                            () {}));

                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                    return;
                                                                  } else {
                                                                    FFAppState()
                                                                        .update(
                                                                            () {
                                                                      FFAppState()
                                                                              .hostAddressDetail =
                                                                          HostAddressDetailsStruct.fromSerializableMap(
                                                                              jsonDecode('{\"availability\":\"[]\"}'));
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
                                                                      FFAppState()
                                                                          .SavedRoute = '';
                                                                      FFAppState()
                                                                          .propertyPrice = 0;
                                                                      FFAppState()
                                                                          .basicDetailsBedrooms = 1;
                                                                      FFAppState()
                                                                          .SelectedAmenities = [];
                                                                      FFAppState()
                                                                          .webHostSaveRoute = 0;
                                                                      FFAppState()
                                                                          .accessToken = '';
                                                                      FFAppState()
                                                                          .refreshToken = '';
                                                                    });
                                                                    await showDialog(
                                                                      barrierColor:
                                                                          Color(
                                                                              0xCC000D3E),
                                                                      barrierDismissible:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Dialog(
                                                                          elevation:
                                                                              0,
                                                                          insetPadding:
                                                                              EdgeInsets.zero,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          alignment:
                                                                              AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                          child:
                                                                              GestureDetector(
                                                                            onTap: () => _model.unfocusNode.canRequestFocus
                                                                                ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                                : FocusScope.of(context).unfocus(),
                                                                            child:
                                                                                Container(
                                                                              height: MediaQuery.sizeOf(context).height * 0.9,
                                                                              width: MediaQuery.sizeOf(context).width * 0.3,
                                                                              child: PhoneLoginComponentWidget(),
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        setState(
                                                                            () {}));

                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                    return;
                                                                  }
                                                                } else {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .hostAddressDetail =
                                                                        HostAddressDetailsStruct.fromSerializableMap(
                                                                            jsonDecode('{\"availability\":\"[]\"}'));
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
                                                                    FFAppState()
                                                                        .SavedRoute = '';
                                                                    FFAppState()
                                                                        .propertyPrice = 0;
                                                                    FFAppState()
                                                                        .basicDetailsBedrooms = 1;
                                                                    FFAppState()
                                                                        .SelectedAmenities = [];
                                                                    FFAppState()
                                                                        .webHostSaveRoute = 0;
                                                                    FFAppState()
                                                                        .accessToken = '';
                                                                    FFAppState()
                                                                        .refreshToken = '';
                                                                  });
                                                                  await showDialog(
                                                                    barrierColor:
                                                                        Color(
                                                                            0xCC000D3E),
                                                                    barrierDismissible:
                                                                        false,
                                                                    context:
                                                                        context,
                                                                    builder:
                                                                        (dialogContext) {
                                                                      return Dialog(
                                                                        elevation:
                                                                            0,
                                                                        insetPadding:
                                                                            EdgeInsets.zero,
                                                                        backgroundColor:
                                                                            Colors.transparent,
                                                                        alignment:
                                                                            AlignmentDirectional(0.0, 0.0).resolve(Directionality.of(context)),
                                                                        child:
                                                                            GestureDetector(
                                                                          onTap: () => _model.unfocusNode.canRequestFocus
                                                                              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
                                                                              : FocusScope.of(context).unfocus(),
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                MediaQuery.sizeOf(context).height * 0.9,
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.3,
                                                                            child:
                                                                                PhoneLoginComponentWidget(),
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ).then((value) =>
                                                                      setState(
                                                                          () {}));

                                                                  if (_shouldSetState)
                                                                    setState(
                                                                        () {});
                                                                  return;
                                                                }
                                                              }

                                                              if (_shouldSetState)
                                                                setState(() {});
                                                            },
                                                            text:
                                                                'Request to book',
                                                            options:
                                                                FFButtonOptions(
                                                              width: double
                                                                  .infinity,
                                                              height: 36.0,
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          24.0,
                                                                          0.0,
                                                                          24.0,
                                                                          0.0),
                                                              iconPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              textStyle:
                                                                  GoogleFonts
                                                                      .getFont(
                                                                'Poppins',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                fontSize: 16.0,
                                                              ),
                                                              elevation: 4.0,
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Colors
                                                                    .transparent,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                          ),
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
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 68.0,
                        decoration: BoxDecoration(),
                      ),
                    ],
                  ),
                ),
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                wrapWithModel(
                  model: _model.webBottomCopyWriteModel,
                  updateCallback: () => setState(() {}),
                  child: WebBottomCopyWriteWidget(),
                ),
              Container(
                width: 1.0,
                height: 1.0,
                child: custom_widgets.OnWillPop(
                  width: 1.0,
                  height: 1.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
