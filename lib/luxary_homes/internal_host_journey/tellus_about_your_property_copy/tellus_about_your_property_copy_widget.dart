import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'tellus_about_your_property_copy_model.dart';
export 'tellus_about_your_property_copy_model.dart';

class TellusAboutYourPropertyCopyWidget extends StatefulWidget {
  const TellusAboutYourPropertyCopyWidget({super.key});

  @override
  State<TellusAboutYourPropertyCopyWidget> createState() =>
      _TellusAboutYourPropertyCopyWidgetState();
}

class _TellusAboutYourPropertyCopyWidgetState
    extends State<TellusAboutYourPropertyCopyWidget> {
  late TellusAboutYourPropertyCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TellusAboutYourPropertyCopyModel());

    _model.titleTextFieldTextController ??=
        TextEditingController(text: FFAppState().tellAboutYourProperty.title);
    _model.titleTextFieldFocusNode ??= FocusNode();

    _model.descriptionTextFieldTextController ??= TextEditingController(
        text: FFAppState().tellAboutYourProperty.description);
    _model.descriptionTextFieldFocusNode ??= FocusNode();

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

    return FutureBuilder<ApiCallResponse>(
      future: LiferayBaseUrlGroup.getPropertyTypesCall.call(),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 40.0,
                height: 40.0,
                child: SpinKitPulse(
                  color: FlutterFlowTheme.of(context).primary,
                  size: 40.0,
                ),
              ),
            ),
          );
        }
        final tellusAboutYourPropertyCopyGetPropertyTypesResponse =
            snapshot.data!;
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
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              '',
                              textAlign: TextAlign.center,
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
                            'Tell us about your property',
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

                                return;
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
                    flex: 4,
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                        ),
                        child: Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 20.0, 12.0, 20.0),
                                  child: Wrap(
                                    spacing: 5.0,
                                    runSpacing: 5.0,
                                    alignment: WrapAlignment.start,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.center,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Container(
                                          width: MediaQuery.sizeOf(context)
                                                      .width <=
                                                  500.0
                                              ? MediaQuery.sizeOf(context).width
                                              : (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.25),
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.45,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Padding(
                                              padding: EdgeInsets.all(15.0),
                                              child: Lottie.asset(
                                                'assets/lottie_animations/animationBuilding.json',
                                                width: MediaQuery.sizeOf(
                                                                context)
                                                            .width <=
                                                        500.0
                                                    ? (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.8)
                                                    : (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.25),
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                                .width <=
                                                            500.0
                                                        ? (MediaQuery.sizeOf(
                                                                    context)
                                                                .height *
                                                            0.6)
                                                        : (MediaQuery.sizeOf(
                                                                    context)
                                                                .height *
                                                            0.5),
                                                fit: BoxFit.cover,
                                                animate: true,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(10.0),
                                        child: Container(
                                          width: MediaQuery.sizeOf(context)
                                                      .width <=
                                                  500.0
                                              ? MediaQuery.sizeOf(context).width
                                              : (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.4),
                                          height: MediaQuery.sizeOf(context)
                                                      .width <=
                                                  500.0
                                              ? (MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.45)
                                              : (MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.45),
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Builder(
                                                  builder: (context) {
                                                    final propertyTypeList =
                                                        tellusAboutYourPropertyCopyGetPropertyTypesResponse
                                                            .jsonBody
                                                            .toList();
                                                    return SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: List.generate(
                                                            propertyTypeList
                                                                .length,
                                                            (propertyTypeListIndex) {
                                                          final propertyTypeListItem =
                                                              propertyTypeList[
                                                                  propertyTypeListIndex];
                                                          return Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        8.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                setState(() {
                                                                  FFAppState()
                                                                          .propertyType =
                                                                      propertyTypeListItem;
                                                                });
                                                              },
                                                              child: Container(
                                                                height: 36.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .info,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                  border: Border
                                                                      .all(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    width: 1.0,
                                                                  ),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceEvenly,
                                                                    children: [
                                                                      Align(
                                                                        alignment: AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              22.0,
                                                                              0.0,
                                                                              22.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            valueOrDefault<String>(
                                                                              getJsonField(
                                                                                propertyTypeListItem,
                                                                                r'''$.name''',
                                                                              )?.toString(),
                                                                              'NA',
                                                                            ),
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: functions.propertyVisibility(propertyTypeListItem, FFAppState().propertyType)! ? FlutterFlowTheme.of(context).primaryText : FlutterFlowTheme.of(context).alternate,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      if (functions.propertyVisibility(
                                                                              propertyTypeListItem,
                                                                              FFAppState().propertyType) ??
                                                                          true)
                                                                        Align(
                                                                          alignment: AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                13.0,
                                                                                0.0,
                                                                                6.0,
                                                                                0.0),
                                                                            child:
                                                                                FlutterFlowIconButton(
                                                                              borderColor: FlutterFlowTheme.of(context).primary,
                                                                              borderRadius: 100.0,
                                                                              borderWidth: 1.0,
                                                                              buttonSize: 25.0,
                                                                              fillColor: FlutterFlowTheme.of(context).primary,
                                                                              icon: Icon(
                                                                                Icons.check,
                                                                                color: FlutterFlowTheme.of(context).info,
                                                                                size: 10.0,
                                                                              ),
                                                                              onPressed: () {
                                                                                print('IconButton pressed ...');
                                                                              },
                                                                            ),
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        }),
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 8.0),
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'Property title',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      TextSpan(
                                                        text: '*',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .errorText,
                                                          fontSize: 14.0,
                                                        ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              TextFormField(
                                                controller: _model
                                                    .titleTextFieldTextController,
                                                focusNode: _model
                                                    .titleTextFieldFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: false,
                                                  errorStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .errorText,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .errorText,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(14.0, 0.0,
                                                              14.0, 0.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                textAlign: TextAlign.start,
                                                maxLength: 50,
                                                maxLengthEnforcement:
                                                    MaxLengthEnforcement
                                                        .enforced,
                                                buildCounter: (context,
                                                        {required currentLength,
                                                        required isFocused,
                                                        maxLength}) =>
                                                    null,
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .titleTextFieldTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 16.0, 0.0, 8.0),
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text: 'Description',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      TextSpan(
                                                        text: '*',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .errorText,
                                                          fontSize: 14.0,
                                                        ),
                                                      )
                                                    ],
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              TextFormField(
                                                controller: _model
                                                    .descriptionTextFieldTextController,
                                                focusNode: _model
                                                    .descriptionTextFieldFocusNode,
                                                autofocus: false,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  isDense: false,
                                                  errorStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .errorText,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .errorText,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  contentPadding:
                                                      EdgeInsets.all(10.0),
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                                textAlign: TextAlign.start,
                                                maxLines: 6,
                                                minLines: 4,
                                                maxLength: 500,
                                                maxLengthEnforcement:
                                                    MaxLengthEnforcement
                                                        .enforced,
                                                cursorColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                validator: _model
                                                    .descriptionTextFieldTextControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ],
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
                                      } else {
                                        await actions.hostBackRoute(
                                          context,
                                          'tellusAboutYourProperty',
                                        );
                                      }
                                    },
                                    text: 'Back',
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width <=
                                              500.0
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
                                      if (_model.formKey.currentState == null ||
                                          !_model.formKey.currentState!
                                              .validate()) {
                                        return;
                                      }
                                      setState(() {
                                        FFAppState().tellAboutYourProperty =
                                            TellYourPropertyStruct(
                                          title: _model
                                              .titleTextFieldTextController
                                              .text,
                                          description: _model
                                              .descriptionTextFieldTextController
                                              .text,
                                          propertyTypeCatId: getJsonField(
                                            FFAppState().propertyType,
                                            r'''$.categoryId''',
                                          ),
                                        );
                                      });
                                      if (MediaQuery.sizeOf(context).width >=
                                          500.0) {
                                        FFAppState().update(() {
                                          FFAppState().webHostStepIndex =
                                              FFAppState().webHostStepIndex + 2;
                                        });
                                        return;
                                      } else {
                                        await actions.hostForwardRoute(
                                          context,
                                          'propertyLocation',
                                        );
                                        return;
                                      }
                                    },
                                    text: 'Next',
                                    options: FFButtonOptions(
                                      width: MediaQuery.sizeOf(context).width <=
                                              500.0
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
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 12.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (_model.formKey.currentState == null ||
                                        !_model.formKey.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    setState(() {
                                      FFAppState().tellAboutYourProperty =
                                          TellYourPropertyStruct(
                                        title: _model
                                            .titleTextFieldTextController.text,
                                        description: _model
                                            .descriptionTextFieldTextController
                                            .text,
                                        propertyTypeCatId: getJsonField(
                                          FFAppState().propertyType,
                                          r'''$.categoryId''',
                                        ),
                                      );
                                    });
                                    if (MediaQuery.sizeOf(context).width >=
                                        500.0) {
                                      FFAppState().update(() {
                                        FFAppState().webHostSaveRoute =
                                            FFAppState()
                                                .ManageRoutesList
                                                .toList()
                                                .indexOf(
                                                    'tellusAboutYourProperty');
                                      });
                                      Navigator.pop(context);
                                    } else {
                                      FFAppState().update(() {
                                        FFAppState().SavedRoute =
                                            'tellusAboutYourProperty';
                                      });

                                      context.goNamed(
                                        'explore_page',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
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
      },
    );
  }
}