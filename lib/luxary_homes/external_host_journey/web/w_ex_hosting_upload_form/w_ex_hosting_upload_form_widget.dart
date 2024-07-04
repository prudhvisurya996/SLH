import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/external_host_journey/ex_host_tc/ex_host_tc_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'w_ex_hosting_upload_form_model.dart';
export 'w_ex_hosting_upload_form_model.dart';

class WExHostingUploadFormWidget extends StatefulWidget {
  const WExHostingUploadFormWidget({super.key});

  @override
  State<WExHostingUploadFormWidget> createState() =>
      _WExHostingUploadFormWidgetState();
}

class _WExHostingUploadFormWidgetState
    extends State<WExHostingUploadFormWidget> {
  late WExHostingUploadFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WExHostingUploadFormModel());

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

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
                child: Text(
                  'Join the thriving SID Luxury Homes community!',
                  textAlign: TextAlign.start,
                  style: GoogleFonts.getFont(
                    'Noto Serif',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 16.0, 24.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 15.0, 0.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-1.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 20.0),
                                        child: RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    'Upload any Govt ID of yours',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16.0,
                                                  decoration:
                                                      TextDecoration.underline,
                                                  fontStyle: FontStyle.normal,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' *',
                                                style: GoogleFonts.getFont(
                                                  'Poppins',
                                                  color: Color(0xFFD70000),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16.0,
                                                ),
                                              )
                                            ],
                                            style: GoogleFonts.getFont(
                                              'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 12.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowRadioButton(
                                          options: [
                                            'Aadhar Card',
                                            'Passport',
                                            'Driving license',
                                            'Voter ID'
                                          ].toList(),
                                          onChanged: (val) async {
                                            setState(() {});
                                            _model.selectGovId =
                                                _model.radioButtonValue1;
                                            setState(() {});
                                          },
                                          controller: _model
                                                  .radioButtonValueController1 ??=
                                              FormFieldController<String>(null),
                                          optionHeight: 55.0,
                                          optionWidth: 200.0,
                                          textStyle: GoogleFonts.getFont(
                                            'Poppins',
                                            color: Colors.black,
                                            fontSize: 16.0,
                                          ),
                                          buttonPosition:
                                              RadioButtonPosition.left,
                                          direction: Axis.vertical,
                                          radioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                          inactiveRadioButtonColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          toggleable: false,
                                          horizontalAlignment:
                                              WrapAlignment.start,
                                          verticalAlignment:
                                              WrapCrossAlignment.start,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Flexible(
                                child: Align(
                                  alignment: AlignmentDirectional(1.0, 0.0),
                                  child: Container(
                                    width: 609.0,
                                    height: 208.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      border: Border.all(
                                        color: Color(0x4C000000),
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        if (_model.govtID != null &&
                                            (_model.govtID?.bytes?.isNotEmpty ??
                                                false))
                                          Flexible(
                                            child: Align(
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
                                                      color: Color(0xFF60A5FA),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(12.0, 0.0,
                                                                12.0, 0.0),
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
                                                                    .govtIdName,
                                                                'DrivingLicence.jpg',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
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
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            _model.govtID =
                                                                null;
                                                            _model.govtIdName =
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
                                          ),
                                        if (_model.govtID == null ||
                                            (_model.govtID?.bytes?.isEmpty ??
                                                true))
                                          Flexible(
                                            child: Text(
                                              'Please upload a File',
                                              style:
                                                  FlutterFlowTheme.of(context)
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
                            ],
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
                                if (_model.selectGovId != null &&
                                    _model.selectGovId != '') {
                                  if ((_model.govtID == null ||
                                          (_model.govtID?.bytes?.isEmpty ??
                                              true)) &&
                                      (_model.govtIdName == null ||
                                          _model.govtIdName == '')) {
                                    _model.filePicker =
                                        await actions.filePicker();
                                    _shouldSetState = true;
                                    if (_model.filePicker != null &&
                                        (_model.filePicker?.bytes?.isNotEmpty ??
                                            false)) {
                                      _model.govtID = _model.filePicker;
                                      setState(() {});
                                      _model.govtIdName = functions
                                          .getFilePath(_model.filePicker);
                                      setState(() {});
                                      if (_model.govtIdName !=
                                          _model.propertyIdName) {
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }

                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Alert!'),
                                            content: Text(
                                                'Uploaded file already exists. please try another.'),
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
                                width: 330.0,
                                height: 44.0,
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
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 16.0, 24.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 15.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 20.0),
                                          child: RichText(
                                            textScaler: MediaQuery.of(context)
                                                .textScaler,
                                            text: TextSpan(
                                              children: [
                                                TextSpan(
                                                  text:
                                                      'Upload any document of your property',
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0,
                                                    decoration: TextDecoration
                                                        .underline,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: ' *',
                                                  style: GoogleFonts.getFont(
                                                    'Poppins',
                                                    color: Color(0xFFD70000),
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0,
                                                  ),
                                                )
                                              ],
                                              style: GoogleFonts.getFont(
                                                'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 12.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      FlutterFlowRadioButton(
                                        options: [
                                          'Notary',
                                          'Sale deed',
                                          'Property Certification'
                                        ].toList(),
                                        onChanged: (val) async {
                                          setState(() {});
                                          _model.selectPropertyDoc =
                                              _model.radioButtonValue2;
                                          setState(() {});
                                        },
                                        controller: _model
                                                .radioButtonValueController2 ??=
                                            FormFieldController<String>(null),
                                        optionHeight: 55.0,
                                        textStyle: GoogleFonts.getFont(
                                          'Poppins',
                                          color: Colors.black,
                                          fontSize: 16.0,
                                        ),
                                        buttonPosition:
                                            RadioButtonPosition.left,
                                        direction: Axis.vertical,
                                        radioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .primary,
                                        inactiveRadioButtonColor:
                                            FlutterFlowTheme.of(context)
                                                .secondaryText,
                                        toggleable: false,
                                        horizontalAlignment:
                                            WrapAlignment.start,
                                        verticalAlignment:
                                            WrapCrossAlignment.start,
                                      ),
                                    ],
                                  ),
                                ),
                                Flexible(
                                  child: Align(
                                    alignment: AlignmentDirectional(1.0, 0.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 40.0, 0.0, 0.0),
                                      child: Container(
                                        width: 609.0,
                                        height: 208.0,
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
                                            if (_model.propertyID != null &&
                                                (_model.propertyID?.bytes
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
                                                                        .propertyIdName,
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
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0, 0.0),
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
                                                                onTap:
                                                                    () async {
                                                                  _model.propertyID =
                                                                      null;
                                                                  _model.propertyIdName =
                                                                      null;
                                                                  setState(
                                                                      () {});
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
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            if (_model.propertyID == null ||
                                                (_model.propertyID?.bytes
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
                                ),
                              ],
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
                                  if (_model.selectPropertyDoc != null &&
                                      _model.selectPropertyDoc != '') {
                                    if ((_model.propertyID == null ||
                                            (_model.propertyID?.bytes
                                                    ?.isEmpty ??
                                                true)) &&
                                        (_model.propertyIdName == null ||
                                            _model.propertyIdName == '')) {
                                      _model.filePickerCertificate =
                                          await actions.filePicker();
                                      _shouldSetState = true;
                                      if (_model.filePickerCertificate !=
                                              null &&
                                          (_model.filePickerCertificate?.bytes
                                                  ?.isNotEmpty ??
                                              false)) {
                                        _model.propertyID =
                                            _model.filePickerCertificate;
                                        setState(() {});
                                        _model.propertyIdName =
                                            functions.getFilePath(
                                                _model.filePickerCertificate);
                                        setState(() {});
                                        if (_model.govtIdName !=
                                            _model.propertyIdName) {
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        }

                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('ERROR'),
                                              content: Text(
                                                  'Uploded file already exists. please try another.'),
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
                                        _model.propertyID = null;
                                        _model.propertyIdName = null;
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
                                              Text('Please select one option.'),
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
                                  width: 330.0,
                                  height: 44.0,
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 35.0, 0.0, 50.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 20.0,
                      height: 20.0,
                      decoration: BoxDecoration(
                        color: FFAppState().exHostAcceptTC == true
                            ? FlutterFlowTheme.of(context).primary
                            : FlutterFlowTheme.of(context).primaryBackground,
                        borderRadius: BorderRadius.circular(4.0),
                        border: Border.all(
                          color: FFAppState().exHostAcceptTC == true
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).secondaryText,
                          width: 2.0,
                        ),
                      ),
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Visibility(
                        visible: FFAppState().exHostAcceptTC == true,
                        child: Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: FaIcon(
                            FontAwesomeIcons.check,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 15.0,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'View and Accept ',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextSpan(
                                text: 'Terms & Conditions',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 16.0,
                                  decoration: TextDecoration.underline,
                                ),
                                mouseCursor: SystemMouseCursors.click,
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () async {
                                    await showDialog(
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, -1.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.9,
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.9,
                                            child: ExHostTcWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));
                                  },
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
