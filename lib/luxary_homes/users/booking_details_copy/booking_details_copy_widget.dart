import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/users/payment_confirmed/payment_confirmed_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'booking_details_copy_model.dart';
export 'booking_details_copy_model.dart';

class BookingDetailsCopyWidget extends StatefulWidget {
  const BookingDetailsCopyWidget({super.key});

  @override
  State<BookingDetailsCopyWidget> createState() =>
      _BookingDetailsCopyWidgetState();
}

class _BookingDetailsCopyWidgetState extends State<BookingDetailsCopyWidget> {
  late BookingDetailsCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingDetailsCopyModel());

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
                  model: _model.newTopBarModel,
                  updateCallback: () => setState(() {}),
                  child: NewTopBarWidget(
                    showSearchFilter: false,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 58.0,
                          decoration: BoxDecoration(),
                        ),
                        Expanded(
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
                                      'Property booking',
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
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 24.0, 0.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF8F8F8),
                                      borderRadius: BorderRadius.circular(14.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          30.0, 0.0, 30.0, 16.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 30.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                24.0, 0.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    30.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
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
                                                                'Property Availability Details',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      20.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      -1.0),
                                                              child: Text(
                                                                '${_model.selectedFromToDates.length > 0 ? dateTimeFormat('dd MMM yyyy', _model.selectedFromToDates.first) : 'Check-In Date'} - ${_model.selectedFromToDates.length > 0 ? dateTimeFormat('dd MMM yyyy', _model.selectedFromToDates.last) : 'Check-Out Date'}',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: MediaQuery
                                                                          .sizeOf(
                                                                              context)
                                                                      .width *
                                                                  0.5,
                                                              height: 280.0,
                                                              child: custom_widgets
                                                                  .SyncDatePicker(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.5,
                                                                height: 280.0,
                                                                isMultiView:
                                                                    MediaQuery.sizeOf(context).width >
                                                                            799.0
                                                                        ? true
                                                                        : false,
                                                                initialSelectedDates:
                                                                    FFAppState()
                                                                        .selectedDateRange,
                                                                propBookedDates:
                                                                    FFAppState()
                                                                        .BookingDetailsPage
                                                                        .bookedDates,
                                                                isModifyAllowed:
                                                                    false,
                                                                partiallyBookedDates:
                                                                    FFAppState()
                                                                        .BookingDetailsPage
                                                                        .partialBookedDates,
                                                                availableFromDate:
                                                                    functions.convertStringToDatetime(FFAppState()
                                                                        .BookingDetailsPage
                                                                        .availableFromDate),
                                                                onChangeAction:
                                                                    () async {
                                                                  FFAppState()
                                                                          .selectedDateRange =
                                                                      FFAppState()
                                                                          .selectedDateRange
                                                                          .toList()
                                                                          .cast<
                                                                              DateTime>();
                                                                  FFAppState()
                                                                      .update(
                                                                          () {});
                                                                },
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 10.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Flexible(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        ClipRRect(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          child: Image.network(
                                                            'https://picsum.photos/seed/600/600',
                                                            width: 450.0,
                                                            height: 150.0,
                                                            fit: BoxFit.cover,
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
                                                          child: Container(
                                                            width: 450.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFE8E7FF),
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
                                                                          12.0,
                                                                          0.0,
                                                                          12.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            30.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'No of Rooms and Guests',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontWeight:
                                                                            FontWeight.w500,
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
                                                                          30.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          RichText(
                                                                        textScaler:
                                                                            MediaQuery.of(context).textScaler,
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: 'Note: ',
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: Color(0xFFD70000),
                                                                                fontWeight: FontWeight.w600,
                                                                                fontSize: 16.0,
                                                                              ),
                                                                            ),
                                                                            TextSpan(
                                                                              text: 'You can choose only 2 guest per a room.',
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontSize:
                                                                                16.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Divider(
                                                                    height: 1.0,
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  if (FFAppState()
                                                                          .BookingDetailsPage
                                                                          .sharedBookingAllowed ==
                                                                      true)
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          30.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                        children: [
                                                                          Theme(
                                                                            data:
                                                                                ThemeData(
                                                                              checkboxTheme: CheckboxThemeData(
                                                                                visualDensity: VisualDensity.compact,
                                                                                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(4.0),
                                                                                ),
                                                                              ),
                                                                              unselectedWidgetColor: FlutterFlowTheme.of(context).secondaryText,
                                                                            ),
                                                                            child:
                                                                                Checkbox(
                                                                              value: _model.checkboxValue ??= false,
                                                                              onChanged: (newValue) async {
                                                                                setState(() => _model.checkboxValue = newValue!);
                                                                                if (newValue!) {
                                                                                  FFAppState().updatePropertyBookingDetailsStruct(
                                                                                    (e) => e..isEntirePropertyBooking = true,
                                                                                  );
                                                                                  setState(() {});
                                                                                } else {
                                                                                  FFAppState().updatePropertyBookingDetailsStruct(
                                                                                    (e) => e..isEntirePropertyBooking = false,
                                                                                  );
                                                                                  setState(() {});
                                                                                }
                                                                              },
                                                                              side: BorderSide(
                                                                                width: 2,
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                              ),
                                                                              activeColor: FlutterFlowTheme.of(context).primary,
                                                                              checkColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'I would like to book entire property',
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: Color(0xFF5246ED),
                                                                                fontSize: 16.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            30.0,
                                                                            8.0,
                                                                            30.0,
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
                                                                          FFAppState().BookingDetailsPage.bedRoomCount > 1
                                                                              ? 'Rooms'
                                                                              : 'Room',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                16.0,
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            FlutterFlowIconButton(
                                                                              borderColor: Colors.transparent,
                                                                              borderRadius: 20.0,
                                                                              buttonSize: 36.0,
                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBgOpacity,
                                                                              disabledColor: Color(0x32878787),
                                                                              icon: Icon(
                                                                                Icons.remove,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 20.0,
                                                                              ),
                                                                              onPressed: ((FFAppState().propertyBookingDetails.isEntirePropertyBooking == true) || (FFAppState().propertyBookingDetails.noOfBedrooms == 1))
                                                                                  ? null
                                                                                  : () async {
                                                                                      FFAppState().updatePropertyBookingDetailsStruct(
                                                                                        (e) => e..incrementNoOfBedrooms(-1),
                                                                                      );
                                                                                      setState(() {});
                                                                                    },
                                                                            ),
                                                                            Container(
                                                                              width: 50.0,
                                                                              height: 30.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: Align(
                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                  child: Text(
                                                                                    FFAppState().propertyBookingDetails.noOfBedrooms.toString(),
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Work Sans',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
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
                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBgOpacity,
                                                                              disabledColor: Color(0x32878787),
                                                                              icon: Icon(
                                                                                Icons.add,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 20.0,
                                                                              ),
                                                                              onPressed: ((FFAppState().propertyBookingDetails.noOfBedrooms == FFAppState().BookingDetailsPage.bedRoomCount) || (FFAppState().propertyBookingDetails.noOfBedrooms == FFAppState().BookingDetailsPage.partiallyAvailableRooms))
                                                                                  ? null
                                                                                  : () async {
                                                                                      FFAppState().updatePropertyBookingDetailsStruct(
                                                                                        (e) => e..incrementNoOfBedrooms(1),
                                                                                      );
                                                                                      setState(() {});
                                                                                    },
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            30.0,
                                                                            8.0,
                                                                            30.0,
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
                                                                          FFAppState().BookingDetailsPage.guestCount > 1
                                                                              ? 'Guests'
                                                                              : 'Guest',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                16.0,
                                                                          ),
                                                                        ),
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            FlutterFlowIconButton(
                                                                              borderColor: Colors.transparent,
                                                                              borderRadius: 20.0,
                                                                              buttonSize: 36.0,
                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBgOpacity,
                                                                              disabledColor: Color(0x32878787),
                                                                              icon: Icon(
                                                                                Icons.remove,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 20.0,
                                                                              ),
                                                                              onPressed: (FFAppState().BookingDetailsPage.guestCount == 1)
                                                                                  ? null
                                                                                  : () async {
                                                                                      FFAppState().updateBookingDetailsPageStruct(
                                                                                        (e) => e..incrementGuestCount(-1),
                                                                                      );
                                                                                      setState(() {});
                                                                                    },
                                                                            ),
                                                                            Container(
                                                                              width: 50.0,
                                                                              height: 30.0,
                                                                              decoration: BoxDecoration(),
                                                                              child: Align(
                                                                                alignment: AlignmentDirectional(0.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                  child: Text(
                                                                                    FFAppState().BookingDetailsPage.sharedBookingAllowed == true ? FFAppState().BookingDetailsPage.guestsPerRoom.toString() : FFAppState().BookingDetailsPage.guestCount.toString(),
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Work Sans',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
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
                                                                              fillColor: FlutterFlowTheme.of(context).secondaryBgOpacity,
                                                                              disabledColor: Color(0x32878787),
                                                                              icon: Icon(
                                                                                Icons.add,
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 20.0,
                                                                              ),
                                                                              onPressed: (FFAppState().BookingDetailsPage.guestCount == (FFAppState().BookingDetailsPage.bedRoomCount * 2))
                                                                                  ? null
                                                                                  : () async {
                                                                                      FFAppState().updateBookingDetailsPageStruct(
                                                                                        (e) => e..incrementGuestCount(1),
                                                                                      );
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
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Text(
                                              'Review your booking',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22.0,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: Text(
                                                FFAppState()
                                                    .BookingDetailsPage
                                                    .title,
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Text(
                                                'Flat no:-201, Sundarban road, Katedan, Secundrebad, Telangana,500077, India.',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 24.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 6.0,
                                                        height: 190.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    14.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    14.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0.0),
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.48,
                                                        height: 190.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    14.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    14.0),
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          30.0,
                                                                          0.0,
                                                                          30.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            12.0),
                                                                    child: Text(
                                                                      'Check In - Check out Date',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            18.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        240.0,
                                                                    child:
                                                                        Divider(
                                                                      height:
                                                                          1.0,
                                                                      thickness:
                                                                          1.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            12.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              25.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                    child: Text(
                                                                                      'Check In',
                                                                                      style: GoogleFonts.getFont(
                                                                                        'Work Sans',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontSize: 12.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(0.0),
                                                                                    child: SvgPicture.asset(
                                                                                      'assets/images/Frame_1707478343.svg',
                                                                                      width: 21.0,
                                                                                      height: 24.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 10.0),
                                                                                child: Text(
                                                                                  valueOrDefault<String>(
                                                                                    dateTimeFormat('dd MMM yyyy', FFAppState().selectedDateRange.first),
                                                                                    'dd MM yyyy',
                                                                                  ),
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 14.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  FaIcon(
                                                                                    FontAwesomeIcons.clock,
                                                                                    color: Color(0xFF5642ED),
                                                                                    size: 16.0,
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      '12:00 PM',
                                                                                      style: GoogleFonts.getFont(
                                                                                        'Work Sans',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontSize: 12.0,
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
                                                                              5.0,
                                                                              0.0,
                                                                              5.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '--',
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontWeight: FontWeight.w600,
                                                                              fontSize: 18.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              25.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                    child: Text(
                                                                                      'Check Out',
                                                                                      style: GoogleFonts.getFont(
                                                                                        'Work Sans',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontSize: 12.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(0.0),
                                                                                    child: Image.asset(
                                                                                      'assets/images/Frame_1707478466.png',
                                                                                      width: 21.0,
                                                                                      height: 24.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 10.0),
                                                                                child: Text(
                                                                                  valueOrDefault<String>(
                                                                                    dateTimeFormat('dd MMM yyyy', FFAppState().selectedDateRange.last),
                                                                                    'dd MM yyyy',
                                                                                  ),
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 14.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  FaIcon(
                                                                                    FontAwesomeIcons.clock,
                                                                                    color: Color(0xFF5642ED),
                                                                                    size: 16.0,
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      '11:00 AM',
                                                                                      style: GoogleFonts.getFont(
                                                                                        'Work Sans',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontSize: 12.0,
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
                                                                ],
                                                              ),
                                                            ),
                                                            StyledVerticalDivider(
                                                              width: 3.0,
                                                              thickness: 1.0,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .alternate,
                                                              lineStyle:
                                                                  DividerLineStyle
                                                                      .dashed,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          30.0,
                                                                          0.0,
                                                                          10.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            12.0),
                                                                    child: Text(
                                                                      'No of Rooms and Guests',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            18.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width:
                                                                        240.0,
                                                                    child:
                                                                        Divider(
                                                                      height:
                                                                          1.0,
                                                                      thickness:
                                                                          1.0,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .alternate,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            12.0,
                                                                            0.0,
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
                                                                          FFAppState().BookingDetailsPage.bedRoomCount > 1
                                                                              ? 'Rooms'
                                                                              : 'Room',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontSize:
                                                                                14.0,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              26.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            '00',
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontWeight: FontWeight.w500,
                                                                              fontSize: 14.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Text(
                                                                            FFAppState().BookingDetailsPage.guestCount > 1
                                                                                ? 'Guests'
                                                                                : 'Guest',
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontWeight: FontWeight.w500,
                                                                              fontSize: 14.0,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                26.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              '00',
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14.0,
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
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  if ((_model.selectedFromToDates
                                                              .length >
                                                          0) &&
                                                      (functions.daysCalculation(
                                                              _model
                                                                  .selectedFromToDates
                                                                  .toList()) >
                                                          0))
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width: 6.0,
                                                          height: 190.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      14.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      14.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      0.0),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  0.35,
                                                          height: 190.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          14.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      0.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      14.0),
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        16.0,
                                                                        24.0,
                                                                        16.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            -1.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Fare Details',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontSize:
                                                                                18.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      if (FFAppState()
                                                                              .propertyBookingDetails
                                                                              .isEntirePropertyBooking ==
                                                                          true)
                                                                        Flexible(
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            children: [
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: SvgPicture.asset(
                                                                                  'assets/images/info-circle.svg',
                                                                                  width: 24.0,
                                                                                  height: 24.0,
                                                                                  fit: BoxFit.contain,
                                                                                ),
                                                                              ),
                                                                              Flexible(
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'You are booking entire property',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Work Sans',
                                                                                      color: Color(0xFFD70000),
                                                                                      fontWeight: FontWeight.w600,
                                                                                      fontSize: 16.0,
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
                                                                Divider(
                                                                  height: 1.0,
                                                                  thickness:
                                                                      1.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
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
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              1.0),
                                                                          child:
                                                                              RichText(
                                                                            textScaler:
                                                                                MediaQuery.of(context).textScaler,
                                                                            text:
                                                                                TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: _model.selectedFromToDates.length > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()).toString() : '0',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontSize: 14.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: ' nights',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontSize: 14.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: ' x ',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 14.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: 'INR. ',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 14.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: formatNumber(
                                                                                    FFAppState().propertyBookingDetails.noOfBedrooms.toDouble() * FFAppState().BookingDetailsPage.pricePerRoom,
                                                                                    formatType: FormatType.custom,
                                                                                    format: '0.00',
                                                                                    locale: '',
                                                                                  ),
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 14.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Work Sans',
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      RichText(
                                                                        textScaler:
                                                                            MediaQuery.of(context).textScaler,
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: 'INR. ',
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontWeight: FontWeight.normal,
                                                                                fontSize: 16.0,
                                                                              ),
                                                                            ),
                                                                            TextSpan(
                                                                              text: formatNumber(
                                                                                (_model.selectedFromToDates.length > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 0).toDouble() *
                                                                                    valueOrDefault<double>(
                                                                                      FFAppState().propertyBookingDetails.noOfBedrooms * FFAppState().BookingDetailsPage.pricePerRoom,
                                                                                      0.00,
                                                                                    ),
                                                                                formatType: FormatType.custom,
                                                                                format: '0.00',
                                                                                locale: '',
                                                                              ),
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
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
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
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
                                                                            .spaceBetween,
                                                                    children: [
                                                                      RichText(
                                                                        textScaler:
                                                                            MediaQuery.of(context).textScaler,
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: 'Taxes',
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 16.0,
                                                                              ),
                                                                            ),
                                                                            TextSpan(
                                                                              text: ' (Inc all taxes)',
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).secondaryText,
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 12.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Work Sans',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                      RichText(
                                                                        textScaler:
                                                                            MediaQuery.of(context).textScaler,
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: 'INR. ',
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 16.0,
                                                                              ),
                                                                            ),
                                                                            TextSpan(
                                                                              text: formatNumber(
                                                                                functions.getPricePercentage(
                                                                                    (_model.selectedFromToDates.length > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 0).toDouble() *
                                                                                        valueOrDefault<double>(
                                                                                          FFAppState().propertyBookingDetails.noOfBedrooms * FFAppState().BookingDetailsPage.pricePerRoom,
                                                                                          0.00,
                                                                                        ),
                                                                                    FFAppState().BookingDetailsPage.taxPercent.toDouble()),
                                                                                formatType: FormatType.custom,
                                                                                format: '0.00',
                                                                                locale: '',
                                                                              ),
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
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
                                                                StyledDivider(
                                                                  height: 1.0,
                                                                  thickness:
                                                                      1.0,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  lineStyle:
                                                                      DividerLineStyle
                                                                          .dashed,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
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
                                                                      RichText(
                                                                        textScaler:
                                                                            MediaQuery.of(context).textScaler,
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: 'Total: ',
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontWeight: FontWeight.w600,
                                                                                fontSize: 16.0,
                                                                              ),
                                                                            ),
                                                                            TextSpan(
                                                                              text: 'INR. ',
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: Color(0xFFD70000),
                                                                                fontSize: 16.0,
                                                                              ),
                                                                            ),
                                                                            TextSpan(
                                                                              text: formatNumber(
                                                                                functions.getPriceTotal(
                                                                                    (_model.selectedFromToDates.length > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 0).toDouble() *
                                                                                        valueOrDefault<double>(
                                                                                          FFAppState().propertyBookingDetails.noOfBedrooms * FFAppState().BookingDetailsPage.pricePerRoom,
                                                                                          0.00,
                                                                                        ),
                                                                                    functions.getPricePercentage(
                                                                                        (_model.selectedFromToDates.length > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 0).toDouble() *
                                                                                            valueOrDefault<double>(
                                                                                              FFAppState().propertyBookingDetails.noOfBedrooms * FFAppState().BookingDetailsPage.pricePerRoom,
                                                                                              0.00,
                                                                                            ),
                                                                                        FFAppState().BookingDetailsPage.taxPercent.toDouble())),
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
                                                        ),
                                                      ],
                                                    ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 16.0),
                                              child: Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFE8E7FF),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(24.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Flexible(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            RichText(
                                                              textScaler:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text: '*',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: Color(
                                                                          0xFFD70000),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        ' Important information for check-in',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontSize:
                                                                          18.0,
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
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          12.0,
                                                                          0.0,
                                                                          6.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 5.0,
                                                                    height: 5.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .black,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            6.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Passport, Aadhaar & Govt Id are accepted as ID Proofs.',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            16.0,
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
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    width: 5.0,
                                                                    height: 5.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .black,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            6.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Local Id proofs are Not allowed.',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: Colors
                                                                            .black,
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
                                                      InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          _model.cancellationPolicy =
                                                              true;
                                                          setState(() {});
                                                        },
                                                        child: Text(
                                                          'Cancellation & Hotel Booking Policies',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Work Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16.0,
                                                            decoration:
                                                                TextDecoration
                                                                    .underline,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            if (_model.cancellationPolicy ==
                                                true)
                                              Container(
                                                width: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFE8E7FF),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(24.0, 16.0,
                                                          16.0, 16.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Cancellation policy',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 20.0,
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Flexible(
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          24.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '* Before check-in Date, 11:59 AM',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: Color(
                                                                          0xFF80BB01),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          16.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Full refundable',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: Color(
                                                                          0xFF80BB01),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          16.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Full Refundable (You will get 100% Refund).',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          14.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          80.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            24.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '* After check-in Date, 12:00 PM',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: Color(
                                                                            0xFFD70000),
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Cancellation not possible ',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: Color(
                                                                            0xFFD70000),
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Non cancellable, no Refunding.',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: Colors
                                                                            .black,
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
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;
                            if ((_model.selectedFromToDates.length > 0) &&
                                (functions.daysCalculation(
                                        _model.selectedFromToDates.toList()) >
                                    0)) {
                              _model.payNowRefreshTokenWeb =
                                  await RefreshTokenAPICall.call(
                                clientId: FFAppConstants.clientId,
                                clientSecret: FFAppConstants.clientSecret,
                                grantType: FFAppConstants.refreshGrantType,
                                refreshToken: FFAppState().refreshToken,
                              );

                              _shouldSetState = true;
                              if ((_model.payNowRefreshTokenWeb?.succeeded ??
                                  true)) {
                                FFAppState().accessToken = getJsonField(
                                  (_model.payNowRefreshTokenWeb?.jsonBody ??
                                      ''),
                                  r'''$.access_token''',
                                ).toString();
                                FFAppState().refreshToken = getJsonField(
                                  (_model.payNowRefreshTokenWeb?.jsonBody ??
                                      ''),
                                  r'''$.refresh_token''',
                                ).toString();
                                setState(() {});
                                _model.initiateBookingRespWeb =
                                    await LiferayBaseUrlGroup
                                        .initiateBookingCall
                                        .call(
                                  checkIn: dateTimeFormat('yyyy-MM-dd',
                                      FFAppState().selectedDateRange.first),
                                  checkOut: dateTimeFormat('yyyy-MM-dd',
                                      FFAppState().selectedDateRange.last),
                                  propertyId:
                                      FFAppState().BookingDetailsPage.propId,
                                  totalAmount: functions.getPriceTotal(
                                      (_model.selectedFromToDates.length > 0
                                                  ? functions.daysCalculation(
                                                      _model.selectedFromToDates
                                                          .toList())
                                                  : 0)
                                              .toDouble() *
                                          valueOrDefault<double>(
                                            FFAppState()
                                                    .propertyBookingDetails
                                                    .noOfBedrooms *
                                                FFAppState()
                                                    .BookingDetailsPage
                                                    .pricePerRoom,
                                            0.00,
                                          ),
                                      functions.getPricePercentage(
                                          (_model.selectedFromToDates.length > 0
                                                      ? functions
                                                          .daysCalculation(_model
                                                              .selectedFromToDates
                                                              .toList())
                                                      : 0)
                                                  .toDouble() *
                                              valueOrDefault<double>(
                                                FFAppState()
                                                        .BookingDetailsPage
                                                        .bedRoomCount *
                                                    FFAppState()
                                                        .BookingDetailsPage
                                                        .pricePerRoom,
                                                0.00,
                                              ),
                                          FFAppState()
                                              .BookingDetailsPage
                                              .taxPercent
                                              .toDouble())),
                                  totalGuests: FFAppState()
                                      .BookingDetailsPage
                                      .guestCount,
                                  totalTax: functions.getPricePercentage(
                                      (_model.selectedFromToDates.length > 0
                                                  ? functions.daysCalculation(
                                                      _model.selectedFromToDates
                                                          .toList())
                                                  : 0)
                                              .toDouble() *
                                          valueOrDefault<double>(
                                            FFAppState()
                                                    .propertyBookingDetails
                                                    .noOfBedrooms *
                                                FFAppState()
                                                    .BookingDetailsPage
                                                    .pricePerRoom,
                                            0.00,
                                          ),
                                      FFAppState()
                                          .BookingDetailsPage
                                          .taxPercent
                                          .toDouble()),
                                  accesssToken: FFAppState().accessToken,
                                  entirePropertyBooking: FFAppState()
                                      .propertyBookingDetails
                                      .isEntirePropertyBooking,
                                  rooms: FFAppState()
                                      .propertyBookingDetails
                                      .noOfBedrooms,
                                );

                                _shouldSetState = true;
                                if ((_model.initiateBookingRespWeb?.succeeded ??
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
                                      (_model.initiateBookingRespWeb
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
                                      _model.apiResult6p5Web =
                                          await LiferayBaseUrlGroup
                                              .completeBookingCall
                                              .call(
                                        bookingId: getJsonField(
                                          (_model.initiateBookingRespWeb
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
                                      if ((_model.apiResult6p5Web?.succeeded ??
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
                                                  bookingRefId: getJsonField(
                                                    (_model.apiResult6p5Web
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.bookingRefId''',
                                                  ).toString(),
                                                  bookingId: getJsonField(
                                                    (_model.apiResult6p5Web
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.bookingId''',
                                                  ).toString(),
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));

                                        FFAppState().BookingDetailsPage =
                                            BookingDetailsPageStruct();
                                        FFAppState().propertyBookingDetails =
                                            PropertyBookingDetailsStruct();
                                        setState(() {});
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
                                      _model.webPaymentFailureResp =
                                          await LiferayBaseUrlGroup
                                              .completeBookingCall
                                              .call(
                                        bookingId: getJsonField(
                                          (_model.initiateBookingRespWeb
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
                                      if ((_model.webPaymentFailureResp
                                              ?.succeeded ??
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
                                                (_model.webPaymentFailureResp
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
                                      (_model.initiateBookingRespWeb
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
                                          (_model.initiateBookingRespWeb
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
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
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
                              await actions.toastAction(
                                context,
                                'info',
                                FlutterFlowTheme.of(context).warning,
                                'Select atleast one night to book the property.',
                              );
                              if (_shouldSetState) setState(() {});
                              return;
                            }

                            if (_shouldSetState) setState(() {});
                          },
                          text: 'Pay Now',
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: GoogleFonts.getFont(
                              'Work Sans',
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.webCopyWriteModel,
                  updateCallback: () => setState(() {}),
                  child: WebCopyWriteWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
