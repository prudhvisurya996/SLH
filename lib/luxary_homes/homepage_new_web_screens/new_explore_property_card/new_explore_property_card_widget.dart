import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_explore_property_card_model.dart';
export 'new_explore_property_card_model.dart';

class NewExplorePropertyCardWidget extends StatefulWidget {
  const NewExplorePropertyCardWidget({
    super.key,
    this.price,
    this.propertyType,
    this.imageList,
    required this.locality,
    required this.city,
    required this.averageRating,
    required this.articleId,
  });

  final double? price;
  final String? propertyType;
  final List<String>? imageList;
  final String? locality;
  final String? city;
  final double? averageRating;
  final String? articleId;

  @override
  State<NewExplorePropertyCardWidget> createState() =>
      _NewExplorePropertyCardWidgetState();
}

class _NewExplorePropertyCardWidgetState
    extends State<NewExplorePropertyCardWidget> {
  late NewExplorePropertyCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewExplorePropertyCardModel());

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
      height: 105.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(8.0),
      ),
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
                  imageUrl: widget.imageList!.first,
                  width: 110.0,
                  height: 105.0,
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'INR. ${formatNumber(
                                widget.price,
                                formatType: FormatType.custom,
                                format: '0.00',
                                locale: '',
                              )}',
                              style: GoogleFonts.getFont(
                                'Work Sans',
                                color: Color(0xFFD70000),
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                            ),
                            Text(
                              '/ Night',
                              style: GoogleFonts.getFont(
                                'Work Sans',
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          if (widget.averageRating! > 0.0)
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color(0xFFFFCC6A),
                                  size: 24.0,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    formatNumber(
                                      widget.averageRating,
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
                                  ),
                                ),
                              ],
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: SvgPicture.asset(
                                    'assets/images/house_(1).svg',
                                    width: 15.0,
                                    height: 15.0,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    valueOrDefault<String>(
                                      widget.propertyType,
                                      'NA',
                                    ),
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 14.0,
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
            ],
          ),
        ],
      ),
    );
  }
}
