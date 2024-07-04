import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'in_address_details_model.dart';
export 'in_address_details_model.dart';

class InAddressDetailsWidget extends StatefulWidget {
  const InAddressDetailsWidget({super.key});

  @override
  State<InAddressDetailsWidget> createState() => _InAddressDetailsWidgetState();
}

class _InAddressDetailsWidgetState extends State<InAddressDetailsWidget> {
  late InAddressDetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InAddressDetailsModel());

    _model.pincodeTextFieldTextController ??= TextEditingController();
    _model.pincodeTextFieldFocusNode ??= FocusNode();

    _model.stateTextController ??= TextEditingController();
    _model.stateFocusNode ??= FocusNode();

    _model.localityFormTextController ??= TextEditingController();
    _model.localityFormFocusNode ??= FocusNode();

    _model.streetAddTextFieldTextController ??= TextEditingController();
    _model.streetAddTextFieldFocusNode ??= FocusNode();

    _model.countryTextController ??= TextEditingController();
    _model.countryFocusNode ??= FocusNode();

    _model.cityTextFieldTextController ??= TextEditingController();
    _model.cityTextFieldFocusNode ??= FocusNode();

    _model.flatNoTextController ??= TextEditingController();
    _model.flatNoFocusNode ??= FocusNode();

    _model.landmarkAddTextFieldTextController ??= TextEditingController();
    _model.landmarkAddTextFieldFocusNode ??= FocusNode();

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (MediaQuery.sizeOf(context).width >= 500.0)
                      Flexible(
                        child: Text(
                          '',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    Flexible(
                      child: Text(
                        'Share your property address',
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: Padding(
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
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Form(
                          key: _model.formKey,
                          autovalidateMode: AutovalidateMode.disabled,
                          child: Wrap(
                            spacing: 10.0,
                            runSpacing: 10.0,
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width <= 500.0
                                    ? MediaQuery.sizeOf(context).width
                                    : (MediaQuery.sizeOf(context).width * 0.28),
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 8.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'PIN code',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: '*',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .errorText,
                                                fontSize: 14.0,
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
                                    TextFormField(
                                      controller:
                                          _model.pincodeTextFieldTextController,
                                      focusNode:
                                          _model.pincodeTextFieldFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.pincodeTextFieldTextController',
                                        Duration(milliseconds: 2000),
                                        () async {
                                          var _shouldSetState = false;
                                          FFAppState().update(() {
                                            FFAppState().postalCodeLocalities =
                                                false;
                                          });
                                          setState(() {
                                            _model
                                                .localityDropDownValueController
                                                ?.reset();
                                          });
                                          setState(() {
                                            _model.stateTextController?.clear();
                                            _model.countryTextController
                                                ?.clear();
                                            _model.cityTextFieldTextController
                                                ?.clear();
                                            _model.localityFormTextController
                                                ?.clear();
                                          });
                                          _model.pincodeRespons =
                                              await GetDataFromPinCodeCall.call(
                                            address: _model
                                                .pincodeTextFieldTextController
                                                .text,
                                            key: FFAppConstants
                                                .googleApiKeyforPInCodeedonttouch,
                                          );
                                          _shouldSetState = true;
                                          if (GetDataFromPinCodeCall.status(
                                                (_model.pincodeRespons
                                                        ?.jsonBody ??
                                                    ''),
                                              ) ==
                                              'OK') {
                                            if (GetDataFromPinCodeCall
                                                        .postalCodeLocalities(
                                                      (_model.pincodeRespons
                                                              ?.jsonBody ??
                                                          ''),
                                                    ) !=
                                                    null &&
                                                (GetDataFromPinCodeCall
                                                        .postalCodeLocalities(
                                                  (_model.pincodeRespons
                                                          ?.jsonBody ??
                                                      ''),
                                                ))!
                                                    .isNotEmpty) {
                                              setState(() {
                                                _model.countryTextController
                                                        ?.text =
                                                    (GetDataFromPinCodeCall
                                                        .longNames(
                                                  (_model.pincodeRespons
                                                          ?.jsonBody ??
                                                      ''),
                                                )![GetDataFromPinCodeCall
                                                                .longNames(
                                                          (_model.pincodeRespons
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!
                                                            .length -
                                                        1]);
                                              });
                                              setState(() {
                                                _model.stateTextController
                                                        ?.text =
                                                    valueOrDefault<String>(
                                                  GetDataFromPinCodeCall
                                                      .longNames(
                                                    (_model.pincodeRespons
                                                            ?.jsonBody ??
                                                        ''),
                                                  )?[GetDataFromPinCodeCall
                                                              .longNames(
                                                        (_model.pincodeRespons
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!
                                                          .length -
                                                      2],
                                                  'City/Town',
                                                );
                                              });
                                              setState(() {
                                                _model.cityTextFieldTextController
                                                        ?.text =
                                                    valueOrDefault<String>(
                                                  GetDataFromPinCodeCall
                                                      .longNames(
                                                    (_model.pincodeRespons
                                                            ?.jsonBody ??
                                                        ''),
                                                  )?[GetDataFromPinCodeCall
                                                              .longNames(
                                                        (_model.pincodeRespons
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!
                                                          .length -
                                                      3],
                                                  'City/Town',
                                                );
                                              });
                                              setState(() {
                                                _model.localities =
                                                    GetDataFromPinCodeCall
                                                            .postalCodeLocalities(
                                                  (_model.pincodeRespons
                                                          ?.jsonBody ??
                                                      ''),
                                                )!
                                                        .toList()
                                                        .cast<String>();
                                              });
                                              FFAppState().update(() {
                                                FFAppState()
                                                        .postalCodeLocalities =
                                                    true;
                                              });
                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            } else {
                                              setState(() {
                                                _model.countryTextController
                                                        ?.text =
                                                    valueOrDefault<String>(
                                                  GetDataFromPinCodeCall
                                                      .longNames(
                                                    (_model.pincodeRespons
                                                            ?.jsonBody ??
                                                        ''),
                                                  )?[GetDataFromPinCodeCall
                                                              .longNames(
                                                        (_model.pincodeRespons
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!
                                                          .length -
                                                      1],
                                                  'City/Town',
                                                );
                                              });
                                              setState(() {
                                                _model.stateTextController
                                                        ?.text =
                                                    valueOrDefault<String>(
                                                  GetDataFromPinCodeCall
                                                      .longNames(
                                                    (_model.pincodeRespons
                                                            ?.jsonBody ??
                                                        ''),
                                                  )?[GetDataFromPinCodeCall
                                                              .longNames(
                                                        (_model.pincodeRespons
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!
                                                          .length -
                                                      2],
                                                  'City/Town',
                                                );
                                              });
                                              setState(() {
                                                _model.cityTextFieldTextController
                                                        ?.text =
                                                    valueOrDefault<String>(
                                                  GetDataFromPinCodeCall
                                                      .longNames(
                                                    (_model.pincodeRespons
                                                            ?.jsonBody ??
                                                        ''),
                                                  )?[GetDataFromPinCodeCall
                                                              .longNames(
                                                        (_model.pincodeRespons
                                                                ?.jsonBody ??
                                                            ''),
                                                      )!
                                                          .length -
                                                      3],
                                                  'City/Town',
                                                );
                                              });
                                              setState(() {
                                                _model.localityFormTextController
                                                        ?.text =
                                                    (GetDataFromPinCodeCall
                                                                    .longNames(
                                                              (_model.pincodeRespons
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )
                                                                ?.length
                                                                .toString() ==
                                                            '5'
                                                        ? valueOrDefault<
                                                            String>(
                                                            GetDataFromPinCodeCall
                                                                .longNames(
                                                              (_model.pincodeRespons
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            )?[GetDataFromPinCodeCall
                                                                        .longNames(
                                                                  (_model.pincodeRespons
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )!
                                                                    .length -
                                                                4],
                                                            'City/Town',
                                                          )
                                                        : '');
                                              });
                                              FFAppState().update(() {
                                                FFAppState()
                                                        .postalCodeLocalities =
                                                    false;
                                              });
                                              if (_shouldSetState)
                                                setState(() {});
                                              return;
                                            }
                                          } else {
                                            if (_shouldSetState)
                                              setState(() {});
                                            return;
                                          }

                                          if (_shouldSetState) setState(() {});
                                        },
                                      ),
                                      autofocus: false,
                                      textInputAction: TextInputAction.done,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        hintText: 'Enter Pincode',
                                        errorStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .errorText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .errorText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                14.0, 0.0, 14.0, 0.0),
                                        suffixIcon: _model
                                                .pincodeTextFieldTextController!
                                                .text
                                                .isNotEmpty
                                            ? InkWell(
                                                onTap: () async {
                                                  _model
                                                      .pincodeTextFieldTextController
                                                      ?.clear();
                                                  var _shouldSetState = false;
                                                  FFAppState().update(() {
                                                    FFAppState()
                                                            .postalCodeLocalities =
                                                        false;
                                                  });
                                                  setState(() {
                                                    _model
                                                        .localityDropDownValueController
                                                        ?.reset();
                                                  });
                                                  setState(() {
                                                    _model.stateTextController
                                                        ?.clear();
                                                    _model.countryTextController
                                                        ?.clear();
                                                    _model
                                                        .cityTextFieldTextController
                                                        ?.clear();
                                                    _model
                                                        .localityFormTextController
                                                        ?.clear();
                                                  });
                                                  _model.pincodeRespons =
                                                      await GetDataFromPinCodeCall
                                                          .call(
                                                    address: _model
                                                        .pincodeTextFieldTextController
                                                        .text,
                                                    key: FFAppConstants
                                                        .googleApiKeyforPInCodeedonttouch,
                                                  );
                                                  _shouldSetState = true;
                                                  if (GetDataFromPinCodeCall
                                                          .status(
                                                        (_model.pincodeRespons
                                                                ?.jsonBody ??
                                                            ''),
                                                      ) ==
                                                      'OK') {
                                                    if (GetDataFromPinCodeCall
                                                                .postalCodeLocalities(
                                                              (_model.pincodeRespons
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) !=
                                                            null &&
                                                        (GetDataFromPinCodeCall
                                                                .postalCodeLocalities(
                                                          (_model.pincodeRespons
                                                                  ?.jsonBody ??
                                                              ''),
                                                        ))!
                                                            .isNotEmpty) {
                                                      setState(() {
                                                        _model.countryTextController
                                                                ?.text =
                                                            (GetDataFromPinCodeCall
                                                                .longNames(
                                                          (_model.pincodeRespons
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )![GetDataFromPinCodeCall
                                                                        .longNames(
                                                                  (_model.pincodeRespons
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )!
                                                                    .length -
                                                                1]);
                                                      });
                                                      setState(() {
                                                        _model.stateTextController
                                                                ?.text =
                                                            valueOrDefault<
                                                                String>(
                                                          GetDataFromPinCodeCall
                                                              .longNames(
                                                            (_model.pincodeRespons
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )?[GetDataFromPinCodeCall
                                                                      .longNames(
                                                                (_model.pincodeRespons
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )!
                                                                  .length -
                                                              2],
                                                          'City/Town',
                                                        );
                                                      });
                                                      setState(() {
                                                        _model.cityTextFieldTextController
                                                                ?.text =
                                                            valueOrDefault<
                                                                String>(
                                                          GetDataFromPinCodeCall
                                                              .longNames(
                                                            (_model.pincodeRespons
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )?[GetDataFromPinCodeCall
                                                                      .longNames(
                                                                (_model.pincodeRespons
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )!
                                                                  .length -
                                                              3],
                                                          'City/Town',
                                                        );
                                                      });
                                                      setState(() {
                                                        _model.localities =
                                                            GetDataFromPinCodeCall
                                                                    .postalCodeLocalities(
                                                          (_model.pincodeRespons
                                                                  ?.jsonBody ??
                                                              ''),
                                                        )!
                                                                .toList()
                                                                .cast<String>();
                                                      });
                                                      FFAppState().update(() {
                                                        FFAppState()
                                                                .postalCodeLocalities =
                                                            true;
                                                      });
                                                      if (_shouldSetState)
                                                        setState(() {});
                                                      return;
                                                    } else {
                                                      setState(() {
                                                        _model.countryTextController
                                                                ?.text =
                                                            valueOrDefault<
                                                                String>(
                                                          GetDataFromPinCodeCall
                                                              .longNames(
                                                            (_model.pincodeRespons
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )?[GetDataFromPinCodeCall
                                                                      .longNames(
                                                                (_model.pincodeRespons
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )!
                                                                  .length -
                                                              1],
                                                          'City/Town',
                                                        );
                                                      });
                                                      setState(() {
                                                        _model.stateTextController
                                                                ?.text =
                                                            valueOrDefault<
                                                                String>(
                                                          GetDataFromPinCodeCall
                                                              .longNames(
                                                            (_model.pincodeRespons
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )?[GetDataFromPinCodeCall
                                                                      .longNames(
                                                                (_model.pincodeRespons
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )!
                                                                  .length -
                                                              2],
                                                          'City/Town',
                                                        );
                                                      });
                                                      setState(() {
                                                        _model.cityTextFieldTextController
                                                                ?.text =
                                                            valueOrDefault<
                                                                String>(
                                                          GetDataFromPinCodeCall
                                                              .longNames(
                                                            (_model.pincodeRespons
                                                                    ?.jsonBody ??
                                                                ''),
                                                          )?[GetDataFromPinCodeCall
                                                                      .longNames(
                                                                (_model.pincodeRespons
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )!
                                                                  .length -
                                                              3],
                                                          'City/Town',
                                                        );
                                                      });
                                                      setState(() {
                                                        _model
                                                            .localityFormTextController
                                                            ?.text = (GetDataFromPinCodeCall
                                                                        .longNames(
                                                                  (_model.pincodeRespons
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )
                                                                    ?.length
                                                                    .toString() ==
                                                                '5'
                                                            ? valueOrDefault<
                                                                String>(
                                                                GetDataFromPinCodeCall
                                                                    .longNames(
                                                                  (_model.pincodeRespons
                                                                          ?.jsonBody ??
                                                                      ''),
                                                                )?[GetDataFromPinCodeCall
                                                                            .longNames(
                                                                      (_model.pincodeRespons
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )!
                                                                        .length -
                                                                    4],
                                                                'City/Town',
                                                              )
                                                            : '');
                                                      });
                                                      FFAppState().update(() {
                                                        FFAppState()
                                                                .postalCodeLocalities =
                                                            false;
                                                      });
                                                      if (_shouldSetState)
                                                        setState(() {});
                                                      return;
                                                    }
                                                  } else {
                                                    if (_shouldSetState)
                                                      setState(() {});
                                                    return;
                                                  }

                                                  if (_shouldSetState)
                                                    setState(() {});
                                                  setState(() {});
                                                },
                                                child: Icon(
                                                  Icons.clear,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  size: 18.0,
                                                ),
                                              )
                                            : null,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.start,
                                      maxLength: 6,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType: TextInputType.number,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .pincodeTextFieldTextControllerValidator
                                          .asValidator(context),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                            RegExp('[0-9]'))
                                      ],
                                    ),
                                    if (GetDataFromPinCodeCall.status(
                                          (_model.pincodeRespons?.jsonBody ??
                                              ''),
                                        ) ==
                                        'ZERO_RESULTS')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 16.0, 0.0, 8.0),
                                        child: RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Pin code is not valid.',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .errorText,
                                                          letterSpacing: 0.0,
                                                        ),
                                              )
                                            ],
                                            style: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .errorText,
                                              fontSize: 14.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 8.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'State',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: '*',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .errorText,
                                                fontSize: 14.0,
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
                                    TextFormField(
                                      controller: _model.stateTextController,
                                      focusNode: _model.stateFocusNode,
                                      autofocus: false,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      textInputAction: TextInputAction.next,
                                      readOnly: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        hintText: 'State',
                                        errorStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .errorText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .errorText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                14.0, 0.0, 14.0, 0.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.start,
                                      maxLength: 50,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType: TextInputType.streetAddress,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .stateTextControllerValidator
                                          .asValidator(context),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 8.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Locality',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: '*',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .errorText,
                                                fontSize: 14.0,
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
                                    if ((_model.pincodeRespons != null) &&
                                        (GetDataFromPinCodeCall
                                                .postalCodeLocalities(
                                              (_model.pincodeRespons
                                                      ?.jsonBody ??
                                                  ''),
                                            )?.length !=
                                            null))
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: FlutterFlowDropDown<String>(
                                          controller: _model
                                                  .localityDropDownValueController ??=
                                              FormFieldController<String>(null),
                                          options: _model.localities,
                                          onChanged: (val) => setState(() =>
                                              _model.localityDropDownValue =
                                                  val),
                                          height: 50.0,
                                          maxHeight: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.4,
                                          searchHintTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                  ),
                                          searchTextStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyLarge
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    letterSpacing: 0.0,
                                                  ),
                                          hintText: 'Select Locality',
                                          searchHintText:
                                              'Search your locality',
                                          searchCursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          icon: Icon(
                                            Icons.keyboard_arrow_down_rounded,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          elevation: 2.0,
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderWidth: 1.0,
                                          borderRadius: 12.0,
                                          margin:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 4.0, 16.0, 4.0),
                                          hidesUnderline: true,
                                          isOverButton: false,
                                          isSearchable: true,
                                          isMultiSelect: false,
                                        ),
                                      ),
                                    if (GetDataFromPinCodeCall
                                            .postalCodeLocalities(
                                          (_model.pincodeRespons?.jsonBody ??
                                              ''),
                                        )?.length ==
                                        null)
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 5.0, 0.0, 0.0),
                                        child: TextFormField(
                                          controller:
                                              _model.localityFormTextController,
                                          focusNode:
                                              _model.localityFormFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.localityFormTextController',
                                            Duration(milliseconds: 2000),
                                            () async {
                                              setState(() {
                                                FFAppState()
                                                    .updateHostAddressDetailStruct(
                                                  (e) => e
                                                    ..suiteApt = _model
                                                        .localityFormTextController
                                                        .text,
                                                );
                                              });
                                            },
                                          ),
                                          autofocus: false,
                                          textCapitalization:
                                              TextCapitalization.words,
                                          textInputAction: TextInputAction.next,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: false,
                                            hintText: 'Locality',
                                            errorStyle:
                                                FlutterFlowTheme.of(context)
                                                    .displaySmall
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            errorBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .errorText,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            focusedErrorBorder:
                                                OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .errorText,
                                                width: 1.0,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                            ),
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                          textAlign: TextAlign.start,
                                          maxLength: 50,
                                          maxLengthEnforcement:
                                              MaxLengthEnforcement.enforced,
                                          buildCounter: (context,
                                                  {required currentLength,
                                                  required isFocused,
                                                  maxLength}) =>
                                              null,
                                          keyboardType:
                                              TextInputType.streetAddress,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          validator: _model
                                              .localityFormTextControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 8.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Street address',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: '*',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .errorText,
                                                fontSize: 14.0,
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
                                    TextFormField(
                                      controller: _model
                                          .streetAddTextFieldTextController,
                                      focusNode:
                                          _model.streetAddTextFieldFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.streetAddTextFieldTextController',
                                        Duration(milliseconds: 2000),
                                        () async {
                                          setState(() {
                                            FFAppState()
                                                .updateHostAddressDetailStruct(
                                              (e) => e
                                                ..streetAddress = _model
                                                    .streetAddTextFieldTextController
                                                    .text,
                                            );
                                          });
                                        },
                                      ),
                                      autofocus: false,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        hintText: 'Street Address',
                                        errorStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .errorText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .errorText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 0.0, 16.0, 0.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.start,
                                      maxLength: 150,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType: TextInputType.streetAddress,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .streetAddTextFieldTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: MediaQuery.sizeOf(context).width <= 500.0
                                    ? MediaQuery.sizeOf(context).width
                                    : (MediaQuery.sizeOf(context).width * 0.28),
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 8.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Country',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: '*',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .errorText,
                                                fontSize: 14.0,
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
                                    TextFormField(
                                      controller: _model.countryTextController,
                                      focusNode: _model.countryFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.countryTextController',
                                        Duration(milliseconds: 2000),
                                        () async {
                                          setState(() {
                                            FFAppState()
                                                .updateHostAddressDetailStruct(
                                              (e) => e
                                                ..city = _model
                                                    .countryTextController.text,
                                            );
                                          });
                                        },
                                      ),
                                      autofocus: false,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      textInputAction: TextInputAction.next,
                                      readOnly: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        hintText: 'Country',
                                        errorStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .errorText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .errorText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                14.0, 0.0, 14.0, 0.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.start,
                                      maxLength: 150,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType: TextInputType.streetAddress,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .countryTextControllerValidator
                                          .asValidator(context),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 8.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'City/Town',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: '*',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .errorText,
                                                fontSize: 14.0,
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
                                    TextFormField(
                                      controller:
                                          _model.cityTextFieldTextController,
                                      focusNode: _model.cityTextFieldFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.cityTextFieldTextController',
                                        Duration(milliseconds: 2000),
                                        () async {
                                          setState(() {
                                            FFAppState()
                                                .updateHostAddressDetailStruct(
                                              (e) => e
                                                ..city = _model
                                                    .cityTextFieldTextController
                                                    .text,
                                            );
                                          });
                                        },
                                      ),
                                      autofocus: false,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      textInputAction: TextInputAction.next,
                                      readOnly: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        hintText: 'City',
                                        errorStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .errorText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .errorText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                14.0, 0.0, 14.0, 0.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.start,
                                      maxLength: 50,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType: TextInputType.streetAddress,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .cityTextFieldTextControllerValidator
                                          .asValidator(context),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 8.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Flat/House/Villa Number',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: '*',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .errorText,
                                                fontSize: 14.0,
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
                                    TextFormField(
                                      controller: _model.flatNoTextController,
                                      focusNode: _model.flatNoFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.flatNoTextController',
                                        Duration(milliseconds: 2000),
                                        () async {
                                          setState(() {
                                            FFAppState()
                                                .updateHostAddressDetailStruct(
                                              (e) => e
                                                ..state = _model
                                                    .flatNoTextController.text,
                                            );
                                          });
                                        },
                                      ),
                                      autofocus: false,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        hintText: 'Flat No',
                                        errorStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .errorText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .errorText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                14.0, 0.0, 14.0, 0.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.start,
                                      maxLength: 50,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType: TextInputType.streetAddress,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .flatNoTextControllerValidator
                                          .asValidator(context),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 8.0),
                                      child: RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Landmark',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: ' (Optional)',
                                              style: GoogleFonts.getFont(
                                                'Poppins',
                                                color: Color(0x85000D3E),
                                                fontSize: 14.0,
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
                                    TextFormField(
                                      controller: _model
                                          .landmarkAddTextFieldTextController,
                                      focusNode:
                                          _model.landmarkAddTextFieldFocusNode,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        '_model.landmarkAddTextFieldTextController',
                                        Duration(milliseconds: 2000),
                                        () async {
                                          setState(() {
                                            FFAppState()
                                                .updateHostAddressDetailStruct(
                                              (e) => e
                                                ..streetAddress = _model
                                                    .landmarkAddTextFieldTextController
                                                    .text,
                                            );
                                          });
                                        },
                                      ),
                                      autofocus: false,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      textInputAction: TextInputAction.next,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        isDense: false,
                                        hintText: 'Landmark',
                                        errorStyle: FlutterFlowTheme.of(context)
                                            .displaySmall
                                            .override(
                                              fontFamily: 'Poppins',
                                              letterSpacing: 0.0,
                                            ),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        errorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .errorText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        focusedErrorBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: FlutterFlowTheme.of(context)
                                                .errorText,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(12.0),
                                        ),
                                        contentPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                16.0, 0.0, 16.0, 0.0),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                      textAlign: TextAlign.start,
                                      maxLength: 150,
                                      maxLengthEnforcement:
                                          MaxLengthEnforcement.enforced,
                                      buildCounter: (context,
                                              {required currentLength,
                                              required isFocused,
                                              maxLength}) =>
                                          null,
                                      keyboardType: TextInputType.streetAddress,
                                      cursorColor: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      validator: _model
                                          .landmarkAddTextFieldTextControllerValidator
                                          .asValidator(context),
                                    ),
                                  ],
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
                      mainAxisAlignment: MainAxisAlignment.start,
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
                                          FFAppState().webHostStepIndex + -2;
                                    });
                                    return;
                                  } else {
                                    await actions.hostBackRoute(
                                      context,
                                      'addressDetails',
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
                                  if (_model.formKey.currentState == null ||
                                      !_model.formKey.currentState!
                                          .validate()) {
                                    return;
                                  }
                                  if ((FFAppState().postalCodeLocalities ==
                                          true) &&
                                      (_model.localityDropDownValue == null ||
                                          _model.localityDropDownValue == '')) {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Info'),
                                          content: Text(
                                              'Select locality from dropdown.'),
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
                                  } else if ((FFAppState()
                                              .postalCodeLocalities ==
                                          false) &&
                                      (_model.localityFormTextController.text ==
                                              null ||
                                          _model.localityFormTextController
                                                  .text ==
                                              '')) {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Info'),
                                          content: Text('Enter your locality.'),
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
                                  } else {
                                    setState(() {
                                      FFAppState()
                                          .updateHostAddressDetailStruct(
                                        (e) => e
                                          ..region =
                                              _model.countryTextController.text
                                          ..streetAddress = _model
                                              .streetAddTextFieldTextController
                                              .text
                                          ..city = _model
                                              .cityTextFieldTextController.text
                                          ..state =
                                              _model.stateTextController.text
                                          ..locality = _model
                                                          .localityDropDownValue !=
                                                      null &&
                                                  _model.localityDropDownValue !=
                                                      ''
                                              ? _model.localityDropDownValue
                                              : _model
                                                  .localityFormTextController
                                                  .text
                                          ..zip = _model
                                              .pincodeTextFieldTextController
                                              .text
                                          ..landmark = _model
                                              .landmarkAddTextFieldTextController
                                              .text
                                          ..plotNo =
                                              _model.flatNoTextController.text,
                                      );
                                    });
                                    if (MediaQuery.sizeOf(context).width >=
                                        500.0) {
                                      FFAppState().update(() {
                                        FFAppState().webHostStepIndex =
                                            FFAppState().webHostStepIndex + 1;
                                      });
                                      return;
                                    } else {
                                      await actions.hostForwardRoute(
                                        context,
                                        'addressDetails',
                                      );
                                      return;
                                    }
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
                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                return;
                              }
                              setState(() {
                                FFAppState().updateHostAddressDetailStruct(
                                  (e) => e
                                    ..region = _model.countryTextController.text
                                    ..streetAddress = _model
                                        .streetAddTextFieldTextController.text
                                    ..city =
                                        _model.cityTextFieldTextController.text
                                    ..state = _model.stateTextController.text
                                    ..locality = _model.localityDropDownValue !=
                                                null &&
                                            _model.localityDropDownValue != ''
                                        ? _model.localityDropDownValue
                                        : _model.localityFormTextController.text
                                    ..zip = _model
                                        .pincodeTextFieldTextController.text
                                    ..landmark = _model
                                        .landmarkAddTextFieldTextController.text
                                    ..plotNo = _model.flatNoTextController.text,
                                );
                              });
                              if (MediaQuery.sizeOf(context).width >= 500.0) {
                                FFAppState().update(() {
                                  FFAppState().webHostSaveRoute = FFAppState()
                                      .ManageRoutesList
                                      .toList()
                                      .indexOf('addressDetails');
                                });
                                Navigator.pop(context);
                              } else {
                                FFAppState().update(() {
                                  FFAppState().SavedRoute = 'addressDetails';
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
