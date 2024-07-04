import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/phone_login_component/phone_login_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'submit_apartment_component_model.dart';
export 'submit_apartment_component_model.dart';

class SubmitApartmentComponentWidget extends StatefulWidget {
  const SubmitApartmentComponentWidget({
    super.key,
    required this.propertyData,
    required this.fileNames,
    required this.files,
  });

  final dynamic propertyData;
  final List<dynamic>? fileNames;
  final List<FFUploadedFile>? files;

  @override
  State<SubmitApartmentComponentWidget> createState() =>
      _SubmitApartmentComponentWidgetState();
}

class _SubmitApartmentComponentWidgetState
    extends State<SubmitApartmentComponentWidget> {
  late SubmitApartmentComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubmitApartmentComponentModel());

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
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: 311.0,
        height: 140.0,
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
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(35.0, 12.0, 35.0, 0.0),
                  child: Text(
                    'Are you sure to submit your property details',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 10.0, 31.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 4,
                      child: FFButtonWidget(
                        onPressed: () async {
                          Navigator.pop(context);
                        },
                        text: 'Cancel',
                        options: FFButtonOptions(
                          width: 109.0,
                          height: 36.0,
                          padding: EdgeInsets.all(0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyLarge.override(
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
                    Builder(
                      builder: (context) => Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;
                            _model.refreshTokenOutput =
                                await RefreshTokenAPICall.call(
                              clientId: FFAppConstants.clientId,
                              clientSecret: FFAppConstants.clientSecret,
                              grantType: FFAppConstants.refreshGrantType,
                              refreshToken: FFAppState().refreshToken,
                            );
                            _shouldSetState = true;
                            if ((_model.refreshTokenOutput?.succeeded ??
                                true)) {
                              setState(() {
                                FFAppState().accessToken = getJsonField(
                                  (_model.refreshTokenOutput?.jsonBody ?? ''),
                                  r'''$.access_token''',
                                ).toString();
                                FFAppState().refreshToken = getJsonField(
                                  (_model.refreshTokenOutput?.jsonBody ?? ''),
                                  r'''$.refresh_token''',
                                ).toString();
                              });
                              _model.apiResult1zo = await LiferayBaseUrlGroup
                                  .uploadHostPropertyCall
                                  .call(
                                accessToken: FFAppState().accessToken,
                                propertyDetailsJson: widget.propertyData,
                                filesArrayJson: widget.fileNames,
                                file1: widget.files?.first,
                                file2: widget.files?[1],
                                file3: widget.files?[2],
                                file4: widget.files?[3],
                                file5: widget.files?[4],
                                file6: widget.files?[5],
                                file7: widget.files?[6],
                                file8: widget.files?[7],
                                file9: widget.files?[8],
                                file10: widget.files?[9],
                              );
                              _shouldSetState = true;
                              if ((_model.apiResult1zo?.succeeded ?? true)) {
                                Navigator.pop(context);
                                if (MediaQuery.sizeOf(context).width >= 500.0) {
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
                                    FFAppState().webHostStepIndex =
                                        FFAppState().webHostStepIndex + 1;
                                    FFAppState().SavedRoute = '';
                                    FFAppState().propertyPrice = 0;
                                    FFAppState().basicDetailsBedrooms = 1;
                                    FFAppState().SelectedAmenities = [];
                                    FFAppState().webHostSaveRoute = 0;
                                  });
                                  if (_shouldSetState) setState(() {});
                                  return;
                                } else {
                                  await actions.hostForwardRoute(
                                    context,
                                    'uploadPictures',
                                  );
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
                                }

                                if (_shouldSetState) setState(() {});
                                return;
                              } else {
                                Navigator.pop(context);
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Failed'),
                                      content: Text(functions.showErrorMsg(
                                          (_model.apiResult1zo?.jsonBody ?? ''),
                                          (_model.apiResult1zo?.statusCode ??
                                              200))!),
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
                                    title: Text('Information'),
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
                                FFAppState().accessToken = '';
                                FFAppState().refreshToken = '';
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
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.9,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.3,
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
                          text: 'Confirm',
                          options: FFButtonOptions(
                            width: 109.0,
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
