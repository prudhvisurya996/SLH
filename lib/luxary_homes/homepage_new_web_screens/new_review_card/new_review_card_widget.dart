import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/users/payment_confirmed/payment_confirmed_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_review_card_model.dart';
export 'new_review_card_model.dart';

class NewReviewCardWidget extends StatefulWidget {
  const NewReviewCardWidget({
    super.key,
    required this.roomsCount,
    required this.guestCount,
    required this.propertyId,
    required this.entirePropertyPricePerNight,
    required this.roomPricePerNight,
    required this.propertyType,
    required this.title,
    required this.description,
    required this.locality,
    required this.city,
    required this.streetAddress,
    required this.landmark,
    required this.state,
    required this.country,
    required this.zipcode,
    required this.plotNo,
    required this.taxPercent,
    required this.checkInDate,
    required this.checkOutDate,
    required this.bedsCount,
    required this.bathroomCount,
    required this.image,
  });

  final int? roomsCount;
  final int? guestCount;
  final int? propertyId;
  final double? entirePropertyPricePerNight;
  final double? roomPricePerNight;
  final String? propertyType;
  final String? title;
  final String? description;
  final String? locality;
  final String? city;
  final String? streetAddress;
  final String? landmark;
  final String? state;
  final String? country;
  final String? zipcode;
  final String? plotNo;
  final int? taxPercent;
  final DateTime? checkInDate;
  final DateTime? checkOutDate;
  final int? bedsCount;
  final int? bathroomCount;
  final String? image;

  @override
  State<NewReviewCardWidget> createState() => _NewReviewCardWidgetState();
}

