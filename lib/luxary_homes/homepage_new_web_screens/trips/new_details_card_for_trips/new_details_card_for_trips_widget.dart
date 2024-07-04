import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_details_card_for_trips_model.dart';
export 'new_details_card_for_trips_model.dart';

class NewDetailsCardForTripsWidget extends StatefulWidget {
  const NewDetailsCardForTripsWidget({
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
    required this.bedsCount,
    required this.bathroomCount,
    required this.tripsTab,
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
  final int? bedsCount;
  final int? bathroomCount;
  final String? tripsTab;

  @override
  State<NewDetailsCardForTripsWidget> createState() =>
      _NewDetailsCardForTripsWidgetState();
}

class _NewDetailsCardForTripsWidgetState
    extends State<NewDetailsCardForTripsWidget> {
  late NewDetailsCardForTripsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewDetailsCardForTripsModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.roomsCount = widget.roomsCount;
      _model.guestCount = widget.guestCount;
      _model.isEntirePropertyBooking = false;
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      valueOrDefault<String>(
                        widget.propertyType,
                        'NA',
                      ),
                      style: GoogleFonts.getFont(
                        'Work Sans',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    Flexible(
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
                                color: FlutterFlowTheme.of(context).primaryText,
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
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 10.0, 10.0),
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 10.0),
                                            child: Text(
                                              '20/4/2024',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
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
                                          10.0, 10.0, 0.0, 10.0),
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 10.0),
                                            child: Text(
                                              '25/4/2024',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
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
                                  ),
                                  Icon(
                                    Icons.date_range_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Entire property booking available at',
                            style: GoogleFonts.getFont(
                              'Work Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 8.0),
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
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: widget.entirePropertyPricePerNight
                                        .toString(),
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color: Color(0xFFD70000),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' / Night',
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14.0,
                                    ),
                                  )
                                ],
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
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
                                    15.0, 5.0, 15.0, 0.0),
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
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 20.0,
                                          buttonSize: 36.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBgOpacity,
                                          disabledColor: Color(0x32878787),
                                          icon: Icon(
                                            Icons.remove,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 20.0,
                                          ),
                                          onPressed:
                                              ((_model.isEntirePropertyBooking ==
                                                          true) ||
                                                      (_model.roomsCount! < 1))
                                                  ? null
                                                  : () async {
                                                      _model.roomsCount =
                                                          _model.roomsCount! +
                                                              -1;
                                                      setState(() {});
                                                    },
                                        ),
                                        Container(
                                          width: 50.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              child: Text(
                                                _model.roomsCount!.toString(),
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 20.0,
                                          buttonSize: 36.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBgOpacity,
                                          disabledColor: Color(0x32878787),
                                          icon: Icon(
                                            Icons.add,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 20.0,
                                          ),
                                          onPressed:
                                              ((_model.isEntirePropertyBooking ==
                                                          true) ||
                                                      (_model.roomsCount ==
                                                          widget.roomsCount))
                                                  ? null
                                                  : () async {
                                                      _model.roomsCount =
                                                          _model.roomsCount! +
                                                              1;
                                                      setState(() {});
                                                    },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 5.0, 15.0, 0.0),
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
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 36.0,
                                          buttonSize: 36.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBgOpacity,
                                          disabledColor: Color(0x32878787),
                                          icon: Icon(
                                            Icons.remove,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 20.0,
                                          ),
                                          onPressed: (_model.guestCount! < 1)
                                              ? null
                                              : () async {
                                                  _model.guestCount =
                                                      _model.guestCount! + -1;
                                                  setState(() {});
                                                },
                                        ),
                                        Container(
                                          width: 50.0,
                                          height: 30.0,
                                          decoration: BoxDecoration(),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      12.0, 0.0, 12.0, 0.0),
                                              child: Text(
                                                _model.guestCount!.toString(),
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        FlutterFlowIconButton(
                                          borderColor: Colors.transparent,
                                          borderRadius: 20.0,
                                          buttonSize: 36.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBgOpacity,
                                          disabledColor: Color(0x32878787),
                                          icon: Icon(
                                            Icons.add,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 20.0,
                                          ),
                                          onPressed: (_model.guestCount ==
                                                  widget.guestCount)
                                              ? null
                                              : () async {
                                                  _model.guestCount =
                                                      _model.guestCount! + 1;
                                                  setState(() {});
                                                },
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
                    if (_model.isEntirePropertyBooking == false)
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 5.0, 0.0, 5.0),
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
                                            text: functions.daysCalculation(
                                                        FFAppState()
                                                            .selectedDateRange
                                                            .toList()) >
                                                    0
                                                ? functions
                                                    .daysCalculation(
                                                        FFAppState()
                                                            .selectedDateRange
                                                            .toList())
                                                    .toString()
                                                : '0',
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
                                  RichText(
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
                                          text: formatNumber(
                                            functions.getPrice(
                                                functions.daysCalculation(
                                                            FFAppState()
                                                                .selectedDateRange
                                                                .toList()) >
                                                        0
                                                    ? functions.daysCalculation(
                                                        FFAppState()
                                                            .selectedDateRange
                                                            .toList())
                                                    : 0,
                                                widget.roomPricePerNight!,
                                                _model.roomsCount!),
                                            formatType: FormatType.custom,
                                            format: '0.00',
                                            locale: '',
                                          ),
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
                                  RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'INR. ',
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: formatNumber(
                                            functions.getPricePercentage(
                                                functions.getPrice(
                                                    functions.daysCalculation(
                                                                FFAppState()
                                                                    .selectedDateRange
                                                                    .toList()) >
                                                            0
                                                        ? functions.daysCalculation(
                                                            FFAppState()
                                                                .selectedDateRange
                                                                .toList())
                                                        : 0,
                                                    widget.roomPricePerNight!,
                                                    _model.roomsCount!),
                                                widget.taxPercent!.toDouble()),
                                            formatType: FormatType.custom,
                                            format: '0.00',
                                            locale: '',
                                          ),
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
                                    RichText(
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
                                            text: formatNumber(
                                              functions.getPriceTotal(
                                                  functions.getPrice(
                                                      functions.daysCalculation(
                                                                  FFAppState()
                                                                      .selectedDateRange
                                                                      .toList()) >
                                                              0
                                                          ? functions.daysCalculation(
                                                              FFAppState()
                                                                  .selectedDateRange
                                                                  .toList())
                                                          : 0,
                                                      widget.roomPricePerNight!,
                                                      _model.roomsCount!),
                                                  functions.getPricePercentage(
                                                      functions.getPrice(
                                                          functions.daysCalculation(FFAppState().selectedDateRange.toList()) > 0
                                                              ? functions.daysCalculation(
                                                                  FFAppState()
                                                                      .selectedDateRange
                                                                      .toList())
                                                              : 0,
                                                          widget
                                                              .roomPricePerNight!,
                                                          _model.roomsCount!),
                                                      widget.taxPercent!
                                                          .toDouble())),
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
                      ),
                    if (_model.isEntirePropertyBooking == true)
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
                                            'You booked entire property',
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: functions.daysCalculation(
                                                      FFAppState()
                                                          .selectedDateRange
                                                          .toList()) >
                                                  0
                                              ? functions
                                                  .daysCalculation(FFAppState()
                                                      .selectedDateRange
                                                      .toList())
                                                  .toString()
                                              : '0',
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: ' nights',
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                            color: FlutterFlowTheme.of(context)
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
                                            widget.entirePropertyPricePerNight,
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
                                RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
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
                                        text: formatNumber(
                                          functions.getPrice(
                                              functions.daysCalculation(
                                                          FFAppState()
                                                              .selectedDateRange
                                                              .toList()) >
                                                      0
                                                  ? functions.daysCalculation(
                                                      FFAppState()
                                                          .selectedDateRange
                                                          .toList())
                                                  : 0,
                                              widget
                                                  .entirePropertyPricePerNight!,
                                              _model.roomsCount!),
                                          formatType: FormatType.custom,
                                          format: '0.00',
                                          locale: '',
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          fontWeight: FontWeight.w500,
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
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 8.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
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
                                RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'INR. ',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: formatNumber(
                                          functions.getPricePercentage(
                                              functions.getPrice(
                                                  functions.daysCalculation(
                                                              FFAppState()
                                                                  .selectedDateRange
                                                                  .toList()) >
                                                          0
                                                      ? functions.daysCalculation(
                                                          FFAppState()
                                                              .selectedDateRange
                                                              .toList())
                                                      : 0,
                                                  widget
                                                      .entirePropertyPricePerNight!,
                                                  _model.roomsCount!),
                                              widget.taxPercent!.toDouble()),
                                          formatType: FormatType.custom,
                                          format: '0.00',
                                          locale: '',
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.0,
                                        ),
                                      )
                                    ],
                                    style: TextStyle(),
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
                                  RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Total: ',
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                            color: FlutterFlowTheme.of(context)
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
                                          text: formatNumber(
                                            functions.getPriceTotal(
                                                functions.getPrice(
                                                    functions.daysCalculation(
                                                                FFAppState()
                                                                    .selectedDateRange
                                                                    .toList()) >
                                                            0
                                                        ? functions.daysCalculation(
                                                            FFAppState()
                                                                .selectedDateRange
                                                                .toList())
                                                        : 0,
                                                    widget
                                                        .entirePropertyPricePerNight!,
                                                    _model.roomsCount!),
                                                functions.getPricePercentage(
                                                    functions.getPrice(
                                                        functions.daysCalculation(FFAppState()
                                                                    .selectedDateRange
                                                                    .toList()) >
                                                                0
                                                            ? functions.daysCalculation(
                                                                FFAppState().selectedDateRange.toList())
                                                            : 0,
                                                        widget.entirePropertyPricePerNight!,
                                                        _model.roomsCount!),
                                                    widget.taxPercent!.toDouble())),
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (widget.tripsTab == 'upcoming')
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 14.0, 10.0, 14.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Modify Booking',
                            options: FFButtonOptions(
                              width: 150.0,
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
                    if (widget.tripsTab == 'completed')
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 14.0, 0.0, 14.0),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Book Again',
                            options: FFButtonOptions(
                              width: 150.0,
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
