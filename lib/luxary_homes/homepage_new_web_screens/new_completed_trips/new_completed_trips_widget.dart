import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/homepage_new_web_screens/new_trips_card/new_trips_card_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_user_reviews/new_user_reviews_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'new_completed_trips_model.dart';
export 'new_completed_trips_model.dart';

class NewCompletedTripsWidget extends StatefulWidget {
  const NewCompletedTripsWidget({super.key});

  @override
  State<NewCompletedTripsWidget> createState() =>
      _NewCompletedTripsWidgetState();
}

class _NewCompletedTripsWidgetState extends State<NewCompletedTripsWidget> {
  late NewCompletedTripsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewCompletedTripsModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 0.28,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF6F7FA),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.search_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 23.0,
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: TextFormField(
                                        controller: _model.textController,
                                        focusNode: _model.textFieldFocusNode,
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Search by property',
                                          hintStyle: FlutterFlowTheme.of(
                                                  context)
                                              .labelMedium
                                              .override(
                                                fontFamily: 'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                          focusedErrorBorder:
                                              OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(0.0),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        maxLength: 50,
                                        maxLengthEnforcement:
                                            MaxLengthEnforcement.none,
                                        buildCounter: (context,
                                                {required currentLength,
                                                required isFocused,
                                                maxLength}) =>
                                            null,
                                        validator: _model
                                            .textControllerValidator
                                            .asValidator(context),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(4.0),
                                      border: Border.all(
                                        color: Color(0xFFA0A7AF),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          20.0, 5.0, 20.0, 5.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 8.0, 0.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: SvgPicture.asset(
                                                'assets/images/icon.svg',
                                                width: 12.0,
                                                height: 12.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            'Filter',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 16.0, 0.0, 0.0),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '132',
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color: Color(0xFF475569),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' SID Luxury Homes Stays',
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color: Color(0xFF475569),
                                      fontWeight: FontWeight.w500,
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
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Container(
                              height: MediaQuery.sizeOf(context).height * 1.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF2F2F2),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 5.0, 5.0, 5.0),
                                child: FutureBuilder<ApiCallResponse>(
                                  future: (_model.apiRequestCompleter ??=
                                          Completer<ApiCallResponse>()
                                            ..complete(
                                                MicroserviceBookingAPIsGroup
                                                    .userTripsCall
                                                    .call(
                                              userId: FFAppState()
                                                  .userData
                                                  .userId
                                                  .toString(),
                                            )))
                                      .future,
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                        child: SizedBox(
                                          width: 40.0,
                                          height: 40.0,
                                          child: SpinKitPulse(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 40.0,
                                          ),
                                        ),
                                      );
                                    }
                                    final listViewUserTripsResponse =
                                        snapshot.data!;
                                    return Builder(
                                      builder: (context) {
                                        final inProgress = getJsonField(
                                          listViewUserTripsResponse.jsonBody,
                                          r'''$[0].details''',
                                        ).toList();
                                        return RefreshIndicator(
                                          onRefresh: () async {
                                            setState(() => _model
                                                .apiRequestCompleter = null);
                                            await _model
                                                .waitForApiRequestCompleted();
                                          },
                                          child: ListView.separated(
                                            padding: EdgeInsets.zero,
                                            shrinkWrap: true,
                                            scrollDirection: Axis.vertical,
                                            itemCount: inProgress.length,
                                            separatorBuilder: (_, __) =>
                                                SizedBox(height: 8.0),
                                            itemBuilder:
                                                (context, inProgressIndex) {
                                              final inProgressItem =
                                                  inProgress[inProgressIndex];
                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.bookingId =
                                                      getJsonField(
                                                    inProgressItem,
                                                    r'''$.bookingId''',
                                                  ).toString();
                                                  setState(() {});
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .only(
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      8.0),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          0.0),
                                                              topLeft: Radius
                                                                  .circular(
                                                                      8.0),
                                                              topRight: Radius
                                                                  .circular(
                                                                      0.0),
                                                            ),
                                                            child:
                                                                CachedNetworkImage(
                                                              fadeInDuration:
                                                                  Duration(
                                                                      milliseconds:
                                                                          500),
                                                              fadeOutDuration:
                                                                  Duration(
                                                                      milliseconds:
                                                                          500),
                                                              imageUrl: functions
                                                                  .initImg(
                                                                      functions
                                                                          .listDataConversion(getJsonField(
                                                                            inProgressItem,
                                                                            r'''$.imageURLs''',
                                                                          ).toString())
                                                                          ?.toList(),
                                                                      FFAppState().BaseUrl)!
                                                                  .first,
                                                              width: 110.0,
                                                              height: 105.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          15.0,
                                                                          10.0,
                                                                          15.0,
                                                                          10.0),
                                                              child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            -1.0,
                                                                            -1.0),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          10.0,
                                                                          10.0),
                                                                      child:
                                                                          Text(
                                                                        getJsonField(
                                                                          inProgressItem,
                                                                          r'''$.title''',
                                                                        ).toString(),
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        'INR. ${getJsonField(
                                                                          inProgressItem,
                                                                          r'''$.totalPrice''',
                                                                        ).toString()}',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              Color(0xFFD70000),
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        ' /night',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      ),
                                                                    ],
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
                                                                              .start,
                                                                      children: [
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              -1.0,
                                                                              1.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                SvgPicture.asset(
                                                                              'assets/images/location-pin.svg',
                                                                              width: 15.0,
                                                                              height: 15.0,
                                                                              fit: BoxFit.contain,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Flexible(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              '${getJsonField(
                                                                                inProgressItem,
                                                                                r'''$.locality''',
                                                                              ).toString()} - ${getJsonField(
                                                                                inProgressItem,
                                                                                r'''$.city''',
                                                                              ).toString()}',
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: Color(0xFF878787),
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      if (functions
                                                                              .toDouble(getJsonField(
                                                                            inProgressItem,
                                                                            r'''$.averageRating''',
                                                                          ).toString())! >
                                                                          0.00)
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.center,
                                                                            children: [
                                                                              Icon(
                                                                                Icons.star,
                                                                                color: Color(0xFFFFCC6A),
                                                                                size: 24.0,
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  getJsonField(
                                                                                    inProgressItem,
                                                                                    r'''$.averageRating''',
                                                                                  ).toString(),
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
                                                                      Flexible(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
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
                                                                            Flexible(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                child: Text(
                                                                                  getJsonField(
                                                                                    inProgressItem,
                                                                                    r'''$.propertyType''',
                                                                                  ).toString(),
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
                                            },
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
            child: FutureBuilder<ApiCallResponse>(
              future: MicroserviceBookingAPIsGroup.viewBookingDetailsCall.call(
                bookingId: _model.bookingId,
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
                final containerViewBookingDetailsResponse = snapshot.data!;
                return Container(
                  decoration: BoxDecoration(),
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 24.0),
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
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.3,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.38,
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
                                                    .listDataConversion(
                                                        getJsonField(
                                                      containerViewBookingDetailsResponse
                                                          .jsonBody,
                                                      r'''$.imageURLs''',
                                                    ).toString())
                                                    ?.toList(),
                                                FFAppState().BaseUrl)!
                                            .first,
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.3,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.38,
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
                                              containerViewBookingDetailsResponse
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
                                  final imagesListItem =
                                      imagesList[imagesListIndex];
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
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
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
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
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
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 0.0, 0.0),
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
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
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
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
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
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.81,
                            decoration: BoxDecoration(),
                            child: Stack(
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      if (_model.tabs == 'propertyInfo')
                                        Align(
                                          alignment:
                                              AlignmentDirectional(-1.0, -1.0),
                                          child: Stack(
                                            children: [
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.4,
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 30.0, 0.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, -1.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              getJsonField(
                                                                containerViewBookingDetailsResponse
                                                                    .jsonBody,
                                                                r'''$.title''',
                                                              )?.toString(),
                                                              'NA',
                                                            ),
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Work Sans',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                              fontSize: 22.0,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    18.0,
                                                                    16.0,
                                                                    0.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Property Type',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: Color(
                                                                    0xFFB6BFE0),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 16.0,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: RichText(
                                                                textScaler: MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                                text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                      text:
                                                                          getJsonField(
                                                                        containerViewBookingDetailsResponse
                                                                            .jsonBody,
                                                                        r'''$.propertyType''',
                                                                      ).toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    )
                                                                  ],
                                                                  style: GoogleFonts
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
                                                        child: Wrap(
                                                          spacing: 10.0,
                                                          runSpacing: 18.0,
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
                                                              Clip.none,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/map_location_dot.svg',
                                                                      width:
                                                                          18.0,
                                                                      height:
                                                                          18.0,
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      getJsonField(
                                                                        containerViewBookingDetailsResponse
                                                                            .jsonBody,
                                                                        r'''$.city''',
                                                                      ).toString(),
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .center,
                                                              children: [
                                                                ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/house_chimney_blank.svg',
                                                                    width: 18.0,
                                                                    height:
                                                                        18.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '${getJsonField(
                                                                      containerViewBookingDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.totalGuests''',
                                                                    ).toString()} Guests',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      fontSize:
                                                                          16.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    width: 8.0,
                                                                    height: 8.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            7.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFFF5F5F5),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(8.0),
                                                                          bottomRight:
                                                                              Radius.circular(8.0),
                                                                          topLeft:
                                                                              Radius.circular(8.0),
                                                                          topRight:
                                                                              Radius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        '${getJsonField(
                                                                          containerViewBookingDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.bedrooms''',
                                                                        ).toString()} bedroom',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
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
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Container(
                                                                    width: 8.0,
                                                                    height: 8.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            7.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFFF5F5F5),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(8.0),
                                                                          bottomRight:
                                                                              Radius.circular(8.0),
                                                                          topLeft:
                                                                              Radius.circular(8.0),
                                                                          topRight:
                                                                              Radius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        '${getJsonField(
                                                                          containerViewBookingDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.beds''',
                                                                        ).toString()} beds',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
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
                                                                          0.0,
                                                                          8.0,
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
                                                                  Container(
                                                                    width: 8.0,
                                                                    height: 8.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            7.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xFFF5F5F5),
                                                                        borderRadius:
                                                                            BorderRadius.only(
                                                                          bottomLeft:
                                                                              Radius.circular(8.0),
                                                                          bottomRight:
                                                                              Radius.circular(8.0),
                                                                          topLeft:
                                                                              Radius.circular(8.0),
                                                                          topRight:
                                                                              Radius.circular(8.0),
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          Text(
                                                                        '${getJsonField(
                                                                          containerViewBookingDetailsResponse
                                                                              .jsonBody,
                                                                          r'''$.totalWashrooms''',
                                                                        ).toString()} bathrooms',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Container(
                                                                  width: 8.0,
                                                                  height: 8.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '${getJsonField(
                                                                      containerViewBookingDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.sharedWashrooms''',
                                                                    ).toString()} SharedBathrooms',
                                                                    style: GoogleFonts
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
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Container(
                                                                  width: 8.0,
                                                                  height: 8.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '${getJsonField(
                                                                      containerViewBookingDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.guestsPerRoom''',
                                                                    ).toString()} GuestsPerRoom',
                                                                    style: GoogleFonts
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
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                Container(
                                                                  width: 8.0,
                                                                  height: 8.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    shape: BoxShape
                                                                        .circle,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'INR. ${getJsonField(
                                                                      containerViewBookingDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.pricePerRoom''',
                                                                    ).toString()} PricePerRoom',
                                                                    style: GoogleFonts
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
                                                              ],
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
                                                        child: Text(
                                                          'Property address',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Work Sans',
                                                            color: Color(
                                                                0xFFB6BFE0),
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 16.0,
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
                                                                    valueOrDefault<
                                                                        String>(
                                                                  getJsonField(
                                                                    containerViewBookingDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.plotNo''',
                                                                  )?.toString(),
                                                                  'NA',
                                                                ),
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text: ', ',
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
                                                                      18.0,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  getJsonField(
                                                                    containerViewBookingDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.street''',
                                                                  )?.toString(),
                                                                  'NA',
                                                                ),
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text: ', ',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  getJsonField(
                                                                    containerViewBookingDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.locality''',
                                                                  )?.toString(),
                                                                  'NA',
                                                                ),
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text: ', ',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  getJsonField(
                                                                    containerViewBookingDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.city''',
                                                                  )?.toString(),
                                                                  'NA',
                                                                ),
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text: ', ',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  getJsonField(
                                                                    containerViewBookingDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.state''',
                                                                  )?.toString(),
                                                                  'NA',
                                                                ),
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text: ', ',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  getJsonField(
                                                                    containerViewBookingDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.zipcode''',
                                                                  )?.toString(),
                                                                  'NA',
                                                                ),
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text: ', ',
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    valueOrDefault<
                                                                        String>(
                                                                  getJsonField(
                                                                    containerViewBookingDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.country''',
                                                                  )?.toString(),
                                                                  'NA',
                                                                ),
                                                                style:
                                                                    TextStyle(),
                                                              ),
                                                              TextSpan(
                                                                text: '.',
                                                                style:
                                                                    TextStyle(),
                                                              )
                                                            ],
                                                            style: GoogleFonts
                                                                .getFont(
                                                              'Work Sans',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                              fontSize: 16.0,
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
                                                        child: Container(
                                                          decoration:
                                                              BoxDecoration(),
                                                          child: Padding(
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
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          -1.0,
                                                                          -1.0),
                                                                  child: Text(
                                                                    'Property amenities',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      fontSize:
                                                                          16.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          14.0,
                                                                          55.0,
                                                                          0.0),
                                                                  child:
                                                                      Builder(
                                                                    builder:
                                                                        (context) {
                                                                      final amenitiess = functions
                                                                              .listMapConversion(getJsonField(
                                                                                containerViewBookingDetailsResponse.jsonBody,
                                                                                r'''$.amenities''',
                                                                              ).toString())
                                                                              ?.toList() ??
                                                                          [];
                                                                      return GridView
                                                                          .builder(
                                                                        padding:
                                                                            EdgeInsets.zero,
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
                                                                            amenitiess.length,
                                                                        itemBuilder:
                                                                            (context,
                                                                                amenitiessIndex) {
                                                                          final amenitiessItem =
                                                                              amenitiess[amenitiessIndex];
                                                                          return Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
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
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                  ),
                                                                                  child: Text(
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
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, -1.0),
                                                        child: Text(
                                                          'Guest details',
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Work Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20.0,
                                                          ),
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
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            35.0,
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
                                                                      'Name',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                        fontSize:
                                                                            14.0,
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        '${FFAppState().userData.firstName} ${FFAppState().userData.lastName}',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          35.0,
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
                                                                    'Email',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontSize:
                                                                          14.0,
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
                                                                      FFAppState()
                                                                          .userData
                                                                          .emailAddress,
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
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
                                                                          0.0,
                                                                          35.0,
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
                                                                    'Mobile Number',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontSize:
                                                                          14.0,
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
                                                                      FFAppState()
                                                                          .userData
                                                                          .phoneNumber,
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
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
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    20.0,
                                                                    0.0,
                                                                    20.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .stretch,
                                                          children: [
                                                            Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                RichText(
                                                                  textScaler: MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text:
                                                                            '*',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              Color(0xFFD70000),
                                                                          fontWeight:
                                                                              FontWeight.bold,
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
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.bold,
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
                                                              ],
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          18.0,
                                                                          12.0,
                                                                          0.0,
                                                                          6.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    width: 4.0,
                                                                    height: 4.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Passport, Aadhaar & Govt Id are accepted as ID Proofs.',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              14.0,
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
                                                                          18.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Container(
                                                                    width: 4.0,
                                                                    height: 4.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .black,
                                                                    ),
                                                                  ),
                                                                  Flexible(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Local Id proofs are Not allowed.',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              Colors.black,
                                                                          fontSize:
                                                                              14.0,
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
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        15.0),
                                                            child: Text(
                                                              'Cancellation Policy',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 20.0,
                                                              ),
                                                            ),
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Before ${dateTimeFormat('dd-MMM-yyyy', functions.beforeCheckInDate(FFAppState().propertyBookingDetails.checkInDate?.toString()))}, 11:59 AM',
                                                                style:
                                                                    GoogleFonts
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
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            18.0,
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
                                                                padding:
                                                                    EdgeInsetsDirectional
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
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        24.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'After ${dateTimeFormat('dd-MMM-yyyy', functions.beforeCheckInDate(FFAppState().propertyBookingDetails.checkInDate?.toString()))}, 12:00 PM',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: Color(
                                                                    0xFFD70000),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 16.0,
                                                              ),
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
                                                            child: Text(
                                                              'Cancellation not possible ',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: Color(
                                                                    0xFFD70000),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 16.0,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        40.0),
                                                            child: Text(
                                                              'Non cancellable, no Refunding.',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 14.0,
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
                                      if (_model.tabs == 'reviews')
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 20.0,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 0.0),
                                                child: Text(
                                                  '${getJsonField(
                                                    containerViewBookingDetailsResponse
                                                        .jsonBody,
                                                    r'''$.totalReviews''',
                                                  ).toString()} reviews',
                                                  style: GoogleFonts.getFont(
                                                    'Work Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
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
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  24.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: PagedGridView<
                                                          ApiPagingParams,
                                                          dynamic>(
                                                        pagingController: _model
                                                            .setGridViewController2(
                                                          (nextPageMarker) =>
                                                              MicroserviceRatingReviewAPIsGroup
                                                                  .reviewsRatingsCall
                                                                  .call(
                                                            propertyId:
                                                                getJsonField(
                                                              containerViewBookingDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.propertyId''',
                                                            ).toString(),
                                                          ),
                                                        ),
                                                        padding:
                                                            EdgeInsets.zero,
                                                        gridDelegate:
                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisCount: 2,
                                                          crossAxisSpacing:
                                                              24.0,
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
                                                              child:
                                                                  SpinKitPulse(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
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
                                                              child:
                                                                  SpinKitPulse(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                size: 40.0,
                                                              ),
                                                            ),
                                                          ),

                                                          itemBuilder: (context,
                                                              _,
                                                              ratingReviewDataIndex) {
                                                            final ratingReviewDataItem = _model
                                                                    .gridViewPagingController2!
                                                                    .itemList![
                                                                ratingReviewDataIndex];
                                                            return NewUserReviewsWidget(
                                                              key: Key(
                                                                  'Keyrb6_${ratingReviewDataIndex}_of_${_model.gridViewPagingController2!.itemList!.length}'),
                                                              userName:
                                                                  getJsonField(
                                                                ratingReviewDataItem,
                                                                r'''$.userName''',
                                                              ).toString(),
                                                              score:
                                                                  getJsonField(
                                                                ratingReviewDataItem,
                                                                r'''$.score''',
                                                              ),
                                                              comments:
                                                                  getJsonField(
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
                                      width: MediaQuery.sizeOf(context).width *
                                          0.25,
                                      decoration: BoxDecoration(
                                        color: Color(0x4CE8E7FF),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                      child: wrapWithModel(
                                        model: _model.newTripsCardModel,
                                        updateCallback: () => setState(() {}),
                                        child: NewTripsCardWidget(
                                          roomsCount: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.bedrooms''',
                                          ),
                                          guestCount: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.totalGuests''',
                                          ),
                                          propertyId: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.propertyId''',
                                          ),
                                          entirePropertyPricePerNight:
                                              getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.entirePropertyPrice''',
                                          ),
                                          roomPricePerNight: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.totalPrice''',
                                          ),
                                          propertyType: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.propertyType''',
                                          ).toString(),
                                          title: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.title''',
                                          ).toString(),
                                          description: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.description''',
                                          ).toString(),
                                          locality: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.locality''',
                                          ).toString(),
                                          city: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.city''',
                                          ).toString(),
                                          streetAddress: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.street''',
                                          ).toString(),
                                          landmark: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.landmark''',
                                          ).toString(),
                                          state: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.state''',
                                          ).toString(),
                                          country: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.country''',
                                          ).toString(),
                                          zipcode: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.zipcode''',
                                          ).toString(),
                                          plotNo: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.plotNo''',
                                          ).toString(),
                                          taxPercent: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.taxPercent''',
                                          ),
                                          bedsCount: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.beds''',
                                          ),
                                          bathroomCount: getJsonField(
                                            containerViewBookingDetailsResponse
                                                .jsonBody,
                                            r'''$.totalWashrooms''',
                                          ),
                                          tripsTab: 'upcoming',
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
          ),
        ),
      ],
    );
  }
}
