import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'in_amenities_model.dart';
export 'in_amenities_model.dart';

class InAmenitiesWidget extends StatefulWidget {
  const InAmenitiesWidget({super.key});

  @override
  State<InAmenitiesWidget> createState() => _InAmenitiesWidgetState();
}

class _InAmenitiesWidgetState extends State<InAmenitiesWidget> {
  late InAmenitiesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InAmenitiesModel());

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
          child: FutureBuilder<ApiCallResponse>(
            future: _model.amenitiesCache(
              requestFn: () => LiferayBaseUrlGroup.getAmenitiesCall.call(),
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
              final bodyColumnGetAmenitiesResponse = snapshot.data!;
              return Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          if (MediaQuery.sizeOf(context).width >= 500.0)
                            Flexible(
                              child: Text(
                                '',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          Flexible(
                            child: Text(
                              'Tell guests what your place has to offer',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .titleMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(10.0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 20.0,
                              buttonSize: 40.0,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBgOpacity,
                              icon: Icon(
                                Icons.close,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              ),
                              onPressed: () async {
                                FFAppState().update(() {
                                  FFAppState().hostAddressDetail =
                                      HostAddressDetailsStruct
                                          .fromSerializableMap(jsonDecode(
                                              '{\"availability\":\"[]\"}'));
                                  FFAppState().propertyType = jsonDecode(
                                      '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                                  FFAppState().basicDetailsBeds = 1;
                                  FFAppState().basicDetailsGuests = 1;
                                  FFAppState().basicDetailsBathrooms = 1;
                                  FFAppState().propertyBasicData =
                                      BasicDetailsStruct();
                                  FFAppState().selectedAMNames = [];
                                  FFAppState().tellAboutYourProperty =
                                      TellYourPropertyStruct();
                                  FFAppState().webHostStepIndex = 0;
                                  FFAppState().SavedRoute = '';
                                  FFAppState().propertyPrice = 0;
                                  FFAppState().basicDetailsBedrooms = 1;
                                  FFAppState().SelectedAmenities = [];
                                  FFAppState().webHostSaveRoute = 0;
                                });
                                if (MediaQuery.sizeOf(context).width >= 500.0) {
                                  Navigator.pop(context);

                                  context.goNamed(
                                    'explore_page',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                } else {
                                  context.goNamed(
                                    'home_page',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                        duration: Duration(milliseconds: 0),
                                      ),
                                    },
                                  );
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    thickness: 1.0,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                      child: Container(
                        decoration: BoxDecoration(),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 0.0),
                                  child: Text(
                                    'Amenities',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 15.0),
                                  child: Text(
                                    'Basic Amenities',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.sizeOf(context).width <= 500.0
                                    ? MediaQuery.sizeOf(context).width
                                    : (MediaQuery.sizeOf(context).width * 0.5),
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Builder(
                                  builder: (context) {
                                    final basicAM =
                                        LiferayBaseUrlGroup.getAmenitiesCall
                                                .basicAmenities(
                                                  bodyColumnGetAmenitiesResponse
                                                      .jsonBody,
                                                )
                                                ?.toList() ??
                                            [];
                                    return Wrap(
                                      spacing: 5.0,
                                      runSpacing: 12.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: List.generate(basicAM.length,
                                          (basicAMIndex) {
                                        final basicAMItem =
                                            basicAM[basicAMIndex];
                                        return InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            if (FFAppState()
                                                .SelectedAmenities
                                                .contains(getJsonField(
                                                  basicAMItem,
                                                  r'''$.categoryId''',
                                                ))) {
                                              setState(() {
                                                FFAppState()
                                                    .removeFromSelectedAMNames(
                                                        getJsonField(
                                                  basicAMItem,
                                                  r'''$.name''',
                                                ).toString());
                                                FFAppState()
                                                    .removeFromSelectedAmenities(
                                                        getJsonField(
                                                  basicAMItem,
                                                  r'''$.categoryId''',
                                                ));
                                              });
                                            } else {
                                              setState(() {
                                                FFAppState()
                                                    .addToSelectedAMNames(
                                                        getJsonField(
                                                  basicAMItem,
                                                  r'''$.name''',
                                                ).toString());
                                                FFAppState()
                                                    .addToSelectedAmenities(
                                                        getJsonField(
                                                  basicAMItem,
                                                  r'''$.categoryId''',
                                                ));
                                              });
                                            }
                                          },
                                          child: Container(
                                            height: 46.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .info,
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
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    child: CachedNetworkImage(
                                                      fadeInDuration: Duration(
                                                          milliseconds: 500),
                                                      fadeOutDuration: Duration(
                                                          milliseconds: 500),
                                                      imageUrl: valueOrDefault<
                                                          String>(
                                                        functions.getIcon(
                                                            FFAppState()
                                                                .BaseUrl,
                                                            getJsonField(
                                                              basicAMItem,
                                                              r'''$.imageIcon''',
                                                            ).toString()),
                                                        'NA',
                                                      ),
                                                      width: 25.0,
                                                      height: 20.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        getJsonField(
                                                          basicAMItem,
                                                          r'''$.name''',
                                                        )?.toString(),
                                                        'NA',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyLarge
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontSize: 16.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                if (FFAppState()
                                                    .SelectedAmenities
                                                    .contains(getJsonField(
                                                      basicAMItem,
                                                      r'''$.categoryId''',
                                                    )))
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  6.0,
                                                                  0.0),
                                                      child:
                                                          FlutterFlowIconButton(
                                                        borderColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        borderRadius: 100.0,
                                                        borderWidth: 1.0,
                                                        buttonSize: 22.0,
                                                        fillColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        icon: Icon(
                                                          Icons.check,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .info,
                                                          size: 8.0,
                                                        ),
                                                        onPressed: () {
                                                          print(
                                                              'IconButton pressed ...');
                                                        },
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }),
                                    );
                                  },
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 15.0),
                                  child: Text(
                                    'Do you have Security Amenities?',
                                    textAlign: TextAlign.start,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 15.0),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width <= 500.0
                                          ? MediaQuery.sizeOf(context).width
                                          : (MediaQuery.sizeOf(context).width *
                                              0.5),
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Builder(
                                    builder: (context) {
                                      final securityAM =
                                          LiferayBaseUrlGroup.getAmenitiesCall
                                                  .securityAmenities(
                                                    bodyColumnGetAmenitiesResponse
                                                        .jsonBody,
                                                  )
                                                  ?.toList() ??
                                              [];
                                      return Wrap(
                                        spacing: 5.0,
                                        runSpacing: 12.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children:
                                            List.generate(securityAM.length,
                                                (securityAMIndex) {
                                          final securityAMItem =
                                              securityAM[securityAMIndex];
                                          return Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 5.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                if (FFAppState()
                                                    .SelectedAmenities
                                                    .contains(getJsonField(
                                                      securityAMItem,
                                                      r'''$.categoryId''',
                                                    ))) {
                                                  setState(() {
                                                    FFAppState()
                                                        .removeFromSelectedAMNames(
                                                            getJsonField(
                                                      securityAMItem,
                                                      r'''$.name''',
                                                    ).toString());
                                                    FFAppState()
                                                        .removeFromSelectedAmenities(
                                                            getJsonField(
                                                      securityAMItem,
                                                      r'''$.categoryId''',
                                                    ));
                                                  });
                                                  return;
                                                } else {
                                                  setState(() {
                                                    FFAppState()
                                                        .addToSelectedAMNames(
                                                            getJsonField(
                                                      securityAMItem,
                                                      r'''$.name''',
                                                    ).toString());
                                                    FFAppState()
                                                        .addToSelectedAmenities(
                                                            getJsonField(
                                                      securityAMItem,
                                                      r'''$.categoryId''',
                                                    ));
                                                  });
                                                  return;
                                                }
                                              },
                                              child: Container(
                                                height: 46.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .info,
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                  border: Border.all(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                    width: 1.0,
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
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
                                                          imageUrl:
                                                              functions.getIcon(
                                                                  FFAppState()
                                                                      .BaseUrl,
                                                                  getJsonField(
                                                                    securityAMItem,
                                                                    r'''$.imageIcon''',
                                                                  ).toString())!,
                                                          width: 25.0,
                                                          height: 20.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              -1.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        child: Text(
                                                          valueOrDefault<
                                                              String>(
                                                            getJsonField(
                                                              securityAMItem,
                                                              r'''$.name''',
                                                            )?.toString(),
                                                            'NA',
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 16.0,
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ),
                                                    ),
                                                    if (FFAppState()
                                                        .SelectedAmenities
                                                        .contains(getJsonField(
                                                          securityAMItem,
                                                          r'''$.categoryId''',
                                                        )))
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      6.0,
                                                                      0.0),
                                                          child:
                                                              FlutterFlowIconButton(
                                                            borderColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            borderRadius: 100.0,
                                                            borderWidth: 1.0,
                                                            buttonSize: 22.0,
                                                            fillColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                            icon: Icon(
                                                              Icons.check,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .info,
                                                              size: 8.0,
                                                            ),
                                                            onPressed: () {
                                                              print(
                                                                  'IconButton pressed ...');
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              -4.0,
                            ),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 12.0, 12.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 12.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (MediaQuery.sizeOf(context).width >=
                                          500.0) {
                                        FFAppState().update(() {
                                          FFAppState().webHostStepIndex =
                                              FFAppState().webHostStepIndex +
                                                  -1;
                                        });
                                        return;
                                      } else {
                                        await actions.hostBackRoute(
                                          context,
                                          'amenities',
                                        );
                                        return;
                                      }
                                    },
                                    text: 'Back',
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width <=
                                              550.0
                                          ? (MediaQuery.sizeOf(context).width *
                                              0.41)
                                          : 88.0,
                                      height: 36.0,
                                      padding: EdgeInsets.all(0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 4.0,
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 0.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (FFAppState()
                                              .SelectedAmenities
                                              .length >
                                          0) {
                                        if (MediaQuery.sizeOf(context).width >=
                                            500.0) {
                                          FFAppState().update(() {
                                            FFAppState().webHostStepIndex =
                                                FFAppState().webHostStepIndex +
                                                    1;
                                          });
                                        } else {
                                          await actions.hostForwardRoute(
                                            context,
                                            'amenities',
                                          );
                                        }

                                        return;
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Alert'),
                                              content: Text(
                                                  'Atleast one amenitie is required.'),
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
                                    text: 'Next',
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width <=
                                              550.0
                                          ? (MediaQuery.sizeOf(context).width *
                                              0.41)
                                          : 343.0,
                                      height: 36.0,
                                      padding: EdgeInsets.all(0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      elevation: 4.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 12.0, 0.0, 12.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (FFAppState().SelectedAmenities.length >
                                      0) {
                                    if (MediaQuery.sizeOf(context).width >=
                                        500.0) {
                                      FFAppState().update(() {
                                        FFAppState().webHostSaveRoute =
                                            FFAppState()
                                                .ManageRoutesList
                                                .toList()
                                                .indexOf('amenities');
                                      });
                                      Navigator.pop(context);
                                    } else {
                                      FFAppState().update(() {
                                        FFAppState().SavedRoute = 'amenities';
                                      });

                                      context.goNamed('explore_page');
                                    }
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Alert'),
                                          content: Text(
                                              'Atleast one amenitie is required.'),
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
                                    return;
                                  }
                                },
                                onDoubleTap: () async {},
                                child: Text(
                                  'Save & Exit',
                                  style: FlutterFlowTheme.of(context)
                                      .labelLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
