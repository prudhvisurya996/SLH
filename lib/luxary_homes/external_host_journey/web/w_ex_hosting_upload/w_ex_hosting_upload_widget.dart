import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/external_host_journey/ex_upload_submit/ex_upload_submit_widget.dart';
import '/luxary_homes/external_host_journey/web/w_ex_hosting_upload_form/w_ex_hosting_upload_form_widget.dart';
import '/luxary_homes/external_host_journey/web/w_ex_submit/w_ex_submit_widget.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'w_ex_hosting_upload_model.dart';
export 'w_ex_hosting_upload_model.dart';

class WExHostingUploadWidget extends StatefulWidget {
  const WExHostingUploadWidget({
    super.key,
    required this.fileNames,
    required this.files,
    required this.propertyDetails,
  });

  final List<dynamic>? fileNames;
  final List<FFUploadedFile>? files;
  final dynamic propertyDetails;

  @override
  State<WExHostingUploadWidget> createState() => _WExHostingUploadWidgetState();
}

class _WExHostingUploadWidgetState extends State<WExHostingUploadWidget>
    with TickerProviderStateMixin {
  late WExHostingUploadModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WExHostingUploadModel());

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
                wrapWithModel(
                  model: _model.commonTopBarModel,
                  updateCallback: () => setState(() {}),
                  child: CommonTopBarWidget(
                    showSearchFilter: false,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 80.0,
                      decoration: BoxDecoration(),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FlutterFlowIconButton(
                                  borderRadius: 30.0,
                                  borderWidth: 1.0,
                                  fillColor: Color(0x4DBBD1EA),
                                  icon: Icon(
                                    Icons.chevron_left_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 30.0,
                                  ),
                                  onPressed: () async {
                                    context.safePop();
                                  },
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 0.0, 0.0),
                                  child: Text(
                                    'Property Lease Request ',
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 0.0, 0.0),
                              child: Material(
                                color: Colors.transparent,
                                elevation: 0.5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(22.0),
                                ),
                                child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.68,
                                  decoration: BoxDecoration(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    borderRadius: BorderRadius.circular(22.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            80.0, 0.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/business-woman-doing-checkmark-on-task-list-5208135-4350571.png',
                                            width: 350.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'imageOnPageLoadAnimation']!),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  150.0, 0.0, 0.0, 0.0),
                                          child: Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.68,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(0.0),
                                                bottomRight:
                                                    Radius.circular(22.0),
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(22.0),
                                              ),
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Flexible(
                                                  child: wrapWithModel(
                                                    model: _model
                                                        .wExHostingUploadFormModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child:
                                                        WExHostingUploadFormWidget(),
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
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 24.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 55.0, 0.0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        context.safePop();
                                      },
                                      text: 'Back',
                                      options: FFButtonOptions(
                                        width: 150.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xE65246ED),
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
                                      ),
                                    ),
                                  ),
                                  Builder(
                                    builder: (context) => FFButtonWidget(
                                      onPressed: () async {
                                        var _shouldSetState = false;
                                        if ((_model.wExHostingUploadFormModel
                                                        .govtIdName !=
                                                    null &&
                                                _model.wExHostingUploadFormModel
                                                        .govtIdName !=
                                                    '') &&
                                            (_model.wExHostingUploadFormModel
                                                        .propertyIdName !=
                                                    null &&
                                                _model.wExHostingUploadFormModel
                                                        .propertyIdName !=
                                                    '')) {
                                          if (FFAppState().exHostAcceptTC ==
                                              true) {
                                            _model.refreshTokenRespExHostProperty =
                                                await RefreshTokenAPICall.call(
                                              clientId: FFAppConstants.clientId,
                                              clientSecret:
                                                  FFAppConstants.clientSecret,
                                              grantType: FFAppConstants
                                                  .refreshGrantType,
                                              refreshToken:
                                                  FFAppState().refreshToken,
                                            );

                                            _shouldSetState = true;
                                            if ((_model
                                                    .refreshTokenRespExHostProperty
                                                    ?.succeeded ??
                                                true)) {
                                              FFAppState().accessToken =
                                                  getJsonField(
                                                (_model.refreshTokenRespExHostProperty
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.access_token''',
                                              ).toString();
                                              FFAppState().refreshToken =
                                                  getJsonField(
                                                (_model.refreshTokenRespExHostProperty
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.refresh_token''',
                                              ).toString();
                                              setState(() {});
                                              _model.exHostPropertyResp =
                                                  await LiferayBaseUrlGroup
                                                      .exHostPropertyCall
                                                      .call(
                                                accessToken:
                                                    FFAppState().accessToken,
                                                filesArrayJson:
                                                    widget.fileNames,
                                                file1: widget.files?.first,
                                                file2: widget.files?[1],
                                                file3: widget.files?[2],
                                                file4: widget.files?[3],
                                                file5: widget.files?[3],
                                                propertyDetailsJson:
                                                    widget.propertyDetails,
                                              );

                                              _shouldSetState = true;
                                              if ((_model.exHostPropertyResp
                                                      ?.succeeded ??
                                                  true)) {
                                                _model.exHostSecondAPICall =
                                                    await LiferayBaseUrlGroup
                                                        .exHostPropertySecondHalfCall
                                                        .call(
                                                  accessToken:
                                                      FFAppState().accessToken,
                                                  filesArrayJson: functions
                                                      .getDocfileKeyValue(
                                                          _model
                                                              .wExHostingUploadFormModel
                                                              .govtID,
                                                          'govId',
                                                          _model
                                                              .wExHostingUploadFormModel
                                                              .propertyID,
                                                          'propDoc'),
                                                  identityDetailsJson: functions
                                                      .collectExHostIdentityDetails(
                                                          getJsonField(
                                                            (_model.exHostPropertyResp
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.folderId''',
                                                          ),
                                                          _model
                                                              .wExHostingUploadFormModel
                                                              .radioButtonValue1,
                                                          _model
                                                              .wExHostingUploadFormModel
                                                              .radioButtonValue2,
                                                          getJsonField(
                                                            (_model.exHostPropertyResp
                                                                    ?.jsonBody ??
                                                                ''),
                                                            r'''$.articleId''',
                                                          ).toString()),
                                                  govId: _model
                                                      .wExHostingUploadFormModel
                                                      .govtID,
                                                  propDoc: _model
                                                      .wExHostingUploadFormModel
                                                      .propertyID,
                                                );

                                                _shouldSetState = true;
                                                if ((_model.exHostSecondAPICall
                                                        ?.succeeded ??
                                                    true)) {
                                                  showDialog(
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                    0.0, -1.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: GestureDetector(
                                                          onTap: () => _model
                                                                  .unfocusNode
                                                                  .canRequestFocus
                                                              ? FocusScope.of(
                                                                      context)
                                                                  .requestFocus(
                                                                      _model
                                                                          .unfocusNode)
                                                              : FocusScope.of(
                                                                      context)
                                                                  .unfocus(),
                                                          child: Container(
                                                            height: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .height *
                                                                0.6,
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.3,
                                                            child:
                                                                WExSubmitWidget(),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));

                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 6000));
                                                  Navigator.pop(context);
                                                  await showDialog(
                                                    barrierDismissible: false,
                                                    context: context,
                                                    builder: (dialogContext) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            EdgeInsets.zero,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        alignment:
                                                            AlignmentDirectional(
                                                                    0.0, -1.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                        child: GestureDetector(
                                                          onTap: () => _model
                                                                  .unfocusNode
                                                                  .canRequestFocus
                                                              ? FocusScope.of(
                                                                      context)
                                                                  .requestFocus(
                                                                      _model
                                                                          .unfocusNode)
                                                              : FocusScope.of(
                                                                      context)
                                                                  .unfocus(),
                                                          child: Container(
                                                            width: MediaQuery
                                                                        .sizeOf(
                                                                            context)
                                                                    .width *
                                                                0.75,
                                                            child:
                                                                ExUploadSubmitWidget(),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ).then((value) =>
                                                      setState(() {}));

                                                  setState(() {
                                                    _model
                                                        .wExHostingUploadFormModel
                                                        .radioButtonValueController1
                                                        ?.reset();
                                                    _model
                                                        .wExHostingUploadFormModel
                                                        .radioButtonValueController2
                                                        ?.reset();
                                                  });
                                                  FFAppState()
                                                      .updateExternalHostJourneyStruct(
                                                    (e) => e
                                                      ..propertyTitle = null
                                                      ..availableFrom = null
                                                      ..availableTo = null
                                                      ..description = null
                                                      ..flatNo = null
                                                      ..streetAddress = null
                                                      ..landmark = null
                                                      ..city = null
                                                      ..pricepermonth = null
                                                      ..pincode = null
                                                      ..country = null
                                                      ..state = null
                                                      ..locality = null,
                                                  );
                                                  FFAppState().exHostAcceptTC =
                                                      false;
                                                  FFAppState().ExHostSelctedAM =
                                                      [];
                                                  FFAppState()
                                                      .ExHostSelectedAMNames = [];
                                                  FFAppState()
                                                          .postalCodeLocalities =
                                                      false;
                                                  FFAppState().update(() {});
                                                  if (_shouldSetState)
                                                    setState(() {});
                                                  return;
                                                } else {
                                                  if (_shouldSetState)
                                                    setState(() {});
                                                  return;
                                                }
                                              } else {
                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title:
                                                          Text('Information'),
                                                      content: Text(
                                                          'Something went wrong'),
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

                                                context.goNamed(
                                                  'home_page',
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

                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              }
                                            } else {
                                              FFAppState().accessToken = '';
                                              FFAppState().refreshToken = '';
                                              FFAppState().exHostAcceptTC =
                                                  false;
                                              FFAppState().update(() {});
                                              await showDialog(
                                                barrierColor: Color(0xCC000D3E),
                                                barrierDismissible: false,
                                                context: context,
                                                builder: (dialogContext) {
                                                  return Dialog(
                                                    elevation: 0,
                                                    insetPadding:
                                                        EdgeInsets.zero,
                                                    backgroundColor:
                                                        Colors.transparent,
                                                    alignment:
                                                        AlignmentDirectional(
                                                                0.0, 0.0)
                                                            .resolve(
                                                                Directionality.of(
                                                                    context)),
                                                    child: GestureDetector(
                                                      onTap: () => _model
                                                              .unfocusNode
                                                              .canRequestFocus
                                                          ? FocusScope.of(
                                                                  context)
                                                              .requestFocus(_model
                                                                  .unfocusNode)
                                                          : FocusScope.of(
                                                                  context)
                                                              .unfocus(),
                                                      child: Container(
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.9,
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.3,
                                                        child:
                                                            PhoneNumLoginWidget(),
                                                      ),
                                                    ),
                                                  );
                                                },
                                              ).then(
                                                  (value) => setState(() {}));

                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            }
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('Info'),
                                                  content: Text(
                                                      'Please read our Terms & Conditions and accept them to submit the form.'),
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
                                            if (_shouldSetState)
                                              setState(() {});
                                            return;
                                          }
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Info'),
                                                content: Text(
                                                    'Missing verification documents.'),
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
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }

                                        if (_shouldSetState) setState(() {});
                                      },
                                      text: 'Publish',
                                      options: FFButtonOptions(
                                        width: 150.0,
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            24.0, 0.0, 24.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: Color(0xE65246ED),
                                        textStyle: GoogleFonts.getFont(
                                          'Noto Serif',
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                        ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(16.0),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
