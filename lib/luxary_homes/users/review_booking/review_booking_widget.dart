import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/users/booking_cancellation_policy/booking_cancellation_policy_widget.dart';
import '/luxary_homes/users/payment_confirmed/payment_confirmed_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:styled_divider/styled_divider.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'review_booking_model.dart';
export 'review_booking_model.dart';

class ReviewBookingWidget extends StatefulWidget {
  const ReviewBookingWidget({super.key});

  @override
  State<ReviewBookingWidget> createState() => _ReviewBookingWidgetState();
}

class _ReviewBookingWidgetState extends State<ReviewBookingWidget> {
  late ReviewBookingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewBookingModel());

    _model.expandableExpandableController =
        ExpandableController(initialExpanded: false);
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
                      EdgeInsetsDirectional.fromSTEB(12.0, 15.0, 12.0, 15.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FlutterFlowIconButton(
                        borderColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: 30.0,
                        borderWidth: 1.0,
                        buttonSize: 36.0,
                        fillColor:
                            FlutterFlowTheme.of(context).primaryBackground,
                        icon: Icon(
                          Icons.chevron_left,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 20.0,
                        ),
                        onPressed: () async {
                          context.safePop();
                        },
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Review your booking',
                          style: GoogleFonts.getFont(
                            'Work Sans',
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
                      padding: EdgeInsetsDirectional.fromSTEB(
                          12.0, 16.0, 12.0, 12.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 10.0),
                              child: Text(
                                FFAppState().propertyBookingDetails.title,
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
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
                                      width: 18.0,
                                      height: 18.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      '${FFAppState().propertyBookingDetails.locality}- ${FFAppState().propertyBookingDetails.city}',
                                      style: GoogleFonts.getFont(
                                        'Work Sans',
                                        color: Color(0xFF878787),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15.0,
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
                                Flexible(
                                  child: Text(
                                    FFAppState()
                                        .propertyBookingDetails
                                        .propertyType,
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                                RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Pay ',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'INR. ${formatNumber(
                                          FFAppState()
                                              .propertyBookingDetails
                                              .totalPriceIncludingTax,
                                          formatType: FormatType.custom,
                                          format: '0.00',
                                          locale: '',
                                        )}',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: Color(0xFFD70000),
                                          fontWeight: FontWeight.w600,
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
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0x4DBBD1EA),
                                  borderRadius: BorderRadius.circular(14.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  15.0, 10.0, 0.0, 10.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Check-In',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
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
                                                          .propertyBookingDetails
                                                          .checkInDate!),
                                                  style: GoogleFonts.getFont(
                                                    'Work Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 10.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Check-Out',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
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
                                                          .propertyBookingDetails
                                                          .checkOutDate!),
                                                  style: GoogleFonts.getFont(
                                                    'Work Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 16.0,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 15.0, 0.0),
                                        child: Icon(
                                          Icons.date_range_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 100.0,
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
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                        ))
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Text(
                                                    'Rooms',
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 18.0,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(16.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      FFAppState()
                                                          .propertyBookingDetails
                                                          .noOfBedrooms
                                                          .toString(),
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Work Sans',
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
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 1.0, 15.0, 10.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Guests',
                                                  style: GoogleFonts.getFont(
                                                    'Work Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18.0,
                                                  ),
                                                ),
                                                Flexible(
                                                  child: Text(
                                                    FFAppState()
                                                        .propertyBookingDetails
                                                        .noOfGuests
                                                        .toString(),
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontSize: 14.0,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBgOpacity,
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 10.0, 10.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 6.0,
                                                      height: 6.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        shape: BoxShape.circle,
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
                                                        '${FFAppState().propertyBookingDetails.noOfBedrooms.toString()}${FFAppState().propertyBookingDetails.noOfBedrooms > 1 ? ' Bedrooms' : ' Bedroom'}',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 6.0,
                                                      height: 6.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        shape: BoxShape.circle,
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
                                                        '${FFAppState().propertyBookingDetails.noOfBeds.toString()}${FFAppState().propertyBookingDetails.noOfBeds > 1 ? ' Beds' : ' Bed'}',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: 6.0,
                                                      height: 6.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        shape: BoxShape.circle,
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
                                                        '${FFAppState().propertyBookingDetails.noOfBathrooms.toString()}${FFAppState().propertyBookingDetails.noOfBathrooms > 1 ? ' Bathrooms' : ' Bathroom'}',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16.0,
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
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12.0),
                                    bottomRight: Radius.circular(12.0),
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                  ),
                                ),
                                child: Container(
                                  color: Color(0xFF89AFF0),
                                  child: ExpandableNotifier(
                                    controller:
                                        _model.expandableExpandableController,
                                    child: ExpandablePanel(
                                      header: Container(
                                        height: 45.0,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFD8E5FA),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Container(
                                              width: 5.0,
                                              height: 38.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFF5246ED),
                                                borderRadius: BorderRadius.only(
                                                  bottomLeft:
                                                      Radius.circular(0.0),
                                                  bottomRight:
                                                      Radius.circular(20.0),
                                                  topLeft: Radius.circular(0.0),
                                                  topRight:
                                                      Radius.circular(20.0),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      14.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'View User Details',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      collapsed: Container(),
                                      expanded: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: Color(0xE5F8F8FE),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0.0),
                                            bottomRight: Radius.circular(0.0),
                                            topLeft: Radius.circular(0.0),
                                            topRight: Radius.circular(0.0),
                                          ),
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(14.0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Name: ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Text(
                                                    '${FFAppState().userData.firstName} ${FFAppState().userData.lastName}',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Email Address: ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFAppState()
                                                        .userData
                                                        .emailAddress,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Mobile Number: ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 8.0, 0.0, 0.0),
                                                  child: Text(
                                                    FFAppState()
                                                        .userData
                                                        .phoneNumber,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      theme: ExpandableThemeData(
                                        tapHeaderToExpand: true,
                                        tapBodyToExpand: false,
                                        tapBodyToCollapse: false,
                                        headerAlignment:
                                            ExpandablePanelHeaderAlignment
                                                .center,
                                        hasIcon: true,
                                        expandIcon: Icons.add,
                                        collapseIcon: Icons.remove,
                                        iconColor: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        iconPadding: EdgeInsets.all(12.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                            ))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 16.0, 0.0, 0.0),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 5.0),
                                          child: Text(
                                            'Fare Details',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w600,
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
                                            Flexible(
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: FFAppState()
                                                          .propertyBookingDetails
                                                          .daysBooking
                                                          .toString(),
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Work Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text: ' nights',
                                                      style: TextStyle(),
                                                    ),
                                                    TextSpan(
                                                      text: ' x ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: 'INR. ',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .headlineLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                    ),
                                                    TextSpan(
                                                      text: '8566',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16.0,
                                                      ),
                                                    )
                                                  ],
                                                  style: GoogleFonts.getFont(
                                                    'Work Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 12.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'INR. ',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '1500',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      fontWeight:
                                                          FontWeight.w500,
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
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'Taxes',
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  )
                                                ],
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'INR. ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ),
                                                  TextSpan(
                                                    text: '150',
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              'Total: ',
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
                                            RichText(
                                              textScaler: MediaQuery.of(context)
                                                  .textScaler,
                                              text: TextSpan(
                                                children: [
                                                  TextSpan(
                                                    text: 'INR. ',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: Color(0xFFD70000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16.0,
                                                    ),
                                                  ),
                                                  TextSpan(
                                                    text: '44460',
                                                    style: GoogleFonts.getFont(
                                                      'Poppins',
                                                      color: Color(0xFFD70000),
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16.0,
                                                    ),
                                                  )
                                                ],
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                              ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 12.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: '*',
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                            color: Color(0xFFD70000),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        TextSpan(
                                          text:
                                              ' Important information for check-in',
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.0,
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 6.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 5.0,
                                          height: 5.0,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Passport, Aadhaar & Govt Id are accepted as ID Proofs.',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 14.0,
                                              ),
                                            ),
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
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: 5.0,
                                          height: 5.0,
                                          decoration: BoxDecoration(
                                            color: Colors.black,
                                            shape: BoxShape.circle,
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    6.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Local Id proofs are Not allowed.',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color: Colors.black,
                                                fontSize: 14.0,
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
                            Align(
                              alignment: AlignmentDirectional(0.0, 1.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Cancellation policy',
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'By Proceeding, I agree to ',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'SLH Agreement',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ', ',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Terms of Services',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' and ',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                                'Cancellation & Hotel Booking Policies',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                            mouseCursor:
                                                SystemMouseCursors.click,
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child: Container(
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.3,
                                                          child:
                                                              BookingCancellationPolicyWidget(),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                          ),
                                          TextSpan(
                                            text: '.',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 16.0,
                                            ),
                                          )
                                        ],
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          height: 1.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
                                    0.0, 10.0, 0.0, 0.0),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: '1. Full Refund: ',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
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
                                          'Work Sans',
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
                            if (responsiveVisibility(
                              context: context,
                              phone: false,
                              tablet: false,
                              tabletLandscape: false,
                              desktop: false,
                            ))
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
                                          'Work Sans',
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
                                          'Work Sans',
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
                                _model.payNowRefreshTokenMobile =
                                    await RefreshTokenAPICall.call(
                                  clientId: FFAppConstants.clientId,
                                  clientSecret: FFAppConstants.clientSecret,
                                  grantType: FFAppConstants.refreshGrantType,
                                  refreshToken: FFAppState().refreshToken,
                                );

                                _shouldSetState = true;
                                if ((_model
                                        .payNowRefreshTokenMobile?.succeeded ??
                                    true)) {
                                  FFAppState().accessToken = getJsonField(
                                    (_model.payNowRefreshTokenMobile
                                            ?.jsonBody ??
                                        ''),
                                    r'''$.access_token''',
                                  ).toString();
                                  FFAppState().refreshToken = getJsonField(
                                    (_model.payNowRefreshTokenMobile
                                            ?.jsonBody ??
                                        ''),
                                    r'''$.refresh_token''',
                                  ).toString();
                                  setState(() {});
                                  _model.initiateBookingRespMobile =
                                      await LiferayBaseUrlGroup
                                          .initiateBookingCall
                                          .call(
                                    checkIn: dateTimeFormat(
                                        'yyyy-MM-dd',
                                        FFAppState()
                                            .propertyBookingDetails
                                            .checkInDate),
                                    checkOut: dateTimeFormat(
                                        'yyyy-MM-dd',
                                        FFAppState()
                                            .propertyBookingDetails
                                            .checkOutDate),
                                    propertyId: FFAppState()
                                        .propertyBookingDetails
                                        .propertyId,
                                    totalAmount: FFAppState()
                                        .propertyBookingDetails
                                        .totalPriceIncludingTax,
                                    totalGuests: FFAppState()
                                        .propertyBookingDetails
                                        .noOfGuests,
                                    totalTax: FFAppState()
                                        .propertyBookingDetails
                                        .totalTax,
                                    accesssToken: FFAppState().accessToken,
                                    entirePropertyBooking: FFAppState()
                                        .propertyBookingDetails
                                        .isEntirePropertyBooking,
                                    rooms: FFAppState()
                                        .propertyBookingDetails
                                        .noOfBedrooms,
                                  );

                                  _shouldSetState = true;
                                  if ((_model.initiateBookingRespMobile
                                          ?.succeeded ??
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
                                        (_model.initiateBookingRespMobile
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
                                        _model.apiResult6p5Mobile =
                                            await LiferayBaseUrlGroup
                                                .completeBookingCall
                                                .call(
                                          bookingId: getJsonField(
                                            (_model.initiateBookingRespMobile
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
                                        if ((_model.apiResult6p5Mobile
                                                ?.succeeded ??
                                            true)) {
                                          FFAppState().BookingDetailsPage =
                                              BookingDetailsPageStruct();
                                          FFAppState().propertyBookingDetails =
                                              PropertyBookingDetailsStruct();
                                          setState(() {});
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
                                                    bookingRefId: getJsonField(
                                                      (_model.apiResult6p5Mobile
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.bookingRefId''',
                                                    ).toString(),
                                                    bookingId: getJsonField(
                                                      (_model.apiResult6p5Mobile
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.bookingId''',
                                                    ).toString(),
                                                  ),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));

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
                                            (_model.initiateBookingRespMobile
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
                                        (_model.initiateBookingRespMobile
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
                                            (_model.initiateBookingRespMobile
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
                              text: 'Pay now',
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
                                      fontFamily: 'Work Sans',
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
                        width: 58.0,
                        decoration: BoxDecoration(),
                      ),
                      Flexible(
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
                                    color: FlutterFlowTheme.of(context).primary,
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
                                                          BorderRadius.circular(
                                                              8.0),
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 26.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 16.0, 0.0),
                                                  child: Text(
                                                    FFAppState()
                                                        .bookingDetails
                                                        .propType,
                                                    style: GoogleFonts.getFont(
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                            .fromSTEB(0.0, 0.0,
                                                                20.0, 0.0),
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
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBgOpacity,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(14.0),
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
                                                              MainAxisSize.max,
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
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                                SizedBox(
                                                                  height: 90.0,
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
                                                              padding:
                                                                  EdgeInsetsDirectional
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
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
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
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
                                                              padding:
                                                                  EdgeInsetsDirectional
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
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
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
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
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
                                                            .fromSTEB(20.0, 0.0,
                                                                0.0, 0.0),
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
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBgOpacity,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
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
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
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
                                                                    child: Text(
                                                                      'Guests',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Poppins',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
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
                                                                  ),
                                                                ],
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
                                                                    width: 6.0,
                                                                    height: 6.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
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
                                                                    width: 6.0,
                                                                    height: 6.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
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
                                                mainAxisSize: MainAxisSize.max,
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
                                                    decoration: BoxDecoration(),
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
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontSize: 18.0,
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
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text: FFAppState()
                                                                          .bookingDetails
                                                                          .noOfStayingDaysCount
                                                                          .toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          ' nights',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          ' x ',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                    TextSpan(
                                                                      text: '₹',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    TextSpan(
                                                                      text: FFAppState()
                                                                          .bookingDetails
                                                                          .propBasePrice
                                                                          .toString(),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
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
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text: '₹',
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
                                                                    TextSpan(
                                                                      text: FFAppState()
                                                                          .bookingDetails
                                                                          .nightPrice
                                                                          .toString(),
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
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                          'Taxes',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    TextSpan(
                                                                      text:
                                                                          ' (Inc all taxes)',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .headlineLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
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
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text: '₹',
                                                                      style:
                                                                          TextStyle(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
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
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
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
                                                                padding:
                                                                    EdgeInsetsDirectional
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
                                                                        color: Color(
                                                                            0xFFD70000),
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
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.75,
                                              decoration: BoxDecoration(),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 16.0,
                                                                0.0, 16.0),
                                                    child: Text(
                                                      'Cancellation policy',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Poppins',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
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
                                                            .fromSTEB(0.0, 10.0,
                                                                0.0, 5.0),
                                                    child: RichText(
                                                      textScaler:
                                                          MediaQuery.of(context)
                                                              .textScaler,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text:
                                                                'Full Refund: ',
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
                                                          TextSpan(
                                                            text:
                                                                'Guests are eligible for a full refund if they cancel the booking within 24 hours before the check-in date.',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
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
                                                            .fromSTEB(0.0, 5.0,
                                                                0.0, 0.0),
                                                    child: RichText(
                                                      textScaler:
                                                          MediaQuery.of(context)
                                                              .textScaler,
                                                      text: TextSpan(
                                                        children: [
                                                          TextSpan(
                                                            text: 'No Refund: ',
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
                                                          TextSpan(
                                                            text:
                                                                'No refunds will be initiated if the guest cancels the booking in less than 24 hours of check-in time.',
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Poppins',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
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
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Flexible(
                                                      child: Builder(
                                                        builder: (context) =>
                                                            FFButtonWidget(
                                                          onPressed: () async {
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
                                                              setState(() {});
                                                              _model.initiateBookingResp =
                                                                  await LiferayBaseUrlGroup
                                                                      .initiateBookingCall
                                                                      .call(
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
                                                                    _model.apiResult6p5 =
                                                                        await LiferayBaseUrlGroup
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
                                                                          FFAppState()
                                                                              .accessToken,
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
                                                                            elevation:
                                                                                0,
                                                                            insetPadding:
                                                                                EdgeInsets.zero,
                                                                            backgroundColor:
                                                                                Colors.transparent,
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, -1.0).resolve(Directionality.of(context)),
                                                                            child:
                                                                                GestureDetector(
                                                                              onTap: () => _model.unfocusNode.canRequestFocus ? FocusScope.of(context).requestFocus(_model.unfocusNode) : FocusScope.of(context).unfocus(),
                                                                              child: PaymentConfirmedWidget(
                                                                                bookingRefId: getJsonField(
                                                                                  (_model.apiResult6p5?.jsonBody ?? ''),
                                                                                  r'''$.bookingRefId''',
                                                                                ).toString(),
                                                                                bookingId: getJsonField(
                                                                                  (_model.apiResult6p5?.jsonBody ?? ''),
                                                                                  r'''$.bookingId''',
                                                                                ).toString(),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      ).then((value) =>
                                                                          setState(
                                                                              () {}));

                                                                      FFAppState()
                                                                          .searchDates = [];
                                                                      FFAppState()
                                                                          .searchCity = '';
                                                                      FFAppState()
                                                                          .searchGuests = 0;
                                                                      FFAppState()
                                                                          .searchLocality = '';
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
                                                                                Text('Something went wrong! please reachout to support@luxuryhomes.com'),
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
                                                                    _model.webFailureRespCopy =
                                                                        await LiferayBaseUrlGroup
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
                                                                          FFAppState()
                                                                              .accessToken,
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
                                                                            content:
                                                                                Text(getJsonField(
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
                                                                            content:
                                                                                Text(getJsonField(
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
                                                                      content: Text(
                                                                          getJsonField(
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
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: Text(
                                                                            'Ok'),
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
                                                                FFAppState()
                                                                    .update(
                                                                        () {});
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
                                                                  setState(
                                                                      () {});
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
                                                                                PhoneNumLoginWidget(),
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
                                                                                PhoneNumLoginWidget(),
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
                                                                          EdgeInsets
                                                                              .zero,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0)
                                                                          .resolve(
                                                                              Directionality.of(context)),
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
                                                                              PhoneNumLoginWidget(),
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
                                                            width:
                                                                double.infinity,
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
                      Container(
                        width: 58.0,
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
                  model: _model.webCopyWriteModel,
                  updateCallback: () => setState(() {}),
                  child: WebCopyWriteWidget(),
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
