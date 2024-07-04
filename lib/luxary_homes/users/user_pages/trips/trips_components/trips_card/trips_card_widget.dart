import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'trips_card_model.dart';
export 'trips_card_model.dart';

class TripsCardWidget extends StatefulWidget {
  const TripsCardWidget({
    super.key,
    required this.title,
    required this.ownerUserName,
    required this.ownerPhoneNumber,
    required this.checkInDate,
    required this.checkOutDate,
    required this.bookingRefId,
    required this.bookingId,
    this.propImages,
    required this.locality,
    required this.city,
    required this.cancelledDate,
    required this.refundStatus,
    required this.isModifiable,
  });

  final String? title;
  final String? ownerUserName;
  final String? ownerPhoneNumber;
  final String? checkInDate;
  final String? checkOutDate;
  final String? bookingRefId;
  final String? bookingId;
  final String? propImages;
  final String? locality;
  final String? city;
  final String? cancelledDate;
  final String? refundStatus;
  final bool? isModifiable;

  @override
  State<TripsCardWidget> createState() => _TripsCardWidgetState();
}

class _TripsCardWidgetState extends State<TripsCardWidget> {
  late TripsCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TripsCardModel());

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

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondaryBackground,
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 10.0),
                          child: AutoSizeText(
                            valueOrDefault<String>(
                              widget.title,
                              '--',
                            ),
                            textAlign: TextAlign.start,
                            maxLines: 3,
                            style: GoogleFonts.getFont(
                              'Poppins',
                              color: Color(0xFF101010),
                              fontWeight: FontWeight.w600,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
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
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    '${widget.locality}- ${widget.city}',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: Color(0xFF878787),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12.0,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        if (FFAppState().tripsStatus.cancelled == true)
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 8.0, 0.0),
                                child: Text(
                                  'Cancelled Date :',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        fontSize: 12.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  widget.cancelledDate,
                                  '--',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                        if ((FFAppState().tripsStatus.upComing == true) ||
                            (FFAppState().tripsStatus.completed == true))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 5.0),
                            child: Text(
                              'Contact Owner',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 14.0,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: CachedNetworkImage(
                      fadeInDuration: Duration(milliseconds: 500),
                      fadeOutDuration: Duration(milliseconds: 500),
                      imageUrl: functions.getImage(
                          FFAppState().BaseUrl,
                          functions.imgToStrConv(functions
                              .listDataConversion(widget.propImages)
                              ?.first))!,
                      width: 90.0,
                      height: 90.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            if (FFAppState().tripsStatus.cancelled == true)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                      child: Text(
                        'Refund Status :',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 12.0,
                        ),
                      ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.refundStatus,
                        '\"\"',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFFEB5435),
                            fontSize: 12.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
            if ((FFAppState().tripsStatus.upComing == true) ||
                (FFAppState().tripsStatus.completed == true))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: SvgPicture.asset(
                            'assets/images/user_profile_icon.svg',
                            width: 22.0,
                            height: 22.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.ownerUserName,
                              '--',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF878787),
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SvgPicture.asset(
                              'assets/images/Group_1000004760.svg',
                              width: 17.0,
                              height: 17.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.ownerPhoneNumber,
                                '--',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            if (FFAppState().tripsStatus.cancelled != true)
              Padding(
                padding: EdgeInsets.all(6.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(
                      color: Color(0xCCBBD1EA),
                      width: 1.0,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Check-In',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 8.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget.checkInDate,
                                  '--',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    '12:00 PM',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Check-Out',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 8.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget.checkOutDate,
                                  '--',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    '11:00 AM',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Booking ID:',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 0.0),
                              child: Text(
                                valueOrDefault<String>(
                                  widget.bookingRefId,
                                  '--',
                                ),
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
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
                ),
              ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 14.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        setState(() {
                          FFAppState().ManageBookingDetails =
                              ManageBookingDetailsStruct(
                            bookingId: widget.bookingId,
                            modifiable: widget.isModifiable,
                          );
                        });

                        context.pushNamed(
                          'ManageBookingDetailsPage',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                              duration: Duration(milliseconds: 0),
                            ),
                          },
                        );
                      },
                      text: FFAppState().tripsStatus.upComing == true
                          ? 'View and Manage Booking'
                          : 'View',
                      options: FFButtonOptions(
                        height: 36.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0x805246ED),
                        textStyle: GoogleFonts.getFont(
                          'Poppins',
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 12.0,
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
