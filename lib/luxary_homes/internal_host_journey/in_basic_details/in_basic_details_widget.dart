import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'in_basic_details_model.dart';
export 'in_basic_details_model.dart';

class InBasicDetailsWidget extends StatefulWidget {
  const InBasicDetailsWidget({super.key});

  @override
  State<InBasicDetailsWidget> createState() => _InBasicDetailsWidgetState();
}

class _InBasicDetailsWidgetState extends State<InBasicDetailsWidget> {
  late InBasicDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InBasicDetailsModel());

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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (MediaQuery.sizeOf(context).width >= 500.0)
                      Text(
                        '',
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    Flexible(
                      child: AutoSizeText(
                        'Share some basics about your property',
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                        minFontSize: 14.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 20.0,
                        buttonSize: 40.0,
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBgOpacity,
                        icon: Icon(
                          Icons.close,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 24.0,
                        ),
                        onPressed: () async {
                          FFAppState().update(() {
                            FFAppState().hostAddressDetail =
                                HostAddressDetailsStruct.fromSerializableMap(
                                    jsonDecode('{\"availability\":\"[]\"}'));
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
                          if (MediaQuery.sizeOf(context).width < 991.0) {
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

                            return;
                          } else {
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

                            return;
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width <= 500.0
                              ? MediaQuery.sizeOf(context).width
                              : (MediaQuery.sizeOf(context).width * 0.28),
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 30.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Guests',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.remove,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: (FFAppState()
                                                        .basicDetailsGuests ==
                                                    1)
                                                ? null
                                                : () async {
                                                    setState(() {
                                                      FFAppState()
                                                              .basicDetailsGuests =
                                                          FFAppState()
                                                                  .basicDetailsGuests +
                                                              -1;
                                                    });
                                                  },
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                FFAppState()
                                                    .basicDetailsGuests
                                                    .toString(),
                                                '00',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: (FFAppState()
                                                        .basicDetailsGuests ==
                                                    20)
                                                ? null
                                                : () async {
                                                    setState(() {
                                                      FFAppState()
                                                              .basicDetailsGuests =
                                                          FFAppState()
                                                                  .basicDetailsGuests +
                                                              1;
                                                    });
                                                  },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 26.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Bedrooms',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.remove,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: (FFAppState()
                                                        .basicDetailsBedrooms ==
                                                    1)
                                                ? null
                                                : () async {
                                                    setState(() {
                                                      FFAppState()
                                                              .basicDetailsBedrooms =
                                                          FFAppState()
                                                                  .basicDetailsBedrooms +
                                                              -1;
                                                    });
                                                  },
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Text(
                                              FFAppState()
                                                  .basicDetailsBedrooms
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: (FFAppState()
                                                        .basicDetailsBedrooms ==
                                                    20)
                                                ? null
                                                : () async {
                                                    setState(() {
                                                      FFAppState()
                                                              .basicDetailsBedrooms =
                                                          FFAppState()
                                                                  .basicDetailsBedrooms +
                                                              1;
                                                    });
                                                  },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 26.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Beds',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.remove,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: (FFAppState()
                                                        .basicDetailsBeds ==
                                                    1)
                                                ? null
                                                : () async {
                                                    setState(() {
                                                      FFAppState()
                                                              .basicDetailsBeds =
                                                          FFAppState()
                                                                  .basicDetailsBeds +
                                                              -1;
                                                    });
                                                  },
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                FFAppState()
                                                    .basicDetailsBeds
                                                    .toString(),
                                                '00',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: (FFAppState()
                                                        .basicDetailsBeds ==
                                                    20)
                                                ? null
                                                : () async {
                                                    setState(() {
                                                      FFAppState()
                                                              .basicDetailsBeds =
                                                          FFAppState()
                                                                  .basicDetailsBeds +
                                                              1;
                                                    });
                                                  },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 26.0, 0.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Bathrooms',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyLarge
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.remove,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: (FFAppState()
                                                        .basicDetailsBathrooms ==
                                                    1)
                                                ? null
                                                : () async {
                                                    setState(() {
                                                      FFAppState()
                                                              .basicDetailsBathrooms =
                                                          FFAppState()
                                                                  .basicDetailsBathrooms +
                                                              -1;
                                                    });
                                                  },
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Text(
                                              valueOrDefault<String>(
                                                FFAppState()
                                                    .basicDetailsBathrooms
                                                    .toString(),
                                                '00',
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                          ),
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            buttonSize: 36.0,
                                            fillColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryBgOpacity,
                                            disabledColor: Color(0x32878787),
                                            icon: Icon(
                                              Icons.add,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            onPressed: (FFAppState()
                                                        .basicDetailsBathrooms ==
                                                    20)
                                                ? null
                                                : () async {
                                                    setState(() {
                                                      FFAppState()
                                                              .basicDetailsBathrooms =
                                                          FFAppState()
                                                                  .basicDetailsBathrooms +
                                                              1;
                                                    });
                                                  },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 0.0),
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
                                          FFAppState().webHostStepIndex + -1;
                                    });
                                    return;
                                  } else {
                                    await actions.hostBackRoute(
                                      context,
                                      'basicDetails',
                                    );
                                    return;
                                  }
                                },
                                text: 'Back',
                                options: FFButtonOptions(
                                  width:
                                      MediaQuery.sizeOf(context).width <= 550.0
                                          ? (MediaQuery.sizeOf(context).width *
                                              0.41)
                                          : 88.0,
                                  height: 36.0,
                                  padding: EdgeInsets.all(0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
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
                                  setState(() {
                                    FFAppState().propertyBasicData =
                                        BasicDetailsStruct(
                                      guestsCount:
                                          FFAppState().basicDetailsGuests,
                                      bedroomsCount:
                                          FFAppState().basicDetailsBathrooms,
                                      bedsCount: FFAppState().basicDetailsBeds,
                                      bathroomsCount:
                                          FFAppState().basicDetailsBathrooms,
                                    );
                                  });
                                  if (MediaQuery.sizeOf(context).width >=
                                      500.0) {
                                    FFAppState().update(() {
                                      FFAppState().webHostStepIndex =
                                          FFAppState().webHostStepIndex + 1;
                                    });
                                  } else {
                                    await actions.hostForwardRoute(
                                      context,
                                      'basicDetails',
                                    );
                                  }
                                },
                                text: 'Next',
                                options: FFButtonOptions(
                                  width:
                                      MediaQuery.sizeOf(context).width <= 550.0
                                          ? (MediaQuery.sizeOf(context).width *
                                              0.41)
                                          : 343.0,
                                  height: 36.0,
                                  padding: EdgeInsets.all(0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
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
                              if (MediaQuery.sizeOf(context).width >= 500.0) {
                                FFAppState().update(() {
                                  FFAppState().webHostSaveRoute = FFAppState()
                                      .ManageRoutesList
                                      .toList()
                                      .indexOf('basicDetails');
                                });
                                Navigator.pop(context);
                              } else {
                                FFAppState().update(() {
                                  FFAppState().SavedRoute = 'basicDetails';
                                });

                                context.goNamed('explore_page');
                              }
                            },
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
          ),
        ),
      ),
    );
  }
}
