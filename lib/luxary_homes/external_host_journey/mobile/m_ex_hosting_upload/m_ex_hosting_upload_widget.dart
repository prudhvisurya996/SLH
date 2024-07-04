import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/external_host_journey/ex_host_tc/ex_host_tc_widget.dart';
import '/luxary_homes/external_host_journey/mobile/m_ex_submit/m_ex_submit_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'm_ex_hosting_upload_model.dart';
export 'm_ex_hosting_upload_model.dart';

class MExHostingUploadWidget extends StatefulWidget {
  const MExHostingUploadWidget({
    super.key,
    required this.fileNames,
    required this.files,
    required this.propertyDetails,
  });

  final List<dynamic>? fileNames;
  final List<FFUploadedFile>? files;
  final dynamic propertyDetails;

  @override
  State<MExHostingUploadWidget> createState() => _MExHostingUploadWidgetState();
}

class _MExHostingUploadWidgetState extends State<MExHostingUploadWidget> {
  late MExHostingUploadModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MExHostingUploadModel());

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
              desktop: false,
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: Container(
                          width: 36.0,
                          height: 36.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Color(0xFFBBD1EA),
                            ),
                          ),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.safePop();
                            },
                            child: Icon(
                              Icons.chevron_left,
                              color: Color(0xFF5246ED),
                              size: 24.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 0.0, 19.0, 0.0),
                        child: Text(
                          'Upload the required documents',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
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
                                  23.0, 16.0, 0.0, 0.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Upload any Govt ID of yours ',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.bold,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: TextStyle(
                                        color: Color(0xFFD70000),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                      ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFD70000),
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  22.0, 16.0, 0.0, 0.0),
                              child: FlutterFlowRadioButton(
                                options: [
                                  'Aadhaar card',
                                  'Passport',
                                  'Driving license',
                                  'Voter ID'
                                ].toList(),
                                onChanged: (val) async {
                                  setState(() {});
                                  _model.selectGovtId =
                                      _model.radioButtonValue1;
                                  setState(() {});
                                },
                                controller:
                                    _model.radioButtonValueController1 ??=
                                        FormFieldController<String>(null),
                                optionHeight: 40.0,
                                optionWidth:
                                    MediaQuery.sizeOf(context).width * 0.5,
                                textStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: Colors.black,
                                      letterSpacing: 0.5,
                                    ),
                                textPadding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 0.0, 0.0, 0.0),
                                buttonPosition: RadioButtonPosition.left,
                                direction: Axis.vertical,
                                radioButtonColor: Color(0xFF5246ED),
                                inactiveRadioButtonColor: Colors.black,
                                toggleable: false,
                                horizontalAlignment: WrapAlignment.start,
                                verticalAlignment: WrapCrossAlignment.center,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                22.0, 10.0, 22.0, 0.0),
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 0.8,
                              height: MediaQuery.sizeOf(context).height * 0.129,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(
                                  color: Color(0x4C000000),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (_model.govtID != null &&
                                      (_model.govtID?.bytes?.isNotEmpty ??
                                          false))
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            25.0, 0.0, 25.0, 0.0),
                                        child: Container(
                                          width: 410.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFEFF6FF),
                                            border: Border.all(
                                              color: Color(0xFF60A5FA),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 12.0, 0.0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.attach_file,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 25.0,
                                                ),
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(10.0, 0.0,
                                                                0.0, 0.0),
                                                    child: Text(
                                                      valueOrDefault<String>(
                                                        _model.govtIdName,
                                                        'DrivingLicence.jpg',
                                                      ),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.black,
                                                            fontSize: 12.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ),
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    _model.govtID = null;
                                                    _model.govtIdName = null;
                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.delete_forever,
                                                    color: FlutterFlowTheme.of(
                                                            context)
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
                                  if (_model.govtID == null ||
                                      (_model.govtID?.bytes?.isEmpty ?? true))
                                    Text(
                                      'Please upload a File',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 15.0, 24.0, 16.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  var _shouldSetState = false;
                                  if (_model.selectGovtId != null &&
                                      _model.selectGovtId != '') {
                                    if ((_model.govtID == null ||
                                            (_model.govtID?.bytes?.isEmpty ??
                                                true)) &&
                                        (_model.govtIdName == null ||
                                            _model.govtIdName == '')) {
                                      _model.filePicker =
                                          await actions.filePicker();
                                      _shouldSetState = true;
                                      if (_model.filePicker != null &&
                                          (_model.filePicker?.bytes
                                                  ?.isNotEmpty ??
                                              false)) {
                                        _model.govtID = _model.filePicker;
                                        _model.govtIdName = functions
                                            .getFilePath(_model.filePicker);
                                        setState(() {});
                                        if (_model.govtIdName !=
                                            _model.propertyIdname) {
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }

                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('ERROR'),
                                              content: Text(
                                                  'Uploaded file already exists. please try another.'),
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
                                        _model.govtID = null;
                                        _model.govtIdName = null;
                                        setState(() {});
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      } else {
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Info'),
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
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Info'),
                                          content:
                                              Text('Please select one Option'),
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
                                text: 'Upload',
                                icon: Icon(
                                  Icons.upload,
                                  size: 15.0,
                                ),
                                options: FFButtonOptions(
                                  width: 220.0,
                                  height: 35.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: Color(0xFFDCE1F9),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 10.0, 12.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xFFDCE1F9),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 16.0, 0.0, 0.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text:
                                                  'Upload any document of your property ',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: Colors.black,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.bold,
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ),
                                            ),
                                            TextSpan(
                                              text: '*',
                                              style: TextStyle(
                                                color: Color(0xFFD70000),
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.0,
                                              ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFD70000),
                                                fontSize: 14.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 16.0, 0.0, 0.0),
                                      child: FlutterFlowRadioButton(
                                        options: [
                                          'Notary',
                                          'Sale deed',
                                          'Property certification'
                                        ].toList(),
                                        onChanged: (val) async {
                                          setState(() {});
                                          _model.selectPropDoc =
                                              _model.radioButtonValue2;
                                          setState(() {});
                                        },
                                        controller: _model
                                                .radioButtonValueController2 ??=
                                            FormFieldController<String>(null),
                                        optionHeight: 40.0,
                                        optionWidth:
                                            MediaQuery.sizeOf(context).width *
                                                5.0,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .labelMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color: Colors.black,
                                              letterSpacing: 0.5,
                                            ),
                                        textPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                10.0, 0.0, 0.0, 0.0),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.vertical,
                                        radioButtonColor: Color(0xFF5246ED),
                                        inactiveRadioButtonColor: Colors.black,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.center,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          22.0, 15.0, 22.0, 0.0),
                                      child: Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.8,
                                        height:
                                            MediaQuery.sizeOf(context).height *
                                                0.129,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          border: Border.all(
                                            color: Color(0x4C000000),
                                          ),
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            if (_model.propertID != null &&
                                                (_model.propertID?.bytes
                                                        ?.isNotEmpty ??
                                                    false))
                                              Flexible(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 0.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(25.0, 0.0,
                                                                25.0, 0.0),
                                                    child: Container(
                                                      width: 410.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFEFF6FF),
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
                                                                        .propertyIdname,
                                                                    'PropertyCertification.docx',
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
                                                                            12.0,
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
                                                                _model.propertID =
                                                                    null;
                                                                _model.propertyIdname =
                                                                    null;
                                                                setState(() {});
                                                              },
                                                              child: Icon(
                                                                Icons
                                                                    .delete_forever,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
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
                                              ),
                                            if (_model.propertID == null ||
                                                (_model.propertID?.bytes
                                                        ?.isEmpty ??
                                                    true))
                                              Flexible(
                                                child: Text(
                                                  'Please upload a File',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 24.0, 24.0, 16.0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          var _shouldSetState = false;
                                          if (_model.selectPropDoc != null &&
                                              _model.selectPropDoc != '') {
                                            if ((_model.propertID == null ||
                                                    (_model.propertID?.bytes
                                                            ?.isEmpty ??
                                                        true)) &&
                                                (_model.propertyIdname ==
                                                        null ||
                                                    _model.propertyIdname ==
                                                        '')) {
                                              _model.filePicker2 =
                                                  await actions.filePicker();
                                              _shouldSetState = true;
                                              if (_model.filePicker2 != null &&
                                                  (_model.filePicker2?.bytes
                                                          ?.isNotEmpty ??
                                                      false)) {
                                                _model.propertID =
                                                    _model.filePicker2;
                                                _model.propertyIdname =
                                                    functions.getFilePath(
                                                        _model.filePicker2);
                                                setState(() {});
                                                if (_model.govtIdName !=
                                                    _model.propertyIdname) {
                                                  if (_shouldSetState)
                                                    setState(() {});
                                                  return;
                                                }

                                                await showDialog(
                                                  context: context,
                                                  builder:
                                                      (alertDialogContext) {
                                                    return AlertDialog(
                                                      title: Text('ERROR'),
                                                      content: Text(
                                                          'Uploaded file already exists. please try another.'),
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
                                                _model.propertID = null;
                                                _model.propertyIdname = null;
                                                setState(() {});
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
                                                builder: (alertDialogContext) {
                                                  return AlertDialog(
                                                    title: Text('Info'),
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
                                          } else {
                                            await showDialog(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text('Info'),
                                                  content: Text(
                                                      'Please select one Option'),
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

                                          if (_shouldSetState) setState(() {});
                                        },
                                        text: 'Upload',
                                        icon: Icon(
                                          Icons.upload,
                                          size: 15.0,
                                        ),
                                        options: FFButtonOptions(
                                          width: 220.0,
                                          height: 35.0,
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 24.0, 0.0),
                                          iconPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleSmall
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.black,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
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
                                12.0, 10.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 20.0,
                                  height: 20.0,
                                  decoration: BoxDecoration(
                                    color: FFAppState().exHostAcceptTC == true
                                        ? FlutterFlowTheme.of(context).primary
                                        : FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                    borderRadius: BorderRadius.circular(4.0),
                                    border: Border.all(
                                      color: FFAppState().exHostAcceptTC == true
                                          ? FlutterFlowTheme.of(context).primary
                                          : FlutterFlowTheme.of(context)
                                              .secondaryText,
                                      width: 2.0,
                                    ),
                                  ),
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Visibility(
                                    visible:
                                        FFAppState().exHostAcceptTC == true,
                                    child: Align(
                                      alignment:
                                          AlignmentDirectional(0.0, -1.0),
                                      child: FaIcon(
                                        FontAwesomeIcons.check,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        size: 15.0,
                                      ),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: RichText(
                                      textScaler:
                                          MediaQuery.of(context).textScaler,
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'View and Accept',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Open Sans',
                                                  color: Colors.black,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                          TextSpan(
                                            text: '  Terms & Conditions',
                                            style: TextStyle(
                                              color: Color(0xFF5246ED),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.0,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                            mouseCursor:
                                                SystemMouseCursors.click,
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () async {
                                                await showModalBottomSheet(
                                                  isScrollControlled: true,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  enableDrag: false,
                                                  context: context,
                                                  builder: (context) {
                                                    return GestureDetector(
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
                                                      child: Padding(
                                                        padding: MediaQuery
                                                            .viewInsetsOf(
                                                                context),
                                                        child: Container(
                                                          height:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .height *
                                                                  0.65,
                                                          child:
                                                              ExHostTcWidget(),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                ).then((value) =>
                                                    safeSetState(() {}));
                                              },
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color: Colors.black,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
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
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 12.0, 15.0, 12.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      var _shouldSetState = false;
                      if ((_model.govtIdName != null &&
                              _model.govtIdName != '') &&
                          (_model.propertyIdname != null &&
                              _model.propertyIdname != '')) {
                        if (FFAppState().exHostAcceptTC == true) {
                          _model.refreshTokenExHostProperty =
                              await RefreshTokenAPICall.call(
                            clientId: FFAppConstants.clientId,
                            clientSecret: FFAppConstants.clientSecret,
                            grantType: FFAppConstants.refreshGrantType,
                            refreshToken: FFAppState().refreshToken,
                          );

                          _shouldSetState = true;
                          if ((_model.refreshTokenExHostProperty?.succeeded ??
                              true)) {
                            FFAppState().accessToken = getJsonField(
                              (_model.refreshTokenExHostProperty?.jsonBody ??
                                  ''),
                              r'''$.access_token''',
                            ).toString();
                            FFAppState().refreshToken = getJsonField(
                              (_model.refreshTokenExHostProperty?.jsonBody ??
                                  ''),
                              r'''$.refresh_token''',
                            ).toString();
                            setState(() {});
                            _model.exHostPropertyResp =
                                await LiferayBaseUrlGroup.exHostPropertyCall
                                    .call(
                              accessToken: FFAppState().accessToken,
                              file1: widget.files?.first,
                              file2: widget.files?[1],
                              file3: widget.files?[2],
                              file4: widget.files?[3],
                              file5: widget.files?[4],
                              filesArrayJson: widget.fileNames,
                              propertyDetailsJson: widget.propertyDetails,
                            );

                            _shouldSetState = true;
                            if ((_model.exHostPropertyResp?.succeeded ??
                                true)) {
                              _model.exHostSecondAPI = await LiferayBaseUrlGroup
                                  .exHostPropertySecondHalfCall
                                  .call(
                                accessToken: FFAppState().accessToken,
                                filesArrayJson: functions.getDocfileKeyValue(
                                    _model.govtID,
                                    'govId',
                                    _model.propertID,
                                    'propDoc'),
                                identityDetailsJson:
                                    functions.collectExHostIdentityDetails(
                                        getJsonField(
                                          (_model.exHostPropertyResp
                                                  ?.jsonBody ??
                                              ''),
                                          r'''$.folderId''',
                                        ),
                                        _model.radioButtonValue1,
                                        _model.radioButtonValue2,
                                        getJsonField(
                                          (_model.exHostPropertyResp
                                                  ?.jsonBody ??
                                              ''),
                                          r'''$.articleId''',
                                        ).toString()),
                                govId: _model.govtID,
                                propDoc: _model.propertID,
                              );

                              _shouldSetState = true;
                              if ((_model.exHostSecondAPI?.succeeded ?? true)) {
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () => _model
                                              .unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.5,
                                          child: MExSubmitWidget(),
                                        ),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));

                                FFAppState().updateExternalHostJourneyStruct(
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
                                FFAppState().exHostAcceptTC = false;
                                FFAppState().update(() {});
                                if (_shouldSetState) setState(() {});
                                return;
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Api Failed',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                                if (_shouldSetState) setState(() {});
                                return;
                              }
                            } else {
                              await showDialog(
                                context: context,
                                builder: (alertDialogContext) {
                                  return AlertDialog(
                                    title: Text('Information'),
                                    content: Text('Something went wrong!'),
                                    actions: [
                                      TextButton(
                                        onPressed: () =>
                                            Navigator.pop(alertDialogContext),
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
                            FFAppState().accessToken = '';
                            FFAppState().refreshToken = '';
                            FFAppState().update(() {});
                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Error'),
                                  content: Text(
                                      'Your session is expried, please relogin.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(alertDialogContext),
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );

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

                            if (_shouldSetState) setState(() {});
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
                                        Navigator.pop(alertDialogContext),
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
                              title: Text('Info'),
                              content: Text('Missing verification documents.'),
                              actions: [
                                TextButton(
                                  onPressed: () =>
                                      Navigator.pop(alertDialogContext),
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
                      height: 35.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle: GoogleFonts.getFont(
                        'Work Sans',
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                      ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
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