class _NewReviewCardWidgetState extends State<NewReviewCardWidget> {
  late NewReviewCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewReviewCardModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.roomsCount = widget.roomsCount;
      _model.guestCount = widget.guestCount;
      _model.isEntirePropertyBooking =
          FFAppState().propertyBookingDetails.isEntirePropertyBooking;
      setState(() {});
    });

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

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF8F8FF),
          borderRadius: BorderRadius.circular(22.0),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(22.0),
                  topRight: Radius.circular(22.0),
                ),
                child: Image.network(
                  widget.image!,
                  width: double.infinity,
                  height: 150.0,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        valueOrDefault<String>(
                          widget.propertyType,
                          'NA',
                        ),
                        style: GoogleFonts.getFont(
                          'Work Sans',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                    if (FFAppState()
                            .propertyBookingDetails
                            .isEntirePropertyBooking ==
                        false)
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'INR. ',
                                  style: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: Color(0xFFD70000),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16.0,
                                  ),
                                ),
                                TextSpan(
                                  text: formatNumber(
                                    widget.roomPricePerNight,
                                    formatType: FormatType.custom,
                                    format: '0.00',
                                    locale: '',
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: Color(0xFFD70000),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' / Night',
                                  style: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                  ),
                                )
                              ],
                              style: GoogleFonts.getFont(
                                'Work Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    if (FFAppState()
                            .propertyBookingDetails
                            .isEntirePropertyBooking ==
                        true)
                      Flexible(
                        child: Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'INR. ',
                                  style: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: Color(0xFFD70000),
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16.0,
                                  ),
                                ),
                                TextSpan(
                                  text: formatNumber(
                                    widget.entirePropertyPricePerNight,
                                    formatType: FormatType.custom,
                                    format: '0.00',
                                    locale: '',
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: Color(0xFFD70000),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' / Night',
                                  style: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14.0,
                                  ),
                                )
                              ],
                              style: GoogleFonts.getFont(
                                'Work Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 12.0,
                              ),
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
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFE8E7FF),
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 12.0, 15.0, 2.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Check In - Check out Date',
                                      style: GoogleFonts.getFont(
                                        'Work Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    Icon(
                                      Icons.date_range_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 10.0),
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
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                                dateTimeFormat('dd-MMM-yyyy',
                                                    widget.checkInDate),
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
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '11:00 AM',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
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
                                    ),
                                    Text(
                                      '--',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
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
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                                dateTimeFormat('dd-MMM-yyyy',
                                                    widget.checkOutDate),
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
                                            Row(
                                              mainAxisSize: MainAxisSize.min,
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '12:00 PM',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
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
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 15.0, 0.0, 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFE8E7FF),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 8.0, 10.0),
                                    child: Text(
                                      'No of Rooms and Guests',
                                      style: GoogleFonts.getFont(
                                        'Work Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
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
                                      15.0, 10.0, 15.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Rooms',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              child: Text(
                                                _model.roomsCount.toString(),
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      15.0, 10.0, 15.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Guests',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              child: Text(
                                                _model.guestCount.toString(),
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16.0,
                                                ),
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
                      if (FFAppState()
                              .propertyBookingDetails
                              .isEntirePropertyBooking ==
                          false)
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Fare Details',
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: FFAppState()
                                                .propertyBookingDetails
                                                .daysBooking
                                                .toString(),
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
                                            text: ' nights',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' x ',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          TextSpan(
                                            text: 'INR. ',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          TextSpan(
                                            text: formatNumber(
                                              widget.roomPricePerNight,
                                              formatType: FormatType.custom,
                                              format: '0.00',
                                              locale: '',
                                            ),
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
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
                                  ),
                                  Flexible(
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'INR. ',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          TextSpan(
                                            text: FFAppState()
                                                .propertyBookingDetails
                                                .calPriceForRoom
                                                .toString(),
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              fontSize: 14.0,
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
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 8.0),
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
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' (Inc all taxes)',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 12.0,
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
                                  Flexible(
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'INR. ',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: FFAppState()
                                                .propertyBookingDetails
                                                .taxPriceForRoom
                                                .toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          )
                                        ],
                                        style: TextStyle(),
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
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Total: ',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'INR. ',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color: Color(0xFFD70000),
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: FFAppState()
                                                  .propertyBookingDetails
                                                  .totalPriceForRoom
                                                  .toString(),
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
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      if (FFAppState()
                              .propertyBookingDetails
                              .isEntirePropertyBooking ==
                          true)
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Text(
                                    'Fare Details',
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        25.0, 0.0, 0.0, 5.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: SvgPicture.asset(
                                            'assets/images/info-circle.svg',
                                            width: 20.0,
                                            height: 20.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ),
                                        Flexible(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'You are booking entire property',
                                              textAlign: TextAlign.start,
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color: Color(0xFFD70000),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14.0,
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
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: FFAppState()
                                                .propertyBookingDetails
                                                .daysBooking
                                                .toString(),
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
                                            text: ' nights',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' x ',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          TextSpan(
                                            text: 'INR. ',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          TextSpan(
                                            text: formatNumber(
                                              widget
                                                  .entirePropertyPricePerNight,
                                              formatType: FormatType.custom,
                                              format: '0.00',
                                              locale: '',
                                            ),
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
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
                                  ),
                                  Flexible(
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'INR. ',
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          TextSpan(
                                            text: FFAppState()
                                                .propertyBookingDetails
                                                .calPriceForEntireProperty
                                                .toString(),
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              fontSize: 14.0,
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
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 8.0),
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
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' (Inc all taxes)',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineLarge
                                              .override(
                                                fontFamily: 'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 12.0,
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
                                  Flexible(
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'INR. ',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                          TextSpan(
                                            text: FFAppState()
                                                .propertyBookingDetails
                                                .taxPriceForEntireProperty
                                                .toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .headlineLarge
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          )
                                        ],
                                        style: TextStyle(),
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
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 8.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Flexible(
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Total: ',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'INR. ',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color: Color(0xFFD70000),
                                                fontWeight: FontWeight.normal,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                            TextSpan(
                                              text: FFAppState()
                                                  .propertyBookingDetails
                                                  .totalPriceForEntireProperty
                                                  .toString(),
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
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Divider(
                              height: 1.0,
                              thickness: 1.0,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 14.0, 0.0, 14.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              var _shouldSetState = false;
                              _model.refreshTokenBookingResp =
                                  await RefreshTokenAPICall.call(
                                clientId: FFAppConstants.clientId,
                                clientSecret: FFAppConstants.clientSecret,
                                grantType: FFAppConstants.refreshGrantType,
                                refreshToken: FFAppState().refreshToken,
                              );
                              _shouldSetState = true;
                              if ((_model.refreshTokenBookingResp?.succeeded ??
                                  true)) {
                                FFAppState().accessToken = getJsonField(
                                  (_model.refreshTokenBookingResp?.jsonBody ??
                                      ''),
                                  r'''$.access_token''',
                                ).toString();
                                FFAppState().refreshToken = getJsonField(
                                  (_model.refreshTokenBookingResp?.jsonBody ??
                                      ''),
                                  r'''$.refresh_token''',
                                ).toString();
                                setState(() {});
                                _model.initiateBookingResp =
                                    await LiferayBaseUrlGroup
                                        .initiateBookingCall
                                        .call(
                                  checkIn: dateTimeFormat(
                                      'yyyy-MM-dd', widget.checkInDate),
                                  checkOut: dateTimeFormat(
                                      'yyyy-MM-dd', widget.checkOutDate),
                                  propertyId: widget.propertyId,
                                  totalAmount: FFAppState()
                                              .propertyBookingDetails
                                              .isEntirePropertyBooking ==
                                          true
                                      ? functions.getPriceTotal(
                                          functions.getPrice(
                                              functions.daysCalculation(FFAppState().selectedDateRange.toList()) > 0
                                                  ? functions.daysCalculation(
                                                      FFAppState()
                                                          .selectedDateRange
                                                          .toList())
                                                  : 0,
                                              widget
                                                  .entirePropertyPricePerNight!),
                                          functions.getPricePercentage(
                                              functions.getPrice(
                                                  functions.daysCalculation(FFAppState().selectedDateRange.toList()) > 0
                                                      ? functions.daysCalculation(
                                                          FFAppState().selectedDateRange.toList())
                                                      : 0,
                                                  widget.entirePropertyPricePerNight!),
                                              widget.taxPercent!))
                                      : functions.getPriceTotal(functions.getPrice(functions.daysCalculation(FFAppState().selectedDateRange.toList()) > 0 ? functions.daysCalculation(FFAppState().selectedDateRange.toList()) : 0, widget.roomPricePerNight!), functions.getPricePercentage(functions.getPrice(functions.daysCalculation(FFAppState().selectedDateRange.toList()) > 0 ? functions.daysCalculation(FFAppState().selectedDateRange.toList()) : 0, widget.roomPricePerNight!), widget.taxPercent!)),
                                  totalGuests: _model.guestCount,
                                  totalTax: FFAppState()
                                              .propertyBookingDetails
                                              .isEntirePropertyBooking ==
                                          false
                                      ? functions.getPricePercentage(
                                          functions.getPrice(
                                              functions.daysCalculation(FFAppState().selectedDateRange.toList()) > 0
                                                  ? functions.daysCalculation(FFAppState()
                                                      .selectedDateRange
                                                      .toList())
                                                  : 0,
                                              widget.roomPricePerNight!),
                                          widget.taxPercent!)
                                      : functions.getPricePercentage(
                                          functions.getPrice(
                                              functions.daysCalculation(FFAppState().selectedDateRange.toList()) > 0
                                                  ? functions.daysCalculation(
                                                      FFAppState()
                                                          .selectedDateRange
                                                          .toList())
                                                  : 0,
                                              widget.entirePropertyPricePerNight!),
                                          widget.taxPercent!),
                                  accesssToken: FFAppState().accessToken,
                                  rooms: _model.roomsCount,
                                  entirePropertyBooking: FFAppState()
                                      .propertyBookingDetails
                                      .isEntirePropertyBooking,
                                );
                                _shouldSetState = true;
                                if ((_model.initiateBookingResp?.succeeded ??
                                    true)) {
                                  _model.rzpResp =
                                      await actions.razorpayPayment(
                                    context,
                                    FFAppState().bookingDetails.totalPrice,
                                    'SID Luxury Homes',
                                    FFAppState().bookingDetails.propTitle,
                                    true,
                                    300,
                                    getJsonField(
                                      (_model.initiateBookingResp?.jsonBody ??
                                          ''),
                                      r'''$.orderId''',
                                    ).toString(),
                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/hospitality-platform-co0kn0/assets/sqbydke8nyxc/sid_logo.svg',
                                    FFAppState().userData.phoneNumber,
                                    FFAppState().userData.emailAddress,
                                    '${FFAppState().userData.firstName} ${FFAppState().userData.lastName}',
                                    () async {
                                      var _shouldSetState = false;
                                      _model.completeBookingResp =
                                          await LiferayBaseUrlGroup
                                              .completeBookingCall
                                              .call(
                                        bookingId: getJsonField(
                                          (_model.initiateBookingResp
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
                                              .completeBookingResp?.succeeded ??
                                          true)) {
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
                                              child: PaymentConfirmedWidget(
                                                bookingId: getJsonField(
                                                  (_model.completeBookingResp
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.bookingRefId''',
                                                ).toString(),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));

                                        FFAppState().searchDates = [];
                                        FFAppState().searchCity = '';
                                        FFAppState().searchGuests = 0;
                                        FFAppState().searchLocality = '';
                                        setState(() {});
                                        return;
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
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
                                      _model.paymentFailureResp =
                                          await LiferayBaseUrlGroup
                                              .completeBookingCall
                                              .call(
                                        bookingId: getJsonField(
                                          (_model.initiateBookingResp
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
                                              .paymentFailureResp?.succeeded ??
                                          true)) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
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
                                              content: Text(getJsonField(
                                                (_model.paymentFailureResp
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
                                      (_model.initiateBookingResp?.jsonBody ??
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
                                        content: Text(getJsonField(
                                          (_model.initiateBookingResp
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
                                      title: Text('Info'),
                                      content: Text(
                                          'Your session is expired, please re-login.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                _model.requestToBookRefreshTokenResp =
                                    await RefreshTokenAPICall.call(
                                  clientId: FFAppConstants.clientId,
                                  clientSecret: FFAppConstants.clientSecret,
                                  grantType: FFAppConstants.refreshGrantType,
                                  refreshToken: FFAppState().refreshToken,
                                );
                                _shouldSetState = true;
                                if ((_model.requestToBookRefreshTokenResp
                                        ?.succeeded ??
                                    true)) {
                                  FFAppState().accessToken = getJsonField(
                                    (_model.requestToBookRefreshTokenResp
                                            ?.jsonBody ??
                                        ''),
                                    r'''$.access_token''',
                                  ).toString();
                                  FFAppState().refreshToken = getJsonField(
                                    (_model.requestToBookRefreshTokenResp
                                            ?.jsonBody ??
                                        ''),
                                    r'''$.refresh_token''',
                                  ).toString();
                                  FFAppState().update(() {});
                                  _model.logoutAPIRespRequestToBook =
                                      await LogOutCall.call(
                                    accessToken: FFAppState().accessToken,
                                    refreshToken: FFAppState().refreshToken,
                                  );
                                  _shouldSetState = true;
                                  if ((_model.logoutAPIRespRequestToBook
                                          ?.succeeded ??
                                      true)) {
                                    Navigator.pop(context);
                                    FFAppState().accessToken = '';
                                    FFAppState().refreshToken = '';
                                    FFAppState().searchDates = [];
                                    FFAppState().searchCity = '';
                                    FFAppState().searchGuests = 0;
                                    FFAppState().searchLocality = '';
                                    FFAppState().priceMin = 500.0;
                                    FFAppState().priceMax = 99999.0;
                                    FFAppState().userFilterPropertyType = [];
                                    FFAppState().searchResultCount = 0;
                                    setState(() {});
                                    await showDialog(
                                      barrierColor: Color(0xCC000D3E),
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.9,
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.3,
                                            child: PhoneNumLoginWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));

                                    if (_shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    FFAppState().propertyType = jsonDecode(
                                        '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                                    FFAppState().selectedAMNames = [];
                                    FFAppState().webHostStepIndex = 0;
                                    FFAppState().SavedRoute = '';
                                    FFAppState().SelectedAmenities = [];
                                    FFAppState().webHostSaveRoute = 0;
                                    FFAppState().accessToken = '';
                                    FFAppState().refreshToken = '';
                                    FFAppState().update(() {});
                                    await showDialog(
                                      barrierColor: Color(0xCC000D3E),
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, 0.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.9,
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.3,
                                            child: PhoneNumLoginWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));

                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }
                                } else {
                                  FFAppState().propertyType = jsonDecode(
                                      '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                                  FFAppState().selectedAMNames = [];
                                  FFAppState().webHostStepIndex = 0;
                                  FFAppState().SavedRoute = '';
                                  FFAppState().SelectedAmenities = [];
                                  FFAppState().webHostSaveRoute = 0;
                                  FFAppState().accessToken = '';
                                  FFAppState().refreshToken = '';
                                  FFAppState().update(() {});
                                  await showDialog(
                                    barrierColor: Color(0xCC000D3E),
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.9,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.3,
                                          child: PhoneNumLoginWidget(),
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));

                                  if (_shouldSetState) setState(() {});
                                  return;
                                }
                              }

                              if (_shouldSetState) setState(() {});
                            },
                            text: 'Pay Now',
                            options: FFButtonOptions(
                              width: 120.0,
                              height: 36.0,
                              padding: EdgeInsets.all(0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: GoogleFonts.getFont(
                                'Work Sans',
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
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
    );
  }
}
