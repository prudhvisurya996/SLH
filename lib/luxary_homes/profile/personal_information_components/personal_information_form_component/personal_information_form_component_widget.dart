import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'personal_information_form_component_model.dart';
export 'personal_information_form_component_model.dart';

class PersonalInformationFormComponentWidget extends StatefulWidget {
  const PersonalInformationFormComponentWidget({super.key});

  @override
  State<PersonalInformationFormComponentWidget> createState() =>
      _PersonalInformationFormComponentWidgetState();
}

class _PersonalInformationFormComponentWidgetState
    extends State<PersonalInformationFormComponentWidget> {
  late PersonalInformationFormComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model =
        createModel(context, () => PersonalInformationFormComponentModel());

    _model.firstNameTextFieldTextController ??=
        TextEditingController(text: FFAppState().userData.firstName);
    _model.firstNameTextFieldFocusNode ??= FocusNode();

    _model.lastNameTextFieldTextController ??=
        TextEditingController(text: FFAppState().userData.lastName);
    _model.lastNameTextFieldFocusNode ??= FocusNode();

    _model.mobileNumberTextFieldTextController ??= TextEditingController(
        text: functions.removeCountryCode(FFAppState().userData.phoneNumber));
    _model.mobileNumberTextFieldFocusNode ??= FocusNode();

    _model.emailTextFieldTextController ??=
        TextEditingController(text: FFAppState().userData.emailAddress);
    _model.emailTextFieldFocusNode ??= FocusNode();

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
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Personal Information',
                style: GoogleFonts.getFont(
                  'Poppins',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  if (MediaQuery.sizeOf(context).width < 991.0) {
                    Navigator.pop(context);
                  } else {
                    Navigator.pop(context);
                  }
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(0.0),
                  child: SvgPicture.asset(
                    'assets/images/close.svg',
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
        if (_model.showResponseError)
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 8.0),
              child: Text(
                getJsonField(
                  (_model.updateUserOutput?.jsonBody ?? ''),
                  r'''$.message''',
                ).toString(),
                style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ),
        Container(
          width: double.infinity,
          height: 1.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
        ),
        Flexible(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 20.0, 12.0, 20.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 8.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'First name',
                                  style: FlutterFlowTheme.of(context)
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
                                        FlutterFlowTheme.of(context).errorText,
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
                          controller: _model.firstNameTextFieldTextController,
                          focusNode: _model.firstNameTextFieldFocusNode,
                          autofocus: false,
                          textCapitalization: TextCapitalization.words,
                          textInputAction: TextInputAction.next,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
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
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
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
                                14.0, 0.0, 14.0, 0.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                          textAlign: TextAlign.start,
                          maxLength: 25,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          buildCounter: (context,
                                  {required currentLength,
                                  required isFocused,
                                  maxLength}) =>
                              null,
                          keyboardType: TextInputType.name,
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model
                              .firstNameTextFieldTextControllerValidator
                              .asValidator(context),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 8.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Last name',
                                  style: FlutterFlowTheme.of(context)
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
                                        FlutterFlowTheme.of(context).errorText,
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
                          controller: _model.lastNameTextFieldTextController,
                          focusNode: _model.lastNameTextFieldFocusNode,
                          autofocus: false,
                          textCapitalization: TextCapitalization.words,
                          textInputAction: TextInputAction.next,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
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
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
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
                                14.0, 0.0, 14.0, 0.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                          textAlign: TextAlign.start,
                          maxLength: 25,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          buildCounter: (context,
                                  {required currentLength,
                                  required isFocused,
                                  maxLength}) =>
                              null,
                          keyboardType: TextInputType.name,
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model
                              .lastNameTextFieldTextControllerValidator
                              .asValidator(context),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 8.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'DOB (DD-MM-YYYY)',
                                  style: FlutterFlowTheme.of(context)
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
                                        FlutterFlowTheme.of(context).errorText,
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
                        Container(
                          width: double.infinity,
                          height: 50.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                14.0, 0.0, 7.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                final _datePickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: (functions.getPastDate() ??
                                      DateTime.now()),
                                  firstDate: DateTime(1900),
                                  lastDate: (functions.getPastDate() ??
                                      DateTime.now()),
                                );

                                if (_datePickedDate != null) {
                                  safeSetState(() {
                                    _model.datePicked = DateTime(
                                      _datePickedDate.year,
                                      _datePickedDate.month,
                                      _datePickedDate.day,
                                    );
                                  });
                                }
                                setState(() {
                                  FFAppState().updateUserDataStruct(
                                    (e) => e
                                      ..dateOfBirth = dateTimeFormat(
                                          'dd-MM-yyyy', _model.datePicked),
                                  );
                                });
                              },
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Text(
                                      FFAppState().userData.dateOfBirth,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.date_range_rounded,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 24.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 8.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Mobile Number',
                                  style: FlutterFlowTheme.of(context)
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
                                        FlutterFlowTheme.of(context).errorText,
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
                              _model.mobileNumberTextFieldTextController,
                          focusNode: _model.mobileNumberTextFieldFocusNode,
                          autofocus: false,
                          textInputAction: TextInputAction.done,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
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
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
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
                                14.0, 0.0, 14.0, 0.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                          textAlign: TextAlign.start,
                          maxLength: 15,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          buildCounter: (context,
                                  {required currentLength,
                                  required isFocused,
                                  maxLength}) =>
                              null,
                          keyboardType: TextInputType.phone,
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model
                              .mobileNumberTextFieldTextControllerValidator
                              .asValidator(context),
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 8.0),
                          child: Text(
                            'Email',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                          ),
                        ),
                        TextFormField(
                          controller: _model.emailTextFieldTextController,
                          focusNode: _model.emailTextFieldFocusNode,
                          autofocus: false,
                          readOnly: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            isDense: false,
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
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
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
                            filled: true,
                            fillColor: Color(0x32878787),
                            contentPadding: EdgeInsetsDirectional.fromSTEB(
                                14.0, 0.0, 14.0, 0.0),
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                          textAlign: TextAlign.start,
                          maxLength: 50,
                          maxLengthEnforcement: MaxLengthEnforcement.enforced,
                          buildCounter: (context,
                                  {required currentLength,
                                  required isFocused,
                                  maxLength}) =>
                              null,
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: FlutterFlowTheme.of(context).primaryText,
                          validator: _model
                              .emailTextFieldTextControllerValidator
                              .asValidator(context),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: FFButtonWidget(
                  onPressed: () async {
                    var _shouldSetState = false;
                    setState(() {
                      _model.showResponseError = false;
                    });
                    if (_model.formKey.currentState == null ||
                        !_model.formKey.currentState!.validate()) {
                      return;
                    }
                    _model.refreshOutput = await RefreshTokenAPICall.call(
                      clientId: FFAppConstants.clientId,
                      clientSecret: FFAppConstants.clientSecret,
                      grantType: FFAppConstants.refreshGrantType,
                      refreshToken: FFAppState().refreshToken,
                    );
                    _shouldSetState = true;
                    if ((_model.refreshOutput?.succeeded ?? true)) {
                      setState(() {
                        FFAppState().accessToken = getJsonField(
                          (_model.refreshOutput?.jsonBody ?? ''),
                          r'''$.access_token''',
                        ).toString();
                        FFAppState().refreshToken = getJsonField(
                          (_model.refreshOutput?.jsonBody ?? ''),
                          r'''$.refresh_token''',
                        ).toString();
                      });
                      _model.updateUserOutput =
                          await LiferayBaseUrlGroup.updateUserAPICall.call(
                        accessToken: FFAppState().accessToken,
                        firstName: _model.firstNameTextFieldTextController.text,
                        lastName: _model.lastNameTextFieldTextController.text,
                        phoneNumber:
                            '+91${_model.mobileNumberTextFieldTextController.text}',
                        dateOfBirth: FFAppState().userData.dateOfBirth,
                      );
                      _shouldSetState = true;
                      if ((_model.updateUserOutput?.succeeded ?? true)) {
                        setState(() {
                          FFAppState().updateUserDataStruct(
                            (e) => e
                              ..firstName =
                                  _model.firstNameTextFieldTextController.text
                              ..lastName =
                                  _model.lastNameTextFieldTextController.text
                              ..phoneNumber =
                                  '+91${_model.mobileNumberTextFieldTextController.text}'
                              ..dateOfBirth = FFAppState().userData.dateOfBirth,
                          );
                        });
                        if (MediaQuery.sizeOf(context).width < 991.0) {
                          Navigator.pop(context);
                        } else {
                          Navigator.pop(context);
                        }

                        await actions.toastAction(
                          context,
                          FFAppConstants.success,
                          FlutterFlowTheme.of(context).success,
                          getJsonField(
                            (_model.updateUserOutput?.jsonBody ?? ''),
                            r'''$.message''',
                          ).toString(),
                        );
                      } else {
                        if ((_model.updateUserOutput?.statusCode ?? 200) ==
                            200) {
                          setState(() {
                            _model.showResponseError = false;
                          });
                        } else {
                          setState(() {
                            _model.showResponseError = true;
                          });
                        }
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
                      if (_shouldSetState) setState(() {});
                      return;
                    }

                    if (_shouldSetState) setState(() {});
                  },
                  text: 'Update Information',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: GoogleFonts.getFont(
                      'Poppins',
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                    ),
                    elevation: 3.0,
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
        ),
      ],
    );
  }
}
