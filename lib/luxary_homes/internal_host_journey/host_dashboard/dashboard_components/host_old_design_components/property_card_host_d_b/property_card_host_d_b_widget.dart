import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'property_card_host_d_b_model.dart';
export 'property_card_host_d_b_model.dart';

class PropertyCardHostDBWidget extends StatefulWidget {
  const PropertyCardHostDBWidget({
    super.key,
    required this.title,
    required this.basePrice,
    required this.city,
    required this.locality,
    required this.availableFrom,
    required this.imageList,
  });

  final String? title;
  final double? basePrice;
  final String? city;
  final String? locality;
  final String? availableFrom;
  final List<String>? imageList;

  @override
  State<PropertyCardHostDBWidget> createState() =>
      _PropertyCardHostDBWidgetState();
}

class _PropertyCardHostDBWidgetState extends State<PropertyCardHostDBWidget> {
  late PropertyCardHostDBModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropertyCardHostDBModel());

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

    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: FlutterFlowTheme.of(context).info,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: CachedNetworkImage(
                    fadeInDuration: Duration(milliseconds: 500),
                    fadeOutDuration: Duration(milliseconds: 500),
                    imageUrl: functions
                        .initImg(
                            widget.imageList?.toList(), FFAppState().BaseUrl)!
                        .last,
                    width: 110.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Flexible(
                              child: Text(
                                valueOrDefault<String>(
                                  widget.title,
                                  'NA',
                                ),
                                maxLines: 2,
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    '₹${formatNumber(
                                      widget.basePrice,
                                      formatType: FormatType.custom,
                                      format: '0.00',
                                      locale: '',
                                    )}',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  Text(
                                    ' /night',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF878787),
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 1.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: SvgPicture.asset(
                                    'assets/images/location-pin.svg',
                                    width: 15.0,
                                    height: 15.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    '${widget.locality} - ${widget.city}',
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: SvgPicture.asset(
                                'assets/images/Vector_(1).svg',
                                width: 15.0,
                                height: 15.0,
                                fit: BoxFit.contain,
                              ),
                            ),
                            Flexible(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  dateTimeFormat(
                                      'dd MMM yyyy',
                                      functions.convertStringToDatetime(
                                          widget.availableFrom!)),
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
