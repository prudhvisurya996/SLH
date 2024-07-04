import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'booking_details_page_model.dart';
export 'booking_details_page_model.dart';

class BookingDetailsPageWidget extends StatefulWidget {
  const BookingDetailsPageWidget({super.key});

  @override
  State<BookingDetailsPageWidget> createState() =>
      _BookingDetailsPageWidgetState();
}

class _BookingDetailsPageWidgetState extends State<BookingDetailsPageWidget> {
  late BookingDetailsPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingDetailsPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.guestCount = FFAppState().BookingDetailsPage.guestCount;
      });
    });

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
              desktop: false,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
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
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Booking Details',
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
                Divider(
                  height: 1.0,
                  thickness: 1.0,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
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
                              FFAppState().BookingDetailsPage.title,
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 18.0,
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
                                      '${FFAppState().BookingDetailsPage.locality}- ${FFAppState().BookingDetailsPage.city}',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: Color(0xFF878787),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
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
                                  FFAppState().BookingDetailsPage.propTypes,
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
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      '₹${FFAppState().BookingDetailsPage.priceValue.toString()}/-',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14.0,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          7.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Night',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 16.0, 0.0, 0.0),
                              child: Container(
                                decoration: BoxDecoration(),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Text(
                                        '${_model.selectedFromToDates.length > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()).toString() : '0'} Nights at ${FFAppState().BookingDetailsPage.title}',
                                        style: FlutterFlowTheme.of(context)
                                            .titleLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Text(
                                        '${_model.selectedFromToDates.length > 0 ? dateTimeFormat('dd MMM yyyy', _model.selectedFromToDates.first) : 'Check-In Date'} - ${_model.selectedFromToDates.length > 0 ? dateTimeFormat('dd MMM yyyy', _model.selectedFromToDates.last) : 'Check-Out Date'}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 280.0,
                                      child: custom_widgets.SyncDatePicker(
                                        width: double.infinity,
                                        height: 280.0,
                                        isMultiView: false,
                                        initialSelectedDates:
                                            _model.selectedFromToDates,
                                        propAvailableFromDate: FFAppState()
                                            .BookingDetailsPage
                                            .availableFromDate,
                                        propBookedDates: FFAppState()
                                            .BookingDetailsPage
                                            .bookedDates,
                                        onChangeAction: () async {
                                          setState(() {
                                            _model.selectedFromToDates =
                                                FFAppState()
                                                    .selectedDateRange
                                                    .toList()
                                                    .cast<DateTime>();
                                          });
                                        },
                                      ),
                                    ),
                                  ].divide(SizedBox(height: 10.0)),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 8.0, 10.0),
                                          child: Text(
                                            'No of guests',
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
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
                                            16.0, 12.0, 16.0, 2.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Guests',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 20.0,
                                                  buttonSize: 36.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBgOpacity,
                                                  icon: Icon(
                                                    Icons.remove,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 20.0,
                                                  ),
                                                  onPressed:
                                                      (_model.guestCount == 1)
                                                          ? null
                                                          : () async {
                                                              setState(() {
                                                                _model.guestCount =
                                                                    _model.guestCount! +
                                                                        -1;
                                                              });
                                                            },
                                                ),
                                                Container(
                                                  width: 50.0,
                                                  height: 30.0,
                                                  decoration: BoxDecoration(),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          _model.guestCount
                                                              ?.toString(),
                                                          '0',
                                                        ),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                FlutterFlowIconButton(
                                                  borderColor:
                                                      Colors.transparent,
                                                  borderRadius: 20.0,
                                                  buttonSize: 36.0,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .secondaryBgOpacity,
                                                  icon: Icon(
                                                    Icons.add,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    size: 20.0,
                                                  ),
                                                  onPressed: (_model
                                                              .guestCount! >=
                                                          FFAppState()
                                                              .BookingDetailsPage
                                                              .guestCount)
                                                      ? null
                                                      : () async {
                                                          setState(() {
                                                            _model.guestCount =
                                                                _model.guestCount! +
                                                                    1;
                                                          });
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
                            Column(
                              mainAxisSize: MainAxisSize.max,
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
                                        fontSize: 14.0,
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
                                      0.0, 10.0, 0.0, 10.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: _model.selectedFromToDates
                                                            .length >
                                                        0
                                                    ? functions
                                                        .daysCalculation(_model
                                                            .selectedFromToDates
                                                            .toList())
                                                        .toString()
                                                    : '0',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: ' nights',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
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
                                                          fontSize: 14.0,
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
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: formatNumber(
                                                  FFAppState()
                                                      .BookingDetailsPage
                                                      .priceValue,
                                                  formatType: FormatType.custom,
                                                  format: '0.00',
                                                  locale: '',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 14.0,
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
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: formatNumber(
                                                functions.getPrice(
                                                    _model.selectedFromToDates
                                                                .length >
                                                            0
                                                        ? functions
                                                            .daysCalculation(_model
                                                                .selectedFromToDates
                                                                .toList())
                                                        : 0,
                                                    FFAppState()
                                                        .BookingDetailsPage
                                                        .priceValue),
                                                formatType: FormatType.custom,
                                                format: '0.00',
                                                locale: '',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14.0,
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
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 10.0),
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
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: ' (Inc all taxes)',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14.0,
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
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: formatNumber(
                                                functions.getPricePercentage(
                                                    valueOrDefault<double>(
                                                      functions.getPrice(
                                                          _model.selectedFromToDates
                                                                      .length >
                                                                  0
                                                              ? functions
                                                                  .daysCalculation(_model
                                                                      .selectedFromToDates
                                                                      .toList())
                                                              : 0,
                                                          FFAppState()
                                                              .BookingDetailsPage
                                                              .priceValue),
                                                      0.0,
                                                    ),
                                                    FFAppState()
                                                        .BookingDetailsPage
                                                        .taxPercent),
                                                formatType: FormatType.custom,
                                                format: '0.00',
                                                locale: '',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14.0,
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
                                      RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Total: ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: '₹',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFD70000),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: formatNumber(
                                                functions.getPriceTotal(
                                                    valueOrDefault<double>(
                                                      functions.getPrice(
                                                          _model.selectedFromToDates
                                                                      .length >
                                                                  0
                                                              ? functions
                                                                  .daysCalculation(_model
                                                                      .selectedFromToDates
                                                                      .toList())
                                                              : 0,
                                                          FFAppState()
                                                              .BookingDetailsPage
                                                              .priceValue),
                                                      0.0,
                                                    ),
                                                    functions.getPricePercentage(
                                                        functions.getPrice(
                                                            _model.selectedFromToDates
                                                                        .length >
                                                                    0
                                                                ? functions
                                                                    .daysCalculation(_model
                                                                        .selectedFromToDates
                                                                        .toList())
                                                                : 0,
                                                            FFAppState()
                                                                .BookingDetailsPage
                                                                .priceValue),
                                                        FFAppState()
                                                            .BookingDetailsPage
                                                            .taxPercent)),
                                                formatType: FormatType.custom,
                                                format: '0.00',
                                                locale: '',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color:
                                                            Color(0xFFD70000),
                                                        fontSize: 14.0,
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
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
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
                                if ((_model.selectedFromToDates.length > 0) &&
                                    (functions.daysCalculation(_model
                                            .selectedFromToDates
                                            .toList()) >
                                        0)) {
                                  setState(() {
                                    FFAppState().bookingDetails =
                                        BookingDetailsStruct(
                                      propTitle:
                                          FFAppState().BookingDetailsPage.title,
                                      propLocality: FFAppState()
                                          .BookingDetailsPage
                                          .locality,
                                      propCity:
                                          FFAppState().BookingDetailsPage.city,
                                      propType: FFAppState()
                                          .BookingDetailsPage
                                          .propTypes,
                                      propBasePrice: FFAppState()
                                          .BookingDetailsPage
                                          .priceValue,
                                      guestsCount: _model.guestCount,
                                      taxPercentage: FFAppState()
                                          .BookingDetailsPage
                                          .taxPercent,
                                      checkInDate:
                                          FFAppState().selectedDateRange.first,
                                      checkOutDate:
                                          FFAppState().selectedDateRange.last,
                                      noOfBedrooms: FFAppState()
                                          .BookingDetailsPage
                                          .bedRoomCount,
                                      noOfBeds: FFAppState()
                                          .BookingDetailsPage
                                          .bedCount,
                                      noOfBathrooms: FFAppState()
                                          .BookingDetailsPage
                                          .bathRoomCount,
                                      noOfStayingDaysCount:
                                          _model.selectedFromToDates.length > 0
                                              ? functions.daysCalculation(_model
                                                  .selectedFromToDates
                                                  .toList())
                                              : 0,
                                      articleid: FFAppState()
                                          .BookingDetailsPage
                                          .articleId,
                                      nightPrice: functions.getPrice(
                                          _model.selectedFromToDates.length > 0
                                              ? functions.daysCalculation(_model
                                                  .selectedFromToDates
                                                  .toList())
                                              : 0,
                                          FFAppState()
                                              .BookingDetailsPage
                                              .priceValue),
                                      taxPrice: functions.getPricePercentage(
                                          functions.getPrice(
                                              _model.selectedFromToDates
                                                          .length >
                                                      0
                                                  ? functions.daysCalculation(
                                                      _model.selectedFromToDates
                                                          .toList())
                                                  : 0,
                                              FFAppState()
                                                  .BookingDetailsPage
                                                  .priceValue),
                                          FFAppState()
                                              .BookingDetailsPage
                                              .taxPercent),
                                      totalPrice: functions.getPriceTotal(
                                          functions.getPrice(
                                              _model.selectedFromToDates.length > 0
                                                  ? functions.daysCalculation(
                                                      _model.selectedFromToDates
                                                          .toList())
                                                  : 0,
                                              FFAppState()
                                                  .BookingDetailsPage
                                                  .priceValue),
                                          functions.getPricePercentage(
                                              functions.getPrice(
                                                  _model.selectedFromToDates.length > 0
                                                      ? functions.daysCalculation(
                                                          _model
                                                              .selectedFromToDates
                                                              .toList())
                                                      : 0,
                                                  FFAppState()
                                                      .BookingDetailsPage
                                                      .priceValue),
                                              FFAppState().BookingDetailsPage.taxPercent)),
                                      propId: FFAppState()
                                          .BookingDetailsPage
                                          .propId,
                                    );
                                  });

                                  context.pushNamed(
                                    'ReviewBookingPage',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                      ),
                                    },
                                  );

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
                              },
                              text: 'Continue',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
