import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'property_card_model.dart';
export 'property_card_model.dart';

class PropertyCardWidget extends StatefulWidget {
  const PropertyCardWidget({
    super.key,
    required this.pageName,
    this.title,
    this.price,
    this.propertyType,
    this.imageList,
    required this.propertyArticleid,
    required this.locality,
    required this.city,
    required this.averageRating,
  });

  final String? pageName;
  final String? title;
  final double? price;
  final String? propertyType;
  final List<String>? imageList;
  final String? propertyArticleid;
  final String? locality;
  final String? city;
  final double? averageRating;

  @override
  State<PropertyCardWidget> createState() => _PropertyCardWidgetState();
}

class _PropertyCardWidgetState extends State<PropertyCardWidget> {
  late PropertyCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropertyCardModel());

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
      width: double.infinity,
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
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              setState(() {
                FFAppState().PropertyDetailsPage = PropertyDetailsPageStruct(
                  articleId: widget.propertyArticleid,
                );
              });

              context.pushNamed('PropertyDetailsPage');
            },
            child: Container(
              width: double.infinity,
              height: MediaQuery.sizeOf(context).height * 0.24,
              child: custom_widgets.ImageSliderWidget(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).height * 0.24,
                isTopCorners: true,
                imgList: widget.imageList,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 10.0, 16.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Wrap(
                    spacing: 0.0,
                    runSpacing: 0.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget.propertyType,
                            'NA',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 12.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                      Text(
                        '₹${formatNumber(
                          widget.price,
                          formatType: FormatType.custom,
                          format: '0.00',
                          locale: '',
                        )} / night',
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
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
                          itemSize: 14.0,
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
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 5.0, 10.0, 5.0),
            child: Text(
              widget.title!,
              style: FlutterFlowTheme.of(context).headlineLarge.override(
                    fontFamily: 'Poppins',
                    fontSize: 14.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 5.0, 0.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: SvgPicture.asset(
                      'assets/images/location_pin.svg',
                      width: 14.0,
                      height: 14.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text(
                  '${widget.locality} - ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                Wrap(
                  spacing: 0.0,
                  runSpacing: 0.0,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                      child: Text(
                        '${widget.city}',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
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
    );
  }
}
