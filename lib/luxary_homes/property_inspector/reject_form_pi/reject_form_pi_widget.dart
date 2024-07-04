import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/phone_login_component/phone_login_component_widget.dart';
import '/luxary_homes/property_inspector/pi_property_rejected/pi_property_rejected_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reject_form_pi_model.dart';
export 'reject_form_pi_model.dart';

class RejectFormPiWidget extends StatefulWidget {
  const RejectFormPiWidget({
    super.key,
    required this.reviewId,
  });

  final int? reviewId;

  @override
  State<RejectFormPiWidget> createState() => _RejectFormPiWidgetState();
}

class _RejectFormPiWidgetState extends State<RejectFormPiWidget> {
  late RejectFormPiModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RejectFormPiModel());

    _model.cRTextFieldTextController ??= TextEditingController();
    _model.cRTextFieldFocusNode ??= FocusNode();

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Reason for Rejection',
                      style: GoogleFonts.getFont(
                        'Poppins',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontWeight: FontWeight.w600,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(1.0, -1.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: Color(0x4DBBD1EA),
                    icon: Icon(
                      Icons.clear_sharp,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Description',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w500,
                            fontSize: 18.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Text(
                            '*',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              color: Color(0xFFD70000),
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              6.0, 0.0, 0.0, 0.0),
                          child: Text(
                            '(500 characters)',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              color: Color(0x7F000D3E),
                              fontWeight: FontWeight.w500,
                              fontSize: 10.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextFormField(
                    controller: _model.cRTextFieldTextController,
                    focusNode: _model.cRTextFieldFocusNode,
                    autofocus: false,
                    obscureText: false,
                    decoration: InputDecoration(
                      isDense: false,
                      errorStyle:
                          FlutterFlowTheme.of(context).displaySmall.override(
                                fontFamily: 'Poppins',
                                letterSpacing: 0.0,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).errorText,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).errorText,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                          14.0, 10.0, 14.0, 10.0),
                    ),
                    style: FlutterFlowTheme.of(context).bodyLarge.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                    textAlign: TextAlign.start,
                    maxLines: null,
                    maxLength: 500,
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    buildCounter: (context,
                            {required currentLength,
                            required isFocused,
                            maxLength}) =>
                        null,
                    keyboardType: TextInputType.emailAddress,
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator: _model.cRTextFieldTextControllerValidator
                        .asValidator(context),
                  ),
                ],
              ),
            ),
          ),
          Builder(
            builder: (context) => Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 12.0),
              child: FFButtonWidget(
                onPressed: () async {
                  var _shouldSetState = false;
                  if (_model.formKey.currentState == null ||
                      !_model.formKey.currentState!.validate()) {
                    return;
                  }
                  _model.refreshRespForPIUpdateStatus =
                      await RefreshTokenAPICall.call(
                    clientId: FFAppConstants.clientId,
                    clientSecret: FFAppConstants.clientSecret,
                    grantType: FFAppConstants.refreshGrantType,
                    refreshToken: FFAppState().refreshToken,
                  );
                  _shouldSetState = true;
                  if ((_model.refreshRespForPIUpdateStatus?.succeeded ??
                      true)) {
                    setState(() {
                      FFAppState().accessToken = getJsonField(
                        (_model.refreshRespForPIUpdateStatus?.jsonBody ?? ''),
                        r'''$.access_token''',
                      ).toString();
                      FFAppState().refreshToken = getJsonField(
                        (_model.refreshRespForPIUpdateStatus?.jsonBody ?? ''),
                        r'''$.refresh_token''',
                      ).toString();
                    });
                    _model.piStatusUpdateRespReject =
                        await LiferayBaseUrlGroup.pIStatusUpdateCall.call(
                      accessToken: FFAppState().accessToken,
                      reviewId: widget.reviewId,
                      status: 4,
                      comments: _model.cRTextFieldTextController.text,
                    );
                    _shouldSetState = true;
                    if ((_model.piStatusUpdateRespReject?.succeeded ?? true)) {
                      Navigator.pop(context);
                      await showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (dialogContext) {
                          return Dialog(
                            elevation: 0,
                            insetPadding: EdgeInsets.zero,
                            backgroundColor: Colors.transparent,
                            alignment: AlignmentDirectional(0.0, 0.0)
                                .resolve(Directionality.of(context)),
                            child: PiPropertyRejectedWidget(
                              message: 'Property Rejected',
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));

                      if (_shouldSetState) setState(() {});
                      return;
                    } else {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('Information'),
                            content: Text('Something went wrong'),
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
                    FFAppState().update(() {
                      FFAppState().hostAddressDetail =
                          HostAddressDetailsStruct.fromSerializableMap(
                              jsonDecode('{\"availability\":\"[]\"}'));
                      FFAppState().propertyType = jsonDecode(
                          '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                      FFAppState().basicDetailsBeds = 1;
                      FFAppState().basicDetailsGuests = 1;
                      FFAppState().basicDetailsBathrooms = 1;
                      FFAppState().propertyBasicData = BasicDetailsStruct();
                      FFAppState().selectedAMNames = [];
                      FFAppState().tellAboutYourProperty =
                          TellYourPropertyStruct();
                      FFAppState().webHostStepIndex = 0;
                      FFAppState().SavedRoute = '';
                      FFAppState().propertyPrice = 0;
                      FFAppState().basicDetailsBedrooms = 1;
                      FFAppState().SelectedAmenities = [];
                      FFAppState().webHostSaveRoute = 0;
                      FFAppState().accessToken = '';
                      FFAppState().refreshToken = '';
                      FFAppState().exHostAcceptTC = false;
                    });
                    await showDialog(
                      barrierColor: Color(0xCC000D3E),
                      barrierDismissible: false,
                      context: context,
                      builder: (dialogContext) {
                        return Dialog(
                          elevation: 0,
                          insetPadding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          alignment: AlignmentDirectional(0.0, 0.0)
                              .resolve(Directionality.of(context)),
                          child: Container(
                            height: MediaQuery.sizeOf(context).height * 0.9,
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            child: PhoneLoginComponentWidget(),
                          ),
                        );
                      },
                    ).then((value) => setState(() {}));

                    if (_shouldSetState) setState(() {});
                    return;
                  }

                  if (_shouldSetState) setState(() {});
                },
                text: 'Reject',
                options: FFButtonOptions(
                  height: 36.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFFE34040),
                  textStyle: FlutterFlowTheme.of(context).labelSmall.override(
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
          ),
        ],
      ),
    );
  }
}
