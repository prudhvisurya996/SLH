import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/homepage_new_web_screens/new_details_card/new_details_card_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_user_reviews/new_user_reviews_widget.dart';
import '/luxary_homes/users/house_rule_card/house_rule_card_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'new_property_details_comp_model.dart';
export 'new_property_details_comp_model.dart';

class NewPropertyDetailsCompWidget extends StatefulWidget {
  const NewPropertyDetailsCompWidget({
    super.key,
    required this.propertyId,
  });

  final int? propertyId;

  @override
  State<NewPropertyDetailsCompWidget> createState() =>
      _NewPropertyDetailsCompWidgetState();
}

class _NewPropertyDetailsCompWidgetState
    extends State<NewPropertyDetailsCompWidget> {
  late NewPropertyDetailsCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewPropertyDetailsCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.selectedFromDates = [];
      _model.propertyId = widget.propertyId;
      _model.updatePage(() {});
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
      padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
      child: FutureBuilder<ApiCallResponse>(
        future: MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.call(
          propertyId: widget.propertyId,
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: SpinKitPulse(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 40.0,
                ),
              ),
            );
          }
          final containerPropertyDetailsResponse = snapshot.data!;
          return Container(
            decoration: BoxDecoration(),
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 24.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Material(
                            color: Colors.transparent,
                            elevation: 0.5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.3,
                              height: MediaQuery.sizeOf(context).height * 0.38,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Image.network(
                                  functions
                                      .initImg(
                                          functions
                                              .listDataConversion(getJsonField(
                                                containerPropertyDetailsResponse
                                                    .jsonBody,
                                                r'''$.imageURLs''',
                                              ).toString())
                                              ?.toList(),
                                          FFAppState().BaseUrl)!
                                      .first,
                                  width: MediaQuery.sizeOf(context).width * 0.3,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.38,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      final imagesList = functions
                              .initImg(
                                  functions
                                      .listDataConversion(getJsonField(
                                        containerPropertyDetailsResponse
                                            .jsonBody,
                                        r'''$.imageURLs''',
                                      ).toString())
                                      ?.toList(),
                                  FFAppState().BaseUrl)
                              ?.toList() ??
                          [];
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(imagesList.length,
                              (imagesListIndex) {
                            final imagesListItem = imagesList[imagesListIndex];
                            return Material(
                              color: Colors.transparent,
                              elevation: 0.5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.network(
                                    imagesListItem,
                                    width: 100.0,
                                    height: 100.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            );
                          }).divide(SizedBox(width: 15.0)),
                        ),
                      );
                    },
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.tabs = 'propertyInfo';
                          setState(() {});
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 16.0, 8.0, 16.0),
                              child: Text(
                                'Property Information',
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            if (_model.tabs == 'propertyInfo')
                              Container(
                                width: 155.0,
                                height: 3.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            _model.tabs = 'reviews';
                            setState(() {});
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Text(
                                  'Reviews',
                                  style: GoogleFonts.getFont(
                                    'Work Sans',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                              if (_model.tabs == 'reviews')
                                Container(
                                  width: 70.0,
                                  height: 3.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    height: 1.0,
                    thickness: 2.0,
                    endIndent: 20.0,
                    color: Color(0xFFE2E8F0),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height * 0.81,
                      decoration: BoxDecoration(),
                      child: Stack(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                if (_model.tabs == 'propertyInfo')
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                    child: Stack(
                                      children: [
                                        Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.4,
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 30.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                50.0, 0.0),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        -1.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    valueOrDefault<
                                                                        String>(
                                                                      MicroserviceAvailabilityAPIsGroup
                                                                          .propertyDetailsCall
                                                                          .title(
                                                                        containerPropertyDetailsResponse
                                                                            .jsonBody,
                                                                      ),
                                                                      'NA',
                                                                    ),
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontSize:
                                                                          22.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                              if (functions
                                                                      .toDouble(
                                                                          getJsonField(
                                                                    containerPropertyDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.averageRatings''',
                                                                  ).toString())! >
                                                                  0.0)
                                                                SizedBox(
                                                                  height: 20.0,
                                                                  child:
                                                                      VerticalDivider(
                                                                    width: 1.43,
                                                                    thickness:
                                                                        1.0,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                ),
                                                              if (functions
                                                                      .toDouble(
                                                                          getJsonField(
                                                                    containerPropertyDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.averageRatings''',
                                                                  ).toString())! >
                                                                  0.0)
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      RatingBar
                                                                          .builder(
                                                                        onRatingUpdate:
                                                                            (newValue) =>
                                                                                setState(() => _model.ratingBarValue = newValue),
                                                                        itemBuilder:
                                                                            (context, index) =>
                                                                                Icon(
                                                                          Icons
                                                                              .star_rounded,
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiary,
                                                                        ),
                                                                        direction:
                                                                            Axis.horizontal,
                                                                        initialRating:
                                                                            _model.ratingBarValue ??=
                                                                                getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.averageRatings''',
                                                                        ),
                                                                        unratedColor:
                                                                            FlutterFlowTheme.of(context).accent3,
                                                                        itemCount:
                                                                            5,
                                                                        itemSize:
                                                                            18.0,
                                                                        glowColor:
                                                                            FlutterFlowTheme.of(context).tertiary,
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            6.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          '(${getJsonField(
                                                                            containerPropertyDetailsResponse.jsonBody,
                                                                            r'''$.totalReviews''',
                                                                          ).toString()})',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontSize:
                                                                                10.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
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
                                                                          0.0,
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
                                                                      Text(
                                                                        'Property Type',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              Color(0xFFB6BFE0),
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            RichText(
                                                                          textScaler:
                                                                              MediaQuery.of(context).textScaler,
                                                                          text:
                                                                              TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                text: getJsonField(
                                                                                  containerPropertyDetailsResponse.jsonBody,
                                                                                  r'''$.propertyType''',
                                                                                ).toString(),
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontSize: 16.0,
                                                                                ),
                                                                              )
                                                                            ],
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 16.0,
                                                                            ),
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
                                                                          24.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Wrap(
                                                                    spacing:
                                                                        8.0,
                                                                    runSpacing:
                                                                        15.0,
                                                                    alignment:
                                                                        WrapAlignment
                                                                            .start,
                                                                    crossAxisAlignment:
                                                                        WrapCrossAlignment
                                                                            .start,
                                                                    direction: Axis
                                                                        .horizontal,
                                                                    runAlignment:
                                                                        WrapAlignment
                                                                            .start,
                                                                    verticalDirection:
                                                                        VerticalDirection
                                                                            .down,
                                                                    clipBehavior:
                                                                        Clip.none,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(0.0),
                                                                              child: SvgPicture.asset(
                                                                                'assets/images/house_chimney_blank.svg',
                                                                                width: 18.0,
                                                                                height: 18.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                '${getJsonField(
                                                                                  containerPropertyDetailsResponse.jsonBody,
                                                                                  r'''$.totalGuests''',
                                                                                ).toString()} Guests',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontSize: 16.0,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                              width: 8.0,
                                                                              height: 8.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0xFFF5F5F5),
                                                                                  borderRadius: BorderRadius.only(
                                                                                    bottomLeft: Radius.circular(8.0),
                                                                                    bottomRight: Radius.circular(8.0),
                                                                                    topLeft: Radius.circular(8.0),
                                                                                    topRight: Radius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                                child: Text(
                                                                                  '${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bedrooms(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                      )?.toString()} bedroom',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                              width: 8.0,
                                                                              height: 8.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0xFFF5F5F5),
                                                                                  borderRadius: BorderRadius.only(
                                                                                    bottomLeft: Radius.circular(8.0),
                                                                                    bottomRight: Radius.circular(8.0),
                                                                                    topLeft: Radius.circular(8.0),
                                                                                    topRight: Radius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                                child: Text(
                                                                                  '${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.beds(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                      )?.toString()} beds',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            8.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            Container(
                                                                              width: 8.0,
                                                                              height: 8.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                              child: Container(
                                                                                decoration: BoxDecoration(
                                                                                  color: Color(0xFFF5F5F5),
                                                                                  borderRadius: BorderRadius.only(
                                                                                    bottomLeft: Radius.circular(8.0),
                                                                                    bottomRight: Radius.circular(8.0),
                                                                                    topLeft: Radius.circular(8.0),
                                                                                    topRight: Radius.circular(8.0),
                                                                                  ),
                                                                                ),
                                                                                child: Text(
                                                                                  '${getJsonField(
                                                                                    containerPropertyDetailsResponse.jsonBody,
                                                                                    r'''$.totalWashrooms''',
                                                                                  ).toString()} bathrooms',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                8.0,
                                                                            height:
                                                                                8.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              '${getJsonField(
                                                                                containerPropertyDetailsResponse.jsonBody,
                                                                                r'''$.sharedWashrooms''',
                                                                              ).toString()} SharedBathrooms',
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 16.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                8.0,
                                                                            height:
                                                                                8.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              '${getJsonField(
                                                                                containerPropertyDetailsResponse.jsonBody,
                                                                                r'''$.guestsPerRoom''',
                                                                              ).toString()} GuestsPerRoom',
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 16.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          Container(
                                                                            width:
                                                                                8.0,
                                                                            height:
                                                                                8.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              shape: BoxShape.circle,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'INR. ${getJsonField(
                                                                                containerPropertyDetailsResponse.jsonBody,
                                                                                r'''$.pricePerRoom''',
                                                                              ).toString()} PricePerRoom',
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 16.0,
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
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        18.0,
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
                                                                Text(
                                                                  'Property address',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Color(
                                                                        0xFFB6BFE0),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      RichText(
                                                                    textScaler:
                                                                        MediaQuery.of(context)
                                                                            .textScaler,
                                                                    text:
                                                                        TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              valueOrDefault<String>(
                                                                            MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.plotNo(
                                                                              containerPropertyDetailsResponse.jsonBody,
                                                                            ),
                                                                            'NA',
                                                                          ),
                                                                          style:
                                                                              TextStyle(),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              ', ',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontSize:
                                                                                18.0,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              valueOrDefault<String>(
                                                                            MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.street(
                                                                              containerPropertyDetailsResponse.jsonBody,
                                                                            ),
                                                                            'NA',
                                                                          ),
                                                                          style:
                                                                              TextStyle(),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              ', ',
                                                                          style:
                                                                              TextStyle(),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              valueOrDefault<String>(
                                                                            MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.locality(
                                                                              containerPropertyDetailsResponse.jsonBody,
                                                                            ),
                                                                            'NA',
                                                                          ),
                                                                          style:
                                                                              TextStyle(),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              ', ',
                                                                          style:
                                                                              TextStyle(),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              valueOrDefault<String>(
                                                                            MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.city(
                                                                              containerPropertyDetailsResponse.jsonBody,
                                                                            ),
                                                                            'NA',
                                                                          ),
                                                                          style:
                                                                              TextStyle(),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              ', ',
                                                                          style:
                                                                              TextStyle(),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              valueOrDefault<String>(
                                                                            MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.state(
                                                                              containerPropertyDetailsResponse.jsonBody,
                                                                            ),
                                                                            'NA',
                                                                          ),
                                                                          style:
                                                                              TextStyle(),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              ', ',
                                                                          style:
                                                                              TextStyle(),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              valueOrDefault<String>(
                                                                            MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.zipcode(
                                                                              containerPropertyDetailsResponse.jsonBody,
                                                                            ),
                                                                            'NA',
                                                                          ),
                                                                          style:
                                                                              TextStyle(),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              ', ',
                                                                          style:
                                                                              TextStyle(),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              valueOrDefault<String>(
                                                                            MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.country(
                                                                              containerPropertyDetailsResponse.jsonBody,
                                                                            ),
                                                                            'NA',
                                                                          ),
                                                                          style:
                                                                              TextStyle(),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              '.',
                                                                          style:
                                                                              TextStyle(),
                                                                        )
                                                                      ],
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
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        24.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: RichText(
                                                              textScaler:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                              text: TextSpan(
                                                                children: [
                                                                  TextSpan(
                                                                    text:
                                                                        'Individual Room Or Entire property booking available ',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: Color(
                                                                          0xFFF9AE39),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          16.0,
                                                                    ),
                                                                  )
                                                                ],
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, -1.0),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          24.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Description',
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
                                                                      18.0,
                                                                ),
                                                              ),
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
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                MicroserviceAvailabilityAPIsGroup
                                                                    .propertyDetailsCall
                                                                    .desc(
                                                                  containerPropertyDetailsResponse
                                                                      .jsonBody,
                                                                ),
                                                                'NA',
                                                              ),
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                if (responsiveVisibility(
                                                  context: context,
                                                  phone: false,
                                                  tablet: false,
                                                  tabletLandscape: false,
                                                ))
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 20.0,
                                                                0.0, 0.0),
                                                    child: Container(
                                                      decoration:
                                                          BoxDecoration(),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    55.0,
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
                                                                      18.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      -1.0),
                                                              child: Text(
                                                                '${_model.selectedFromDates.length > 0 ? dateTimeFormat('dd MMM yyyy', _model.selectedFromDates.first) : 'Check-In Date'} - ${_model.selectedFromDates.length > 0 ? dateTimeFormat('dd MMM yyyy', _model.selectedFromDates.last) : 'Check-Out Date'}',
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
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.5,
                                                                  height: 280.0,
                                                                  child: custom_widgets
                                                                      .SyncDatePicker(
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.5,
                                                                    height:
                                                                        280.0,
                                                                    isMultiView: MediaQuery.sizeOf(context).width >
                                                                            799.0
                                                                        ? true
                                                                        : false,
                                                                    initialSelectedDates:
                                                                        _model
                                                                            .selectedFromDates,
                                                                    propAvailableFromDate:
                                                                        getJsonField(
                                                                      containerPropertyDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.availableFrom''',
                                                                    ).toString(),
                                                                    propBookedDates:
                                                                        getJsonField(
                                                                      containerPropertyDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.bookedDates''',
                                                                    ).toString(),
                                                                    isModifyAllowed:
                                                                        false,
                                                                    partiallyBookedDates:
                                                                        getJsonField(
                                                                      containerPropertyDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.partialBookedDates''',
                                                                    ).toString(),
                                                                    onChangeAction:
                                                                        () async {
                                                                      _model.selectedFromDates = FFAppState()
                                                                          .selectedDateRange
                                                                          .toList()
                                                                          .cast<
                                                                              DateTime>();
                                                                      setState(
                                                                          () {});
                                                                    },
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ].divide(SizedBox(
                                                              height: 10.0)),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, -1.0),
                                                            child: Text(
                                                              'Amenities',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18.0,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        14.0,
                                                                        55.0,
                                                                        0.0),
                                                            child: Builder(
                                                              builder:
                                                                  (context) {
                                                                final amenitiess = functions
                                                                        .listMapConversion(getJsonField(
                                                                          containerPropertyDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.amenities''',
                                                                        ).toString())
                                                                        ?.toList() ??
                                                                    [];
                                                                return GridView
                                                                    .builder(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  gridDelegate:
                                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                                    crossAxisCount:
                                                                        3,
                                                                    mainAxisSpacing:
                                                                        10.0,
                                                                    childAspectRatio:
                                                                        6.0,
                                                                  ),
                                                                  shrinkWrap:
                                                                      true,
                                                                  scrollDirection:
                                                                      Axis.vertical,
                                                                  itemCount:
                                                                      amenitiess
                                                                          .length,
                                                                  itemBuilder:
                                                                      (context,
                                                                          amenitiessIndex) {
                                                                    final amenitiessItem =
                                                                        amenitiess[
                                                                            amenitiessIndex];
                                                                    return Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                          width:
                                                                              8.0,
                                                                          height:
                                                                              8.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              7.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: Color(0xFFF5F5F5),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            child:
                                                                                Text(
                                                                              getJsonField(
                                                                                amenitiessItem,
                                                                                r'''$.name''',
                                                                              ).toString(),
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontWeight: FontWeight.normal,
                                                                                fontSize: 16.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    );
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 20.0, 55.0, 0.0),
                                                  child: Container(
                                                    decoration: BoxDecoration(),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, -1.0),
                                                            child: Text(
                                                              'House Rules',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18.0,
                                                              ),
                                                            ),
                                                          ),
                                                          Wrap(
                                                            spacing: 20.0,
                                                            runSpacing: 30.0,
                                                            alignment:
                                                                WrapAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                WrapCrossAlignment
                                                                    .start,
                                                            direction:
                                                                Axis.horizontal,
                                                            runAlignment:
                                                                WrapAlignment
                                                                    .start,
                                                            verticalDirection:
                                                                VerticalDirection
                                                                    .down,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        wrapWithModel(
                                                                      model: _model
                                                                          .houseRuleCardModel1,
                                                                      updateCallback:
                                                                          () =>
                                                                              setState(() {}),
                                                                      child:
                                                                          HouseRuleCardWidget(
                                                                        ruleNumber:
                                                                            '01',
                                                                        ruleHeading:
                                                                            'Check In',
                                                                        ruleDescription:
                                                                            'From 12:00 PM',
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        wrapWithModel(
                                                                      model: _model
                                                                          .houseRuleCardModel2,
                                                                      updateCallback:
                                                                          () =>
                                                                              setState(() {}),
                                                                      child:
                                                                          HouseRuleCardWidget(
                                                                        ruleNumber:
                                                                            '02',
                                                                        ruleHeading:
                                                                            'Check Out',
                                                                        ruleDescription:
                                                                            'From 11:00 AM',
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Container(
                                                                height: 45.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child:
                                                                    wrapWithModel(
                                                                  model: _model
                                                                      .houseRuleCardModel3,
                                                                  updateCallback:
                                                                      () => setState(
                                                                          () {}),
                                                                  child:
                                                                      HouseRuleCardWidget(
                                                                    ruleNumber:
                                                                        '03',
                                                                    ruleHeading:
                                                                        'Smoking',
                                                                    ruleDescription:
                                                                        'Smoking is not allowed.',
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                height: 45.0,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child:
                                                                    wrapWithModel(
                                                                  model: _model
                                                                      .houseRuleCardModel4,
                                                                  updateCallback:
                                                                      () => setState(
                                                                          () {}),
                                                                  child:
                                                                      HouseRuleCardWidget(
                                                                    ruleNumber:
                                                                        '04',
                                                                    ruleHeading:
                                                                        'Parties',
                                                                    ruleDescription:
                                                                        'Parties/events are not allowed.',
                                                                  ),
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          24.0),
                                                                  child:
                                                                      wrapWithModel(
                                                                    model: _model
                                                                        .houseRuleCardModel5,
                                                                    updateCallback: () =>
                                                                        setState(
                                                                            () {}),
                                                                    child:
                                                                        HouseRuleCardWidget(
                                                                      ruleNumber:
                                                                          '05',
                                                                      ruleHeading:
                                                                          'Cancellation/prepayment',
                                                                      ruleDescription:
                                                                          'Cancellation and prepayment policies vary according to apartment type. Please check the apartment conditions when selecting your apartment above.',
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ].divide(SizedBox(
                                                            height: 20.0)),
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
                                if (_model.tabs == 'reviews')
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 24.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'User Reviews',
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Text(
                                            '${getJsonField(
                                              containerPropertyDetailsResponse
                                                  .jsonBody,
                                              r'''$.totalReviews''',
                                            ).toString()} reviews',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 18.0,
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 0.0, 0.0),
                                                child: PagedGridView<
                                                    ApiPagingParams, dynamic>(
                                                  pagingController: _model
                                                      .setGridViewController2(
                                                    (nextPageMarker) =>
                                                        MicroserviceRatingReviewAPIsGroup
                                                            .reviewsRatingsCall
                                                            .call(
                                                      propertyId: _model
                                                          .propertyId
                                                          ?.toString(),
                                                    ),
                                                  ),
                                                  padding: EdgeInsets.zero,
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 2,
                                                    crossAxisSpacing: 24.0,
                                                    mainAxisSpacing: 24.0,
                                                    childAspectRatio: 2.0,
                                                  ),
                                                  primary: false,
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  builderDelegate:
                                                      PagedChildBuilderDelegate<
                                                          dynamic>(
                                                    // Customize what your widget looks like when it's loading the first page.
                                                    firstPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        child: SpinKitPulse(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 40.0,
                                                        ),
                                                      ),
                                                    ),
                                                    // Customize what your widget looks like when it's loading another page.
                                                    newPageProgressIndicatorBuilder:
                                                        (_) => Center(
                                                      child: SizedBox(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        child: SpinKitPulse(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 40.0,
                                                        ),
                                                      ),
                                                    ),

                                                    itemBuilder: (context, _,
                                                        ratingReviewDataIndex) {
                                                      final ratingReviewDataItem =
                                                          _model.gridViewPagingController2!
                                                                  .itemList![
                                                              ratingReviewDataIndex];
                                                      return NewUserReviewsWidget(
                                                        key: Key(
                                                            'Key8sy_${ratingReviewDataIndex}_of_${_model.gridViewPagingController2!.itemList!.length}'),
                                                        userName: getJsonField(
                                                          ratingReviewDataItem,
                                                          r'''$.userName''',
                                                        ).toString(),
                                                        score: getJsonField(
                                                          ratingReviewDataItem,
                                                          r'''$.score''',
                                                        ),
                                                        comments: getJsonField(
                                                          ratingReviewDataItem,
                                                          r'''$.comments''',
                                                        ).toString(),
                                                        createdDate:
                                                            getJsonField(
                                                          ratingReviewDataItem,
                                                          r'''$.createdDate''',
                                                        ).toString(),
                                                      );
                                                    },
                                                  ),
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
                          Align(
                            alignment: AlignmentDirectional(1.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 15.0, 0.0),
                              child: Container(
                                width: MediaQuery.sizeOf(context).width * 0.25,
                                decoration: BoxDecoration(
                                  color: Color(0x4CE8E7FF),
                                  borderRadius: BorderRadius.circular(16.0),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                child: wrapWithModel(
                                  model: _model.newDetailsCardModel,
                                  updateCallback: () => setState(() {}),
                                  child: NewDetailsCardWidget(
                                    roomsCount: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.bedrooms''',
                                    ),
                                    guestCount: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.totalGuests''',
                                    ),
                                    propertyId: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.propertyId''',
                                    ),
                                    entirePropertyPricePerNight: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.totalPrice''',
                                    ),
                                    roomPricePerNight: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.pricePerRoom''',
                                    ),
                                    propertyType: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.propertyType''',
                                    ).toString(),
                                    title: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.title''',
                                    ).toString(),
                                    description: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.desc''',
                                    ).toString(),
                                    locality: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.locality''',
                                    ).toString(),
                                    city: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.city''',
                                    ).toString(),
                                    streetAddress: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.street''',
                                    ).toString(),
                                    landmark: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.landmark''',
                                    ).toString(),
                                    state: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.state''',
                                    ).toString(),
                                    country: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.country''',
                                    ).toString(),
                                    zipcode: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.zipcode''',
                                    ).toString(),
                                    plotNo: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.plotNo''',
                                    ).toString(),
                                    taxPercent: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.taxPercent''',
                                    ),
                                    bedsCount: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.beds''',
                                    ),
                                    bathroomCount: getJsonField(
                                      containerPropertyDetailsResponse.jsonBody,
                                      r'''$.totalWashrooms''',
                                    ),
                                    image: functions
                                        .initImg(
                                            functions
                                                .listDataConversion(
                                                    getJsonField(
                                                  containerPropertyDetailsResponse
                                                      .jsonBody,
                                                  r'''$.imageURLs''',
                                                ).toString())
                                                ?.toList(),
                                            FFAppState().BaseUrl)!
                                        .first,
                                    selectedFromToDates:
                                        _model.selectedFromDates,
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
        },
      ),
    );
  }
}
