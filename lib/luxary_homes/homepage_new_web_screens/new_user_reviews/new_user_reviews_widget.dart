import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_user_reviews_model.dart';
export 'new_user_reviews_model.dart';

class NewUserReviewsWidget extends StatefulWidget {
  const NewUserReviewsWidget({
    super.key,
    required this.userName,
    required this.score,
    required this.comments,
    required this.createdDate,
  });

  final String? userName;
  final double? score;
  final String? comments;
  final String? createdDate;

  @override
  State<NewUserReviewsWidget> createState() => _NewUserReviewsWidgetState();
}

class _NewUserReviewsWidgetState extends State<NewUserReviewsWidget> {
  late NewUserReviewsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewUserReviewsModel());

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
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 17.0, 0.0, 0.0),
            child: RatingBar.builder(
              onRatingUpdate: (newValue) =>
                  setState(() => _model.ratingBarValue = newValue),
              itemBuilder: (context, index) => Icon(
                Icons.star_rounded,
                color: Color(0xFFFFCC6A),
              ),
              direction: Axis.horizontal,
              initialRating: _model.ratingBarValue ??= widget.score!,
              unratedColor: FlutterFlowTheme.of(context).accent3,
              itemCount: 5,
              itemSize: 14.0,
              glowColor: Color(0xFFFFCC6A),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 25.0, 12.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(2.0),
                      child: Container(
                        width: 48.0,
                        height: 48.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            width: 1.0,
                          ),
                        ),
                        child: Icon(
                          Icons.person,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 5.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.userName,
                                'NA',
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Open Sans',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.check_circle,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 18.0,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    3.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Verified Reviewer ',
                                  style: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: Color(0xFF525975),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
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
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 15.0, 10.0, 0.0),
              child: AutoSizeText(
                valueOrDefault<String>(
                  widget.comments,
                  'NA',
                ),
                style: FlutterFlowTheme.of(context).headlineLarge.override(
                      fontFamily: 'Work Sans',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(21.0, 15.0, 10.0, 10.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'See more',
                      style: GoogleFonts.getFont(
                        'Work Sans',
                        color: FlutterFlowTheme.of(context).primary,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down_sharp,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 26.0,
                    ),
                  ],
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
                    Text(
                      'Original review: ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF525975),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Text(
                      valueOrDefault<String>(
                        widget.createdDate,
                        'dd-MM-yyyy',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Color(0xFF525975),
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
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
