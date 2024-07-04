import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_property_card_model.dart';
export 'new_property_card_model.dart';

class NewPropertyCardWidget extends StatefulWidget {
  const NewPropertyCardWidget({
    super.key,
    this.propertyType,
    this.imageList,
    required this.locality,
    required this.city,
    required this.averageRating,
    required this.bedRooms,
    required this.bathRooms,
    required this.propertyId,
    required this.totalPropertyPrice,
    required this.pricePerRoom,
    required this.index,
  });

  final String? propertyType;
  final List<String>? imageList;
  final String? locality;
  final String? city;
  final double? averageRating;
  final int? bedRooms;
  final int? bathRooms;
  final dynamic propertyId;
  final double? totalPropertyPrice;
  final double? pricePerRoom;
  final int? index;

  @override
  State<NewPropertyCardWidget> createState() => _NewPropertyCardWidgetState();
}

class _NewPropertyCardWidgetState extends State<NewPropertyCardWidget> {
  late NewPropertyCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewPropertyCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.0,
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
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.24,
            child: custom_widgets.ImageSliderWidget(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.24,
              isTopCorners: true,
              imgList: widget.imageList,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 14.0, 12.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: formatNumber(
                          widget.pricePerRoom,
                          formatType: FormatType.custom,
                          format: '0.00',
                          locale: '',
                        ),
                        style: GoogleFonts.getFont(
                          'Work Sans',
                          color: Color(0xFFD70000),
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                        ),
                      ),
                      TextSpan(
                        text: ' INR',
                        style: GoogleFonts.getFont(
                          'Work Sans',
                          color: Color(0xFFD70000),
                          fontWeight: FontWeight.w500,
                          fontSize: 16.0,
                        ),
                      ),
                      TextSpan(
                        text: ' / Night ',
                        style: GoogleFonts.getFont(
                          'Work Sans',
                          color: Color(0xFF1C1C1C),
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                        ),
                      )
                    ],
                    style: GoogleFonts.getFont(
                      'Work Sans',
                      color: Color(0xFF1C1C1C),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                if (widget.averageRating! > 0.0)
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                        child: RatingBar.builder(
                          onRatingUpdate: (newValue) =>
                              setState(() => _model.ratingBarValue = newValue),
                          itemBuilder: (context, index) => Icon(
                            Icons.star_rounded,
                            color: FlutterFlowTheme.of(context).tertiary,
                          ),
                          direction: Axis.horizontal,
                          initialRating: _model.ratingBarValue ??= 1.0,
                          unratedColor: FlutterFlowTheme.of(context).accent3,
                          itemCount: 1,
                          itemSize: 16.0,
                          glowColor: FlutterFlowTheme.of(context).tertiary,
                        ),
                      ),
                      Text(
                        formatNumber(
                          widget.averageRating,
                          formatType: FormatType.custom,
                          format: '0.0',
                          locale: '',
                        ),
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 0.0, 0.0),
            child: RichText(
              textScaler: MediaQuery.of(context).textScaler,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: valueOrDefault<String>(
                      widget.locality,
                      'NA',
                    ),
                    style: GoogleFonts.getFont(
                      'Work Sans',
                      color: Color(0xFF1C1C1C),
                      fontWeight: FontWeight.normal,
                      fontSize: 18.0,
                    ),
                  ),
                  TextSpan(
                    text: ' - ',
                    style: GoogleFonts.getFont(
                      'Work Sans',
                      color: Color(0xFF1C1C1C),
                      fontWeight: FontWeight.normal,
                      fontSize: 18.0,
                    ),
                  ),
                  TextSpan(
                    text: valueOrDefault<String>(
                      widget.city,
                      'NA',
                    ),
                    style: GoogleFonts.getFont(
                      'Work Sans',
                      color: Color(0xFF1C1C1C),
                      fontWeight: FontWeight.normal,
                      fontSize: 18.0,
                    ),
                  )
                ],
                style: GoogleFonts.getFont(
                  'Work Sans',
                  color: Color(0xFF1C1C1C),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 15.0, 12.0, 15.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.propertyType,
                    'NA',
                  ),
                  style: GoogleFonts.getFont(
                    'Work Sans',
                    color: FlutterFlowTheme.of(context).primary,
                    fontWeight: FontWeight.w500,
                    fontSize: 12.0,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  child: VerticalDivider(
                    thickness: 1.0,
                    indent: 2.0,
                    endIndent: 2.0,
                    color: Color(0xFF1C1C1C),
                  ),
                ),
                Text(
                  '${widget.bedRooms.toString()} Bedrooms',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        letterSpacing: 0.0,
                      ),
                ),
                SizedBox(
                  height: 20.0,
                  child: VerticalDivider(
                    thickness: 1.0,
                    indent: 2.0,
                    endIndent: 2.0,
                    color: Color(0xFF1C1C1C),
                  ),
                ),
                Text(
                  '${widget.bathRooms.toString()} Bathrooms',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        letterSpacing: 0.0,
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
              thickness: 2.0,
              indent: 12.0,
              endIndent: 12.0,
              color: Color(0xFFDDDDDD),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            Divider(
              height: 1.0,
              thickness: 2.0,
              color: Color(0xFFDDDDDD),
            ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 15.0, 0.0, 5.0),
            child: Text(
              'Entire property booking available at',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    letterSpacing: 0.0,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 0.0, 18.0),
            child: RichText(
              textScaler: MediaQuery.of(context).textScaler,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: formatNumber(
                      widget.totalPropertyPrice,
                      formatType: FormatType.custom,
                      format: '0.00',
                      locale: '',
                    ),
                    style: GoogleFonts.getFont(
                      'Work Sans',
                      color: Color(0xFFD70000),
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),
                  ),
                  TextSpan(
                    text: ' INR',
                    style: GoogleFonts.getFont(
                      'Work Sans',
                      color: Color(0xFFD70000),
                      fontWeight: FontWeight.w500,
                      fontSize: 16.0,
                    ),
                  ),
                  TextSpan(
                    text: ' / Night ',
                    style: GoogleFonts.getFont(
                      'Work Sans',
                      color: Color(0xFF1C1C1C),
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                    ),
                  )
                ],
                style: GoogleFonts.getFont(
                  'Work Sans',
                  color: Color(0xFF1C1C1C),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
