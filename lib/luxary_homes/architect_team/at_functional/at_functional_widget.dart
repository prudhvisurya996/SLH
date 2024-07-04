import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:expandable/expandable.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'at_functional_model.dart';
export 'at_functional_model.dart';

class AtFunctionalWidget extends StatefulWidget {
  const AtFunctionalWidget({
    super.key,
    required this.docURLS,
  });

  final dynamic docURLS;

  @override
  State<AtFunctionalWidget> createState() => _AtFunctionalWidgetState();
}

class _AtFunctionalWidgetState extends State<AtFunctionalWidget> {
  late AtFunctionalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AtFunctionalModel());

    _model.webExpandableExpandableController =
        ExpandableController(initialExpanded: false);
    _model.mobileExpandableExpandableController =
        ExpandableController(initialExpanded: false);
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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Container(
            width: double.infinity,
            color: FlutterFlowTheme.of(context).secondaryBackground,
            child: ExpandableNotifier(
              controller: _model.webExpandableExpandableController,
              child: ExpandablePanel(
                header: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, -1.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: Text(
                            'Functional',
                            style: FlutterFlowTheme.of(context)
                                .titleLarge
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                collapsed: Container(),
                expanded: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                50.0, 24.0, 50.0, 24.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'User personal document',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: '*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await launchURL(
                                                  '${FFAppState().BaseUrl}${getJsonField(
                                                functions.getDocName(
                                                    functions
                                                        .listMapConversionEx(
                                                            widget.docURLS)
                                                        ?.toList(),
                                                    'govId'),
                                                r'''$.fileURL''',
                                              ).toString()}');
                                            },
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.25,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color(0xFFA51FF6),
                                                    Color(0xFFA51FF6),
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                    FlutterFlowTheme.of(context)
                                                        .primary
                                                  ],
                                                  stops: [0.0, 0.0, 0.6, 0.6],
                                                  begin: AlignmentDirectional(
                                                      1.0, 0.0),
                                                  end: AlignmentDirectional(
                                                      -1.0, 0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                border: Border.all(
                                                  color: Color(0xFF60A5FA),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.attach_file,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      size: 20.0,
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          getJsonField(
                                                            functions.getDocName(
                                                                functions
                                                                    .listMapConversionEx(
                                                                        widget
                                                                            .docURLS)
                                                                    ?.toList(),
                                                                'govId'),
                                                            r'''$.fileName''',
                                                          ).toString(),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: Color(
                                                                0xFFC3C3C3),
                                                            fontSize: 14.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'View',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 14.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  50.0, 0.0, 0.0, 0.0),
                                          child: FlutterFlowRadioButton(
                                            options: [
                                              'Verified',
                                              'Not Verified'
                                            ].toList(),
                                            onChanged: (val) => setState(() {}),
                                            controller: _model
                                                    .userPersonalDocumentValueController ??=
                                                FormFieldController<String>(
                                                    null),
                                            optionHeight: 25.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            textPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 50.0, 0.0),
                                            buttonPosition:
                                                RadioButtonPosition.left,
                                            direction: Axis.horizontal,
                                            radioButtonColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            inactiveRadioButtonColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            toggleable: false,
                                            horizontalAlignment:
                                                WrapAlignment.spaceBetween,
                                            verticalAlignment:
                                                WrapCrossAlignment.start,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 24.0, 0.0, 0.0),
                                        child: RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Property document:',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: '*',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              await launchURL(
                                                  '${FFAppState().BaseUrl}${getJsonField(
                                                functions.getDocName(
                                                    functions
                                                        .listMapConversionEx(
                                                            widget.docURLS)
                                                        ?.toList(),
                                                    'propDoc'),
                                                r'''$.fileURL''',
                                              ).toString()}');
                                            },
                                            child: Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.25,
                                              height: 50.0,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  colors: [
                                                    Color(0xFFA51FF6),
                                                    Color(0xFFA51FF6),
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                    FlutterFlowTheme.of(context)
                                                        .primary
                                                  ],
                                                  stops: [0.0, 0.0, 0.6, 0.6],
                                                  begin: AlignmentDirectional(
                                                      1.0, 0.0),
                                                  end: AlignmentDirectional(
                                                      -1.0, 0),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12.0),
                                                border: Border.all(
                                                  color: Color(0xFF60A5FA),
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 0.0, 12.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Icon(
                                                      Icons.attach_file,
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      size: 20.0,
                                                    ),
                                                    Expanded(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    10.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Text(
                                                          getJsonField(
                                                            functions.getDocName(
                                                                functions
                                                                    .listMapConversionEx(
                                                                        widget
                                                                            .docURLS)
                                                                    ?.toList(),
                                                                'propDoc'),
                                                            r'''$.fileName''',
                                                          ).toString(),
                                                          style: GoogleFonts
                                                              .getFont(
                                                            'Poppins',
                                                            color: Color(
                                                                0xFFC3C3C3),
                                                            fontSize: 14.0,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'View',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 14.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  50.0, 0.0, 0.0, 0.0),
                                          child: FlutterFlowRadioButton(
                                            options: [
                                              'Verified',
                                              'Not Verified'
                                            ].toList(),
                                            onChanged: (val) => setState(() {}),
                                            controller: _model
                                                    .propertyDocumentValueController ??=
                                                FormFieldController<String>(
                                                    null),
                                            optionHeight: 25.0,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                            textPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 50.0, 0.0),
                                            buttonPosition:
                                                RadioButtonPosition.left,
                                            direction: Axis.horizontal,
                                            radioButtonColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            inactiveRadioButtonColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondaryText,
                                            toggleable: false,
                                            horizontalAlignment:
                                                WrapAlignment.spaceBetween,
                                            verticalAlignment:
                                                WrapCrossAlignment.start,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 24.0, 0.0, 0.0),
                                        child: Text(
                                          'Upload Additional document (if needed)',
                                          style: FlutterFlowTheme.of(context)
                                              .titleLarge
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 0.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.5,
                                        height: 190.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                          border: Border.all(
                                            width: 0.5,
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            if (_model.additionalDocId ==
                                                    null ||
                                                (_model.additionalDocId?.bytes
                                                        ?.isEmpty ??
                                                    true))
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 10.0, 0.0),
                                                child: Text(
                                                  'Upload',
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 22.0,
                                                  ),
                                                ),
                                              ),
                                            if (_model.additionalDocId !=
                                                    null &&
                                                (_model.additionalDocId?.bytes
                                                        ?.isNotEmpty ??
                                                    false))
                                              Align(
                                                alignment: AlignmentDirectional(
                                                    0.0, 0.0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          25.0, 0.0, 25.0, 0.0),
                                                  child: Container(
                                                    width: 410.0,
                                                    height: 50.0,
                                                    decoration: BoxDecoration(
                                                      color: Color(0xFFEFF6FF),
                                                      border: Border.all(
                                                        color:
                                                            Color(0xFF60A5FA),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  12.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Icon(
                                                            Icons.attach_file,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 25.0,
                                                          ),
                                                          Stack(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            children: [
                                                              if (_model.uploadedLocalFile1 ==
                                                                      null ||
                                                                  (_model
                                                                          .uploadedLocalFile1
                                                                          .bytes
                                                                          ?.isEmpty ??
                                                                      true))
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              2.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        140.0,
                                                                    height:
                                                                        140.0,
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/addAvatarImage@2x.png',
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              if (_model.uploadedLocalFile1 !=
                                                                      null &&
                                                                  (_model
                                                                          .uploadedLocalFile1
                                                                          .bytes
                                                                          ?.isNotEmpty ??
                                                                      false))
                                                                Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              2.0),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        140.0,
                                                                    height:
                                                                        140.0,
                                                                    clipBehavior:
                                                                        Clip.antiAlias,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child: Image
                                                                        .memory(
                                                                      _model.uploadedLocalFile1
                                                                              .bytes ??
                                                                          Uint8List.fromList(
                                                                              []),
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                  ),
                                                                ),
                                                            ],
                                                          ),
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  _model
                                                                      .additionalDocName,
                                                                  'NA',
                                                                ),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Colors
                                                                          .black,
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          InkWell(
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
                                                              _model.additionalDocId =
                                                                  null;
                                                              _model.additionalDocName =
                                                                  null;
                                                              setState(() {});
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .delete_forever,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              size: 25.0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                var _shouldSetState = false;
                                                if ((_model.additionalDocId ==
                                                            null ||
                                                        (_model
                                                                .additionalDocId
                                                                ?.bytes
                                                                ?.isEmpty ??
                                                            true)) &&
                                                    (_model.additionalDocName ==
                                                            null ||
                                                        _model.additionalDocName ==
                                                            '')) {
                                                  _model.additionalDocFilePicker =
                                                      await actions
                                                          .filePicker();
                                                  _shouldSetState = true;
                                                  if (_model.additionalDocFilePicker !=
                                                          null &&
                                                      (_model
                                                              .additionalDocFilePicker
                                                              ?.bytes
                                                              ?.isNotEmpty ??
                                                          false)) {
                                                    _model.additionalDocId = _model
                                                        .additionalDocFilePicker;
                                                    setState(() {});
                                                    _model.additionalDocName =
                                                        functions.getFilePath(_model
                                                            .additionalDocFilePicker);
                                                    setState(() {});
                                                    if (_shouldSetState)
                                                      setState(() {});
                                                    return;
                                                  } else {
                                                    await showDialog(
                                                      context: context,
                                                      builder:
                                                          (alertDialogContext) {
                                                        return AlertDialog(
                                                          title:
                                                              Text('Invalid!'),
                                                          content: Text(
                                                              'Make sure the file is upto 5mb.File name is upto 50 characters.'),
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
                                                    builder:
                                                        (alertDialogContext) {
                                                      return AlertDialog(
                                                        title: Text('Info!'),
                                                        content: Text(
                                                            'Can\'t upload multiple files at a time. Make a Zip file of those and replace the uploaded one with new file.'),
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

                                                if (_shouldSetState)
                                                  setState(() {});
                                              },
                                              child: SvgPicture.asset(
                                                'assets/images/upload_1.svg',
                                                width: 30.0,
                                                height: 25.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  'Upload property owner picture',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: '*',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 8.0, 100.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.25,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.35,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  width: 150.0,
                                                  height: 150.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .alternate,
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                final selectedMedia =
                                                    await selectMedia(
                                                  imageQuality: 100,
                                                  mediaSource:
                                                      MediaSource.photoGallery,
                                                  multiImage: false,
                                                );
                                                if (selectedMedia != null &&
                                                    selectedMedia.every((m) =>
                                                        validateFileFormat(
                                                            m.storagePath,
                                                            context))) {
                                                  setState(() => _model
                                                      .isDataUploading1 = true);
                                                  var selectedUploadedFiles =
                                                      <FFUploadedFile>[];

                                                  try {
                                                    selectedUploadedFiles =
                                                        selectedMedia
                                                            .map((m) =>
                                                                FFUploadedFile(
                                                                  name: m
                                                                      .storagePath
                                                                      .split(
                                                                          '/')
                                                                      .last,
                                                                  bytes:
                                                                      m.bytes,
                                                                  height: m
                                                                      .dimensions
                                                                      ?.height,
                                                                  width: m
                                                                      .dimensions
                                                                      ?.width,
                                                                  blurHash: m
                                                                      .blurHash,
                                                                ))
                                                            .toList();
                                                  } finally {
                                                    _model.isDataUploading1 =
                                                        false;
                                                  }
                                                  if (selectedUploadedFiles
                                                          .length ==
                                                      selectedMedia.length) {
                                                    setState(() {
                                                      _model.uploadedLocalFile1 =
                                                          selectedUploadedFiles
                                                              .first;
                                                    });
                                                  } else {
                                                    setState(() {});
                                                    return;
                                                  }
                                                }

                                                _model.uploadPropertyOwnerPic =
                                                    _model.uploadedLocalFile1;
                                                setState(() {});
                                              },
                                              child: Container(
                                                width: 250.0,
                                                height: 50.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFDCE1F9),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    5.0,
                                                                    0.0),
                                                        child: Text(
                                                          'Upload',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .titleSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                      ),
                                                      SvgPicture.asset(
                                                        'assets/images/upload_1.svg',
                                                        width: 24.0,
                                                        height: 20.0,
                                                        fit: BoxFit.cover,
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
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                theme: ExpandableThemeData(
                  tapHeaderToExpand: true,
                  tapBodyToExpand: false,
                  tapBodyToCollapse: false,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  hasIcon: true,
                  expandIcon: Icons.keyboard_arrow_down_outlined,
                  collapseIcon: Icons.keyboard_arrow_up_outlined,
                  iconSize: 40.0,
                  iconColor: FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          desktop: false,
        ))
          Container(
            color: Color(0x593A7BE7),
            child: ExpandableNotifier(
              controller: _model.mobileExpandableExpandableController,
              child: ExpandablePanel(
                header: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Functional',
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                        TextSpan(
                          text: '*',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).error,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
                          ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                          ),
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                collapsed: Container(),
                expanded: Container(
                  decoration: BoxDecoration(
                    color: Color(0xCDFFFFFF),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 16.0, 10.0, 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'User personal document:',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await launchURL(
                                  '${FFAppState().BaseUrl}${getJsonField(
                                functions.getDocName(
                                    functions
                                        .listMapConversionEx(widget.docURLS)
                                        ?.toList(),
                                    'govId'),
                                r'''$.fileURL''',
                              ).toString()}');
                            },
                            child: Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFA51FF6),
                                    Color(0xFFA51FF6),
                                    FlutterFlowTheme.of(context).primary,
                                    FlutterFlowTheme.of(context).primary
                                  ],
                                  stops: [0.0, 0.0, 0.6, 0.6],
                                  begin: AlignmentDirectional(1.0, 0.0),
                                  end: AlignmentDirectional(-1.0, 0),
                                ),
                                borderRadius: BorderRadius.circular(6.0),
                                border: Border.all(
                                  color: Color(0xFF60A5FA),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.attach_file,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 20.0,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          getJsonField(
                                            functions.getDocName(
                                                functions
                                                    .listMapConversionEx(
                                                        widget.docURLS)
                                                    ?.toList(),
                                                'govId'),
                                            r'''$.fileName''',
                                          ).toString(),
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: Color(0xFFC3C3C3),
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'View',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'User personal document:',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {},
                            child: Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFA51FF6),
                                    Color(0xFFA51FF6),
                                    FlutterFlowTheme.of(context).primary,
                                    FlutterFlowTheme.of(context).primary
                                  ],
                                  stops: [0.0, 0.0, 0.6, 0.6],
                                  begin: AlignmentDirectional(1.0, 0.0),
                                  end: AlignmentDirectional(-1.0, 0),
                                ),
                                borderRadius: BorderRadius.circular(6.0),
                                border: Border.all(
                                  color: Color(0xFF60A5FA),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.attach_file,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      size: 20.0,
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          getJsonField(
                                            functions.getDocName(
                                                functions
                                                    .listMapConversionEx(
                                                        widget.docURLS)
                                                    ?.toList(),
                                                'propDoc'),
                                            r'''$.fileName''',
                                          ).toString(),
                                          style: GoogleFonts.getFont(
                                            'Poppins',
                                            color: Color(0xFFC3C3C3),
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'View',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Personal documents verified',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: '*',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).error,
                                    fontWeight: FontWeight.w600,
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
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowRadioButton(
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller: _model
                                    .personaldocumentsverifiedValueController ??=
                                FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                            textPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 50.0, 0.0),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor:
                                FlutterFlowTheme.of(context).primary,
                            inactiveRadioButtonColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.spaceEvenly,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Property documents verified',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: '*',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).error,
                                    fontWeight: FontWeight.w600,
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
                              0.0, 8.0, 0.0, 0.0),
                          child: FlutterFlowRadioButton(
                            options: ['Yes', 'No'].toList(),
                            onChanged: (val) => setState(() {}),
                            controller: _model
                                    .propertydocumentsverifiedValueController ??=
                                FormFieldController<String>(null),
                            optionHeight: 20.0,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                            textPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 50.0, 0.0),
                            buttonPosition: RadioButtonPosition.left,
                            direction: Axis.horizontal,
                            radioButtonColor:
                                FlutterFlowTheme.of(context).primary,
                            inactiveRadioButtonColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            toggleable: false,
                            horizontalAlignment: WrapAlignment.spaceEvenly,
                            verticalAlignment: WrapCrossAlignment.start,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Upload property owner picture',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                                TextSpan(
                                  text: '*',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context).error,
                                    fontWeight: FontWeight.w600,
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
                              10.0, 8.0, 10.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 250.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 150.0,
                                      height: 150.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .alternate,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Stack(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        children: [
                                          if (_model.uploadedLocalFile2 ==
                                                  null ||
                                              (_model.uploadedLocalFile2.bytes
                                                      ?.isEmpty ??
                                                  true))
                                            Padding(
                                              padding: EdgeInsets.all(2.0),
                                              child: Container(
                                                width: 140.0,
                                                height: 140.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.asset(
                                                  'assets/images/addAvatarImage@2x.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          if (_model.uploadedLocalFile2 !=
                                                  null &&
                                              (_model.uploadedLocalFile2.bytes
                                                      ?.isNotEmpty ??
                                                  false))
                                            Padding(
                                              padding: EdgeInsets.all(2.0),
                                              child: Container(
                                                width: 140.0,
                                                height: 140.0,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.memory(
                                                  _model.uploadedLocalFile2
                                                          .bytes ??
                                                      Uint8List.fromList([]),
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    final selectedMedia =
                                        await selectMediaWithSourceBottomSheet(
                                      context: context,
                                      imageQuality: 100,
                                      allowPhoto: true,
                                    );
                                    if (selectedMedia != null &&
                                        selectedMedia.every((m) =>
                                            validateFileFormat(
                                                m.storagePath, context))) {
                                      setState(
                                          () => _model.isDataUploading2 = true);
                                      var selectedUploadedFiles =
                                          <FFUploadedFile>[];

                                      try {
                                        selectedUploadedFiles = selectedMedia
                                            .map((m) => FFUploadedFile(
                                                  name: m.storagePath
                                                      .split('/')
                                                      .last,
                                                  bytes: m.bytes,
                                                  height: m.dimensions?.height,
                                                  width: m.dimensions?.width,
                                                  blurHash: m.blurHash,
                                                ))
                                            .toList();
                                      } finally {
                                        _model.isDataUploading2 = false;
                                      }
                                      if (selectedUploadedFiles.length ==
                                          selectedMedia.length) {
                                        setState(() {
                                          _model.uploadedLocalFile2 =
                                              selectedUploadedFiles.first;
                                        });
                                      } else {
                                        setState(() {});
                                        return;
                                      }
                                    }

                                    _model.uploadPropertyOwnerPic =
                                        _model.uploadedLocalFile2;
                                    setState(() {});
                                  },
                                  child: Container(
                                    width: 250.0,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDCE1F9),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 5.0, 0.0),
                                            child: Text(
                                              'Upload',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                            ),
                                          ),
                                          SvgPicture.asset(
                                            'assets/images/upload_1.svg',
                                            width: 24.0,
                                            height: 20.0,
                                            fit: BoxFit.cover,
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 0.0),
                          child: Text(
                            'Upload Additional document (if needed)',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                        ),
                        if (_model.additionalDocId == null ||
                            (_model.additionalDocId?.bytes?.isEmpty ?? true))
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  var _shouldSetState = false;
                                  if ((_model.additionalDocId == null ||
                                          (_model.additionalDocId?.bytes
                                                  ?.isEmpty ??
                                              true)) &&
                                      (_model.additionalDocName == null ||
                                          _model.additionalDocName == '')) {
                                    _model.additionalFilePickerMobile1 =
                                        await actions.filePicker();
                                    _shouldSetState = true;
                                    if (_model.additionalFilePickerMobile1 !=
                                            null &&
                                        (_model.additionalFilePickerMobile1
                                                ?.bytes?.isNotEmpty ??
                                            false)) {
                                      _model.additionalDocId =
                                          _model.additionalFilePickerMobile1;
                                      setState(() {});
                                      _model.additionalDocName =
                                          functions.getFilePath(_model
                                              .additionalFilePickerMobile1);
                                      setState(() {});
                                      if (_shouldSetState) setState(() {});
                                      return;
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Invalid!'),
                                            content: Text(
                                                'Make sure the file is upto 5mb.File name is upto 50 characters.'),
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
                                      if (_shouldSetState) setState(() {});
                                      return;
                                    }
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Info!'),
                                          content: Text(
                                              'Can\'t upload multiple files at a time. Make a Zip file of those and replace the uploaded one with new file.'),
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
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }

                                  if (_shouldSetState) setState(() {});
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 70.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 5.0, 0.0),
                                        child: Text(
                                          'Upload',
                                          style: FlutterFlowTheme.of(context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      SvgPicture.asset(
                                        'assets/images/upload_1.svg',
                                        width: 24.0,
                                        height: 20.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        if (_model.additionalDocId != null &&
                            (_model.additionalDocId?.bytes?.isNotEmpty ??
                                false))
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.8,
                                    height: 50.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFEFF6FF),
                                      border: Border.all(
                                        color: Color(0xFF60A5FA),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12.0, 0.0, 12.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.attach_file,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 25.0,
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                valueOrDefault<String>(
                                                  _model.additionalDocName,
                                                  'NA',
                                                ),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.additionalDocId = null;
                                              _model.additionalDocName = null;
                                              setState(() {});
                                            },
                                            child: Icon(
                                              Icons.delete_forever,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              size: 25.0,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    var _shouldSetState = false;
                                    if ((_model.additionalDocId == null ||
                                            (_model.additionalDocId?.bytes
                                                    ?.isEmpty ??
                                                true)) &&
                                        (_model.additionalDocName == null ||
                                            _model.additionalDocName == '')) {
                                      _model.additionalFilePickerMobile =
                                          await actions.filePicker();
                                      _shouldSetState = true;
                                      if (_model.additionalFilePickerMobile !=
                                              null &&
                                          (_model.additionalFilePickerMobile
                                                  ?.bytes?.isNotEmpty ??
                                              false)) {
                                        _model.additionalDocId =
                                            _model.additionalFilePickerMobile;
                                        setState(() {});
                                        _model.additionalDocName =
                                            functions.getFilePath(_model
                                                .additionalFilePickerMobile);
                                        setState(() {});
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Invalid!'),
                                              content: Text(
                                                  'Make sure the file is upto 5mb.File name is upto 50 characters.'),
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
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Info!'),
                                            content: Text(
                                                'Can\'t upload multiple files at a time. Make a Zip file of those and replace the uploaded one with new file.'),
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
                                      if (_shouldSetState) setState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) setState(() {});
                                  },
                                  child: SvgPicture.asset(
                                    'assets/images/upload_1.svg',
                                    width: 30.0,
                                    height: 25.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                theme: ExpandableThemeData(
                  tapHeaderToExpand: true,
                  tapBodyToExpand: false,
                  tapBodyToCollapse: false,
                  headerAlignment: ExpandablePanelHeaderAlignment.center,
                  hasIcon: true,
                  expandIcon: Icons.add_outlined,
                  collapseIcon: FontAwesomeIcons.minus,
                  iconSize: 20.0,
                  iconColor: FlutterFlowTheme.of(context).primaryBackground,
                  iconPadding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                ),
              ),
            ),
          ),
        if (responsiveVisibility(
          context: context,
          tablet: false,
          tabletLandscape: false,
          desktop: false,
        ))
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xB3FFFFFF),
                ),
              ),
            ],
          ),
      ],
    );
  }
}
