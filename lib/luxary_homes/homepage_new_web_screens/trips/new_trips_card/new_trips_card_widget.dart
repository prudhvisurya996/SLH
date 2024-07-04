import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_trips_card_model.dart';
export 'new_trips_card_model.dart';

class NewTripsCardWidget extends StatefulWidget {
  const NewTripsCardWidget({
    super.key,
    required this.title,
    required this.checkInDate,
    required this.checkOutDate,
    required this.bookingRefId,
    required this.bookingId,
    required this.propImages,
    required this.locality,
    required this.city,
    required this.isModifiable,
    required this.propertyType,
    required this.refundStatus,
    required this.cancelledDate,
    required this.propertyStatus,
  });

  final String? title;
  final String? checkInDate;
  final String? checkOutDate;
  final String? bookingRefId;
  final String? bookingId;
  final String? propImages;
  final String? locality;
  final String? city;
  final bool? isModifiable;
  final String? propertyType;
  final String? refundStatus;
  final String? cancelledDate;
  final String? propertyStatus;

  @override
  State<NewTripsCardWidget> createState() => _NewTripsCardWidgetState();
}

class _NewTripsCardWidgetState extends State<NewTripsCardWidget> {
  late NewTripsCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewTripsCardModel());

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

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: widget.propertyStatus == '0'
                ? Color(0xFFE8E7FF)
                : Color(0xFFF8F8F8),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(0.0),
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(0.0),
                ),
                child: CachedNetworkImage(
                  fadeInDuration: Duration(milliseconds: 500),
                  fadeOutDuration: Duration(milliseconds: 500),
                  imageUrl: functions.getImage(
                      FFAppState().BaseUrl,
                      functions.imgToStrConv(functions
                          .listDataConversion(widget.propImages)
                          ?.first))!,
                  width: 120.0,
                  height: widget.propertyStatus == '0' ? 155.0 : 110.0,
                  fit: BoxFit.cover,
                ),
              ),
              Flexible(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(25.0, 14.0, 25.0, 14.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        valueOrDefault<String>(
                          widget.title,
                          '--',
                        ),
                        textAlign: TextAlign.start,
                        maxLines: 3,
                        style: GoogleFonts.getFont(
                          'Work Sans',
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: SvgPicture.asset(
                                'assets/images/house.svg',
                                width: 15.0,
                                height: 15.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  valueOrDefault<String>(
                                    widget.propertyType,
                                    'NA',
                                  ),
                                  style: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 6.0, 0.0, 6.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: SvgPicture.asset(
                                'assets/images/location-pin.svg',
                                width: 15.0,
                                height: 15.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  '${widget.locality}- ${widget.city}',
                                  style: GoogleFonts.getFont(
                                    'Work Sans',
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
                      if (widget.propertyStatus == '0')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 6.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Cancelled Date:  ',
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                ),
                              ),
                              Text(
                                '12th Jun 2024',
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (widget.propertyStatus == '0')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 6.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Refund status:  ',
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                ),
                              ),
                              Text(
                                'Pending',
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14.0,
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
        if (FFAppState().tripsStatus.cancelled != true)
          Container(
            height: 80.0,
            decoration: BoxDecoration(
              color: Color(0xFFE8E7FF),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(12.0),
                bottomRight: Radius.circular(12.0),
                topLeft: Radius.circular(0.0),
                topRight: Radius.circular(0.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Check-In',
                        style: GoogleFonts.getFont(
                          'Work Sans',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.checkInDate,
                            '--',
                          ),
                          style: GoogleFonts.getFont(
                            'Work Sans',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,
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
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Check-Out',
                        style: GoogleFonts.getFont(
                          'Work Sans',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 8.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.checkOutDate,
                            '--',
                          ),
                          style: GoogleFonts.getFont(
                            'Work Sans',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,
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
                  Flexible(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Booking ID:',
                          style: GoogleFonts.getFont(
                            'Work Sans',
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
                              'Work Sans',
                              color: FlutterFlowTheme.of(context).primary,
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0,
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
    );
  }
}
