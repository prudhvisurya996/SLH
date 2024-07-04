import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/external_host_journey/property_hosting/web/w_property_hosting/w_property_hosting_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'w_property_hosting_page_model.dart';
export 'w_property_hosting_page_model.dart';

class WPropertyHostingPageWidget extends StatefulWidget {
  const WPropertyHostingPageWidget({super.key});

  @override
  State<WPropertyHostingPageWidget> createState() =>
      _WPropertyHostingPageWidgetState();
}

class _WPropertyHostingPageWidgetState extends State<WPropertyHostingPageWidget>
    with TickerProviderStateMixin {
  late WPropertyHostingPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WPropertyHostingPageModel());

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

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
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: wrapWithModel(
                    model: _model.commonTopBarModel,
                    updateCallback: () => setState(() {}),
                    child: CommonTopBarWidget(
                      showSearchFilter: false,
                    ),
                  ),
                ),
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 80.0,
                        decoration: BoxDecoration(),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (responsiveVisibility(
                                    context: context,
                                    phone: false,
                                    tablet: false,
                                    tabletLandscape: false,
                                    desktop: false,
                                  ))
                                    FlutterFlowIconButton(
                                      borderRadius: 20.0,
                                      borderWidth: 1.0,
                                      buttonSize: 40.0,
                                      fillColor: Color(0x4DBBD1EA),
                                      icon: Icon(
                                        Icons.chevron_left_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        size: 24.0,
                                      ),
                                      onPressed: () async {
                                        context.safePop();
                                      },
                                    ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Hosting  Property Request ',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 0.0),
                                    child: Material(
                                      color: Colors.transparent,
                                      elevation: 0.5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(22.0),
                                          bottomRight: Radius.circular(22.0),
                                          topLeft: Radius.circular(22.0),
                                          topRight: Radius.circular(22.0),
                                        ),
                                      ),
                                      child: Container(
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.68,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE1E5E9),
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(22.0),
                                            bottomRight: Radius.circular(22.0),
                                            topLeft: Radius.circular(22.0),
                                            topRight: Radius.circular(22.0),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.35,
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 80.0, 0.0),
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      bottomLeft:
                                                          Radius.circular(0.0),
                                                      bottomRight:
                                                          Radius.circular(0.0),
                                                      topLeft:
                                                          Radius.circular(0.0),
                                                      topRight:
                                                          Radius.circular(0.0),
                                                    ),
                                                    child: SvgPicture.asset(
                                                      'assets/images/Group_1000005804.svg',
                                                      width: 350.0,
                                                      fit: BoxFit.contain,
                                                    ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'imageOnPageLoadAnimation']!),
                                                ),
                                              ),
                                            ),
                                            Flexible(
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.65,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.68,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    bottomLeft:
                                                        Radius.circular(0.0),
                                                    bottomRight:
                                                        Radius.circular(22.0),
                                                    topLeft:
                                                        Radius.circular(0.0),
                                                    topRight:
                                                        Radius.circular(22.0),
                                                  ),
                                                ),
                                                child: Form(
                                                  key: _model.formKey,
                                                  autovalidateMode:
                                                      AutovalidateMode.disabled,
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                10.0, 0.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Flexible(
                                                          child: wrapWithModel(
                                                            model: _model
                                                                .wPropertyHostingModel,
                                                            updateCallback:
                                                                () => setState(
                                                                    () {}),
                                                            child:
                                                                WPropertyHostingWidget(),
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
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 15.0, 0.0, 15.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 55.0, 0.0),
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              context.safePop();
                                            },
                                            text: 'Back',
                                            options: FFButtonOptions(
                                              width: 150.0,
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              textStyle: GoogleFonts.getFont(
                                                'Noto Serif',
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16.0,
                                              ),
                                              elevation: 3.0,
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                          ),
                                        ),
                                        if (responsiveVisibility(
                                          context: context,
                                          phone: false,
                                          tablet: false,
                                          tabletLandscape: false,
                                          desktop: false,
                                        ))
                                          FFButtonWidget(
                                            onPressed: () async {
                                              if (_model.formKey.currentState ==
                                                      null ||
                                                  !_model.formKey.currentState!
                                                      .validate()) {
                                                return;
                                              }
                                              if (_model.wPropertyHostingModel
                                                      .datePicked1 ==
                                                  null) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Please select the date',
                                                      style: TextStyle(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                  ),
                                                );
                                                return;
                                              }
                                              if (_model.wPropertyHostingModel
                                                      .datePicked2 ==
                                                  null) {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Please select the dates',
                                                      style: TextStyle(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                  ),
                                                );
                                                return;
                                              }
                                              if ((FFAppState()
                                                              .LocationDetails
                                                              .city !=
                                                          null &&
                                                      FFAppState()
                                                              .LocationDetails
                                                              .city !=
                                                          '') &&
                                                  (FFAppState()
                                                              .LocationDetails
                                                              .state !=
                                                          null &&
                                                      FFAppState()
                                                              .LocationDetails
                                                              .state !=
                                                          '') &&
                                                  (FFAppState()
                                                              .LocationDetails
                                                              .country !=
                                                          null &&
                                                      FFAppState()
                                                              .LocationDetails
                                                              .country !=
                                                          '')) {
                                                if (_model.wPropertyHostingModel
                                                            .localityDropDownValue !=
                                                        null &&
                                                    _model.wPropertyHostingModel
                                                            .localityDropDownValue !=
                                                        '') {
                                                  if (_model
                                                          .wPropertyHostingModel
                                                          .uploadPictures
                                                          .length <
                                                      2) {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text('Alert'),
                                                          content: Text(
                                                              'Choose atleast 2 images to upload a property.'),
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
                                                  } else {
                                                    if (_model
                                                            .wPropertyHostingModel
                                                            .uploadPictures
                                                            .length <
                                                        6) {
                                                      setState(() {
                                                        FFAppState()
                                                                .ExternalHostJourney =
                                                            ExHostJourneyStruct(
                                                          propertyTitle: _model
                                                              .wPropertyHostingModel
                                                              .propertyTitleTextController
                                                              .text,
                                                          availableFrom: dateTimeFormat(
                                                              'yyyy-MM-dd',
                                                              _model
                                                                  .wPropertyHostingModel
                                                                  .datePicked1),
                                                          availableTo: dateTimeFormat(
                                                              'yyyy-MM-dd',
                                                              _model
                                                                  .wPropertyHostingModel
                                                                  .datePicked2),
                                                          description: _model
                                                              .wPropertyHostingModel
                                                              .propertydescriptionTextController
                                                              .text,
                                                          flatNo: _model
                                                              .wPropertyHostingModel
                                                              .flatHouseVillanumberTextController
                                                              .text,
                                                          streetAddress: _model
                                                              .wPropertyHostingModel
                                                              .streetAddressTextController
                                                              .text,
                                                          landmark: _model
                                                              .wPropertyHostingModel
                                                              .landmarkTextController
                                                              .text,
                                                          locality: _model
                                                              .wPropertyHostingModel
                                                              .localityDropDownValue,
                                                          city: FFAppState()
                                                              .LocationDetails
                                                              .city,
                                                          state: FFAppState()
                                                              .LocationDetails
                                                              .state,
                                                          country: FFAppState()
                                                              .LocationDetails
                                                              .country,
                                                          pincode: _model
                                                              .wPropertyHostingModel
                                                              .pincodeTextController
                                                              .text,
                                                          pricepermonth: functions
                                                              .toDouble(_model
                                                                  .wPropertyHostingModel
                                                                  .pricePerMonthTextController
                                                                  .text),
                                                        );
                                                      });

                                                      context.pushNamed(
                                                        'w_DocumentUploadPage',
                                                        queryParameters: {
                                                          'fileNames':
                                                              serializeParam(
                                                            functions.getFileNames(_model
                                                                .wPropertyHostingModel
                                                                .uploadPictures
                                                                .toList()),
                                                            ParamType.JSON,
                                                            true,
                                                          ),
                                                          'files':
                                                              serializeParam(
                                                            functions.refillFiles(_model
                                                                .wPropertyHostingModel
                                                                .uploadPictures
                                                                .toList()),
                                                            ParamType
                                                                .FFUploadedFile,
                                                            true,
                                                          ),
                                                          'propertyDetails':
                                                              serializeParam(
                                                            functions
                                                                .collectExHostPropertyDetails(
                                                                    FFAppState()
                                                                        .ExternalHostJourney
                                                                        .propertyTitle,
                                                                    FFAppState()
                                                                        .ExternalHostJourney
                                                                        .description,
                                                                    FFAppState()
                                                                        .ExternalHostJourney
                                                                        .country,
                                                                    FFAppState()
                                                                        .ExternalHostJourney
                                                                        .flatNo,
                                                                    FFAppState()
                                                                        .ExternalHostJourney
                                                                        .streetAddress,
                                                                    FFAppState()
                                                                        .ExternalHostJourney
                                                                        .landmark,
                                                                    FFAppState()
                                                                        .ExternalHostJourney
                                                                        .locality,
                                                                    FFAppState()
                                                                        .ExternalHostJourney
                                                                        .city,
                                                                    FFAppState()
                                                                        .ExternalHostJourney
                                                                        .state,
                                                                    FFAppState()
                                                                        .ExternalHostJourney
                                                                        .pincode,
                                                                    FFAppState()
                                                                        .ExternalHostJourney
                                                                        .pricepermonth,
                                                                    FFAppState()
                                                                        .ExternalHostJourney
                                                                        .availableFrom,
                                                                    getJsonField(
                                                                      FFAppState()
                                                                          .ExHostPropertyType,
                                                                      r'''$.categoryId''',
                                                                    )
                                                                        .toString(),
                                                                    FFAppState()
                                                                        .ExHostSelctedAM
                                                                        .toList(),
                                                                    getJsonField(
                                                                      FFAppState()
                                                                          .ExHostPropertySubType,
                                                                      r'''$.id''',
                                                                    )
                                                                        .toString(),
                                                                    FFAppState()
                                                                        .ExternalHostJourney
                                                                        .availableTo,
                                                                    true),
                                                            ParamType.JSON,
                                                          ),
                                                        }.withoutNulls,
                                                        extra: <String,
                                                            dynamic>{
                                                          kTransitionInfoKey:
                                                              TransitionInfo(
                                                            hasTransition: true,
                                                            transitionType:
                                                                PageTransitionType
                                                                    .fade,
                                                            duration: Duration(
                                                                milliseconds:
                                                                    0),
                                                          ),
                                                        },
                                                      );

                                                      return;
                                                    } else {
                                                      await showDialog(
                                                        context: context,
                                                        builder:
                                                            (alertDialogContext) {
                                                          return AlertDialog(
                                                            title:
                                                                Text('Alert'),
                                                            content: Text(
                                                                'Upload property Images should not Exceed more than 5.'),
                                                            actions: [
                                                              TextButton(
                                                                onPressed: () =>
                                                                    Navigator.pop(
                                                                        alertDialogContext),
                                                                child:
                                                                    Text('Ok'),
                                                              ),
                                                            ],
                                                          );
                                                        },
                                                      );
                                                      return;
                                                    }
                                                  }
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text('Info'),
                                                        content: Text(
                                                            'Select locality from dropdown.'),
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
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Info'),
                                                      content: Text(
                                                          'Click on Get Location in property address column, to fill the missing fields.'),
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
                                            text: 'Continue ',
                                            options: FFButtonOptions(
                                              width: 150.0,
                                              height: 40.0,
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              iconPadding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 0.0),
                                              color: Color(0xFF5246ED),
                                              textStyle: GoogleFonts.getFont(
                                                'Noto Serif',
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 16.0,
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                              hoverColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              hoverTextColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                            ),
                                          ),
                                        FFButtonWidget(
                                          onPressed: () async {
                                            if (_model.formKey.currentState ==
                                                    null ||
                                                !_model.formKey.currentState!
                                                    .validate()) {
                                              return;
                                            }
                                            if (_model.wPropertyHostingModel
                                                    .datePicked1 ==
                                                null) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Please select the date',
                                                    style: TextStyle(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                ),
                                              );
                                              return;
                                            }
                                            if (_model.wPropertyHostingModel
                                                    .datePicked2 ==
                                                null) {
                                              ScaffoldMessenger.of(context)
                                                  .showSnackBar(
                                                SnackBar(
                                                  content: Text(
                                                    'Please select the dates',
                                                    style: TextStyle(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                    ),
                                                  ),
                                                  duration: Duration(
                                                      milliseconds: 4000),
                                                  backgroundColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primary,
                                                ),
                                              );
                                              return;
                                            }
                                            if ((FFAppState()
                                                        .postalCodeLocalities ==
                                                    true) &&
                                                (_model.wPropertyHostingModel
                                                            .localityDropDownValue ==
                                                        null ||
                                                    _model.wPropertyHostingModel
                                                            .localityDropDownValue ==
                                                        '')) {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text('Info'),
                                                    content: Text(
                                                        'Select locality from dropdown.'),
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
                                            } else if ((FFAppState()
                                                        .postalCodeLocalities ==
                                                    false) &&
                                                (_model
                                                            .wPropertyHostingModel
                                                            .localityFieldTextController
                                                            .text ==
                                                        null ||
                                                    _model
                                                            .wPropertyHostingModel
                                                            .localityFieldTextController
                                                            .text ==
                                                        '')) {
                                              await showDialog(
                                                context: context,
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text('Info'),
                                                    content: Text(
                                                        'Enter your locality.'),
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
                                            } else {
                                              if (_model.wPropertyHostingModel
                                                      .uploadPictures.length <
                                                  2) {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('Alert'),
                                                      content: Text(
                                                          'Choose atleast 2 images to upload a property.'),
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
                                              } else {
                                                if (_model.wPropertyHostingModel
                                                        .uploadPictures.length <
                                                    6) {
                                                  if ((FFAppState()
                                                              .postalCodeLocalities ==
                                                          true) &&
                                                      (_model.wPropertyHostingModel
                                                                  .localityDropDownValue ==
                                                              null ||
                                                          _model.wPropertyHostingModel
                                                                  .localityDropDownValue ==
                                                              '')) {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text('Info'),
                                                          content: Text(
                                                              'Select locality from dropdown.'),
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
                                                  } else if ((FFAppState()
                                                              .postalCodeLocalities ==
                                                          false) &&
                                                      (_model
                                                                  .wPropertyHostingModel
                                                                  .localityFieldTextController
                                                                  .text ==
                                                              null ||
                                                          _model
                                                                  .wPropertyHostingModel
                                                                  .localityFieldTextController
                                                                  .text ==
                                                              '')) {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title: Text('Info'),
                                                          content: Text(
                                                              'Enter your locality.'),
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
                                                  } else {
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                              .ExternalHostJourney =
                                                          ExHostJourneyStruct(
                                                        propertyTitle: _model
                                                            .wPropertyHostingModel
                                                            .propertyTitleTextController
                                                            .text,
                                                        availableFrom: dateTimeFormat(
                                                            'yyyy-MM-dd',
                                                            _model
                                                                .wPropertyHostingModel
                                                                .datePicked1),
                                                        availableTo: dateTimeFormat(
                                                            'yyyy-MM-dd',
                                                            _model
                                                                .wPropertyHostingModel
                                                                .datePicked2),
                                                        description: _model
                                                            .wPropertyHostingModel
                                                            .propertydescriptionTextController
                                                            .text,
                                                        flatNo: _model
                                                            .wPropertyHostingModel
                                                            .flatHouseVillanumberTextController
                                                            .text,
                                                        streetAddress: _model
                                                            .wPropertyHostingModel
                                                            .streetAddressTextController
                                                            .text,
                                                        landmark: _model
                                                            .wPropertyHostingModel
                                                            .landmarkTextController
                                                            .text,
                                                        locality: _model.wPropertyHostingModel.localityDropDownValue !=
                                                                    null &&
                                                                _model.wPropertyHostingModel
                                                                        .localityDropDownValue !=
                                                                    ''
                                                            ? _model
                                                                .wPropertyHostingModel
                                                                .localityDropDownValue
                                                            : _model
                                                                .wPropertyHostingModel
                                                                .localityFieldTextController
                                                                .text,
                                                        city: _model
                                                            .wPropertyHostingModel
                                                            .cityTextController
                                                            .text,
                                                        state: _model
                                                            .wPropertyHostingModel
                                                            .stateTextController
                                                            .text,
                                                        country: _model
                                                            .wPropertyHostingModel
                                                            .countryTextController
                                                            .text,
                                                        pincode: _model
                                                            .wPropertyHostingModel
                                                            .pincodeTextController
                                                            .text,
                                                        pricepermonth: functions
                                                            .toDouble(_model
                                                                .wPropertyHostingModel
                                                                .pricePerMonthTextController
                                                                .text),
                                                      );
                                                    });

                                                    context.pushNamed(
                                                      'w_DocumentUploadPage',
                                                      queryParameters: {
                                                        'fileNames':
                                                            serializeParam(
                                                          functions.getFileNames(
                                                              _model
                                                                  .wPropertyHostingModel
                                                                  .uploadPictures
                                                                  .toList()),
                                                          ParamType.JSON,
                                                          true,
                                                        ),
                                                        'files': serializeParam(
                                                          functions.refillFiles(
                                                              _model
                                                                  .wPropertyHostingModel
                                                                  .uploadPictures
                                                                  .toList()),
                                                          ParamType
                                                              .FFUploadedFile,
                                                          true,
                                                        ),
                                                        'propertyDetails':
                                                            serializeParam(
                                                          functions
                                                              .collectExHostPropertyDetails(
                                                                  FFAppState()
                                                                      .ExternalHostJourney
                                                                      .propertyTitle,
                                                                  FFAppState()
                                                                      .ExternalHostJourney
                                                                      .description,
                                                                  FFAppState()
                                                                      .ExternalHostJourney
                                                                      .country,
                                                                  FFAppState()
                                                                      .ExternalHostJourney
                                                                      .flatNo,
                                                                  FFAppState()
                                                                      .ExternalHostJourney
                                                                      .streetAddress,
                                                                  FFAppState()
                                                                      .ExternalHostJourney
                                                                      .landmark,
                                                                  FFAppState()
                                                                      .ExternalHostJourney
                                                                      .locality,
                                                                  FFAppState()
                                                                      .ExternalHostJourney
                                                                      .city,
                                                                  FFAppState()
                                                                      .ExternalHostJourney
                                                                      .state,
                                                                  FFAppState()
                                                                      .ExternalHostJourney
                                                                      .pincode,
                                                                  FFAppState()
                                                                      .ExternalHostJourney
                                                                      .pricepermonth,
                                                                  FFAppState()
                                                                      .ExternalHostJourney
                                                                      .availableFrom,
                                                                  getJsonField(
                                                                    FFAppState()
                                                                        .ExHostPropertyType,
                                                                    r'''$.categoryId''',
                                                                  ).toString(),
                                                                  FFAppState()
                                                                      .ExHostSelctedAM
                                                                      .toList(),
                                                                  getJsonField(
                                                                    FFAppState()
                                                                        .ExHostPropertySubType,
                                                                    r'''$.id''',
                                                                  ).toString(),
                                                                  FFAppState()
                                                                      .ExternalHostJourney
                                                                      .availableTo,
                                                                  true),
                                                          ParamType.JSON,
                                                        ),
                                                      }.withoutNulls,
                                                      extra: <String, dynamic>{
                                                        kTransitionInfoKey:
                                                            TransitionInfo(
                                                          hasTransition: true,
                                                          transitionType:
                                                              PageTransitionType
                                                                  .fade,
                                                          duration: Duration(
                                                              milliseconds: 0),
                                                        ),
                                                      },
                                                    );

                                                    return;
                                                  }
                                                } else {
                                                  await showDialog(
                                                    context: context,
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text('Alert'),
                                                        content: Text(
                                                            'Upload property Images should not Exceed more than 5.'),
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
                                              }
                                            }
                                          },
                                          text: 'Continue',
                                          options: FFButtonOptions(
                                            width: 150.0,
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 0.0, 24.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle: GoogleFonts.getFont(
                                              'Noto Serif',
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 16.0,
                                            ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16.0),
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
                      Container(
                        width: 80.0,
                        decoration: BoxDecoration(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
