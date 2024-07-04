import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reserve_card_model.dart';
export 'reserve_card_model.dart';

class ReserveCardWidget extends StatefulWidget {
  const ReserveCardWidget({
    super.key,
    required this.priceValue,
    required this.noOfGuests,
    required this.selectedFromToDates,
    required this.taxPercent,
    required this.bedsCount,
    required this.bathroomsCount,
    required this.bedroomsCount,
    required this.locality,
    required this.city,
    required this.title,
    required this.articleid,
    required this.propertyId,
    required this.propertyType,
    required this.isModifyBooking,
  });

  final double? priceValue;
  final int? noOfGuests;
  final List<DateTime>? selectedFromToDates;
  final int? taxPercent;
  final int? bedsCount;
  final int? bathroomsCount;
  final int? bedroomsCount;
  final String? locality;
  final String? city;
  final String? title;
  final String? articleid;
  final int? propertyId;
  final String? propertyType;
  final bool? isModifyBooking;

  @override
  State<ReserveCardWidget> createState() => _ReserveCardWidgetState();
}

class _ReserveCardWidgetState extends State<ReserveCardWidget> {
  late ReserveCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReserveCardModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.guestsCount = widget.noOfGuests;
      _model.roomsCount = widget.bedroomsCount;
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

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 20.0, 12.0, 0.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.23,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                2.0,
              ),
              spreadRadius: 0.0,
            )
          ],
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
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
                      fontSize: 18.0,
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
                            text: valueOrDefault<String>(
                              formatNumber(
                                widget.priceValue,
                                formatType: FormatType.custom,
                                format: '0.00',
                                locale: '',
                              ),
                              '0',
                            ),
                            style: GoogleFonts.getFont(
                              'Work Sans',
                              color: Color(0xFFD70000),
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          ),
                          TextSpan(
                            text: ' / Night',
                            style: GoogleFonts.getFont(
                              'Work Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
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
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBgOpacity,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: Icon(
                                    Icons.date_range_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 90.0,
                                  child: VerticalDivider(
                                    width: 1.0,
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 10.0),
                                            child: Text(
                                              widget.selectedFromToDates!
                                                          .length >
                                                      0
                                                  ? dateTimeFormat(
                                                      'dd MMM yyyy',
                                                      widget
                                                          .selectedFromToDates!
                                                          .first)
                                                  : '--',
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
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '12:00 PM',
                                                    style: GoogleFonts.getFont(
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
                                                ),
                                              ],
                                            ),
                                        ],
                                      ),
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 10.0),
                                            child: Text(
                                              widget.selectedFromToDates!
                                                          .length >
                                                      0
                                                  ? dateTimeFormat(
                                                      'dd MMM yyyy',
                                                      widget
                                                          .selectedFromToDates!
                                                          .last)
                                                  : '--',
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
                                          if (responsiveVisibility(
                                            context: context,
                                            phone: false,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
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
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          8.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    '11:00 AM',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          fontSize: 16.0,
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
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBgOpacity,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 0.0, 10.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 0.0, 8.0, 10.0),
                                child: Text(
                                  'No of guests and rooms',
                                  style: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context)
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
                                  16.0, 12.0, 16.0, 2.0),
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
                                      fontSize: 14.0,
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
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBgOpacity,
                                        disabledColor: Color(0x32878787),
                                        icon: Icon(
                                          Icons.remove,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 20.0,
                                        ),
                                        onPressed: (_model.guestsCount
                                                    .toString() ==
                                                '1')
                                            ? null
                                            : () async {
                                                _model.guestsCount =
                                                    _model.guestsCount! + -1;
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                _model.guestsCount?.toString(),
                                                '0',
                                              ),
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBgOpacity,
                                        disabledColor: Color(0x32878787),
                                        icon: Icon(
                                          Icons.add,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 20.0,
                                        ),
                                        onPressed: (_model.guestsCount! >=
                                                widget.noOfGuests!)
                                            ? null
                                            : () async {
                                                _model.guestsCount =
                                                    _model.guestsCount! + 1;
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
                                  16.0, 12.0, 16.0, 2.0),
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
                                      fontSize: 14.0,
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
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBgOpacity,
                                        disabledColor: Color(0x32878787),
                                        icon: Icon(
                                          Icons.remove,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 20.0,
                                        ),
                                        onPressed: (_model.guestsCount
                                                    .toString() ==
                                                '1')
                                            ? null
                                            : () async {
                                                _model.guestsCount =
                                                    _model.guestsCount! + -1;
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
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Text(
                                              _model.roomsCount.toString(),
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
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
                                        fillColor: FlutterFlowTheme.of(context)
                                            .secondaryBgOpacity,
                                        disabledColor: Color(0x32878787),
                                        icon: Icon(
                                          Icons.add,
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 20.0,
                                        ),
                                        onPressed: (_model.guestsCount! >=
                                                widget.noOfGuests!)
                                            ? null
                                            : () async {
                                                _model.guestsCount =
                                                    _model.guestsCount! + 1;
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
                  Align(
                    alignment: AlignmentDirectional(-1.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 5.0),
                      child: Text(
                        'Fare Details',
                        style: GoogleFonts.getFont(
                          'Work Sans',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.w600,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: functions.daysCalculation(widget
                                              .selectedFromToDates
                                              ?.toList()) >
                                          0
                                      ? functions
                                          .daysCalculation(widget
                                              .selectedFromToDates
                                              ?.toList())
                                          .toString()
                                      : '0',
                                  style: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                  ),
                                ),
                                TextSpan(
                                  text: ' nights',
                                  style: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
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
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                TextSpan(
                                  text: valueOrDefault<String>(
                                    formatNumber(
                                      widget.priceValue,
                                      formatType: FormatType.custom,
                                      format: '0.00',
                                      locale: '',
                                    ),
                                    '0',
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
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextSpan(
                                text: formatNumber(
                                  functions.getPrice(
                                      widget.selectedFromToDates!.length > 0
                                          ? functions.daysCalculation(widget
                                              .selectedFromToDates
                                              ?.toList())
                                          : 0,
                                      widget.priceValue!,
                                      _model.roomsCount!),
                                  formatType: FormatType.custom,
                                  format: '0.00',
                                  locale: '',
                                ),
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Taxes  ',
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextSpan(
                                text: ' (Inc all taxes)',
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 12.0,
                                ),
                              )
                            ],
                            style: GoogleFonts.getFont(
                              'Work Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 12.0,
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextSpan(
                                text: formatNumber(
                                  functions.getPricePercentage(
                                      functions.getPrice(
                                          widget.selectedFromToDates!.length > 0
                                              ? functions.daysCalculation(widget
                                                  .selectedFromToDates
                                                  ?.toList())
                                              : 0,
                                          widget.priceValue!,
                                          _model.roomsCount!),
                                      widget.taxPercent!.toDouble()),
                                  formatType: FormatType.custom,
                                  format: '0.00',
                                  locale: '',
                                ),
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
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
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    lineStyle: DividerLineStyle.dashed,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Total: ',
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextSpan(
                                text: 'INR. ',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFFD70000),
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                              TextSpan(
                                text: formatNumber(
                                  functions.getPriceTotal(
                                      functions.getPrice(
                                          widget.selectedFromToDates!.length > 0
                                              ? functions.daysCalculation(widget
                                                  .selectedFromToDates
                                                  ?.toList())
                                              : 0,
                                          widget.priceValue!,
                                          _model.roomsCount!),
                                      functions.getPricePercentage(
                                          functions.getPrice(
                                              widget.selectedFromToDates!
                                                          .length >
                                                      0
                                                  ? functions.daysCalculation(
                                                      widget.selectedFromToDates
                                                          ?.toList())
                                                  : 0,
                                              widget.priceValue!,
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
                ],
              ),
            ),
            Divider(
              height: 1.0,
              thickness: 1.0,
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 24.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              if (FFAppState().accessToken != null &&
                                  FFAppState().accessToken != '') {
                                if ((widget.selectedFromToDates!.length > 0) &&
                                    (functions.daysCalculation(widget
                                            .selectedFromToDates
                                            ?.toList()) >
                                        0)) {
                                  FFAppState().bookingDetails =
                                      BookingDetailsStruct(
                                    nightPrice: functions.getPrice(
                                        widget.selectedFromToDates!.length > 0
                                            ? functions.daysCalculation(widget
                                                .selectedFromToDates
                                                ?.toList())
                                            : 0,
                                        widget.priceValue!,
                                        _model.roomsCount!),
                                    taxPrice: functions.getPricePercentage(
                                        functions.getPrice(
                                            widget.selectedFromToDates!.length >
                                                    0
                                                ? functions.daysCalculation(
                                                    widget.selectedFromToDates
                                                        ?.toList())
                                                : 0,
                                            widget.priceValue!,
                                            _model.roomsCount!),
                                        widget.taxPercent!.toDouble()),
                                    totalPrice: functions.getPriceTotal(
                                        functions.getPrice(
                                            widget.selectedFromToDates!.length > 0
                                                ? functions.daysCalculation(
                                                    widget.selectedFromToDates
                                                        ?.toList())
                                                : 0,
                                            widget.priceValue!,
                                            _model.roomsCount!),
                                        functions.getPricePercentage(
                                            functions.getPrice(
                                                widget.selectedFromToDates!.length >
                                                        0
                                                    ? functions.daysCalculation(
                                                        widget
                                                            .selectedFromToDates
                                                            ?.toList())
                                                    : 0,
                                                widget.priceValue!,
                                                _model.roomsCount!),
                                            widget.taxPercent!.toDouble())),
                                    noOfStayingDaysCount:
                                        widget.selectedFromToDates!.length > 0
                                            ? functions.daysCalculation(widget
                                                .selectedFromToDates
                                                ?.toList())
                                            : 0,
                                    propLocality: widget.locality,
                                    propCity: widget.city,
                                    propBasePrice: widget.priceValue,
                                    guestsCount: _model.guestsCount,
                                    taxPercentage: widget.taxPercent,
                                    checkInDate:
                                        widget.selectedFromToDates!.length > 0
                                            ? widget.selectedFromToDates?.first
                                            : getCurrentTimestamp,
                                    checkOutDate:
                                        widget.selectedFromToDates!.length > 0
                                            ? widget.selectedFromToDates?.last
                                            : getCurrentTimestamp,
                                    noOfBedrooms: widget.bedroomsCount,
                                    noOfBeds: widget.bedsCount,
                                    noOfBathrooms: widget.bathroomsCount,
                                    articleid: widget.articleid,
                                    propType: widget.propertyType,
                                    propId: widget.propertyId,
                                    propTitle: widget.title,
                                  );
                                  setState(() {});

                                  context.pushNamed('review_booking');

                                  return;
                                } else {
                                  await actions.toastAction(
                                    context,
                                    'info',
                                    FlutterFlowTheme.of(context).warning,
                                    'Select atleast one night to book the property.',
                                  );
                                  return;
                                }
                              } else {
                                await showDialog(
                                  barrierColor: Color(0xCC000D3E),
                                  barrierDismissible: false,
                                  context: context,
                                  builder: (dialogContext) {
                                    return Dialog(
                                      elevation: 0,
                                      insetPadding: EdgeInsets.zero,
                                      backgroundColor: Colors.transparent,
                                      alignment: AlignmentDirectional(0.0, 0.0)
                                          .resolve(Directionality.of(context)),
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.9,
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.3,
                                        child: PhoneNumLoginWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => setState(() {}));

                                return;
                              }
                            },
                            text: 'Continue',
                            options: FFButtonOptions(
                              width: double.infinity,
                              height: 36.0,
                              padding: EdgeInsets.all(0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: GoogleFonts.getFont(
                                'Work Sans',
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                fontWeight: FontWeight.normal,
                                fontSize: 14.0,
                              ),
                              elevation: 3.0,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1.0,
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
            ),
          ],
        ),
      ),
    );
  }
}
