import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/common_components/phone_login_component/phone_login_component_widget.dart';
import '/luxary_homes/common_components/register_success_component/register_success_component_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'register_form_component_model.dart';
export 'register_form_component_model.dart';

class RegisterFormComponentWidget extends StatefulWidget {
  const RegisterFormComponentWidget({super.key});

  @override
  State<RegisterFormComponentWidget> createState() =>
      _RegisterFormComponentWidgetState();
}

class _RegisterFormComponentWidgetState
    extends State<RegisterFormComponentWidget> {
  late RegisterFormComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegisterFormComponentModel());

    _model.firstNameTextFieldTextController ??= TextEditingController();
    _model.firstNameTextFieldFocusNode ??= FocusNode();

    _model.lastNameTextFieldTextController ??= TextEditingController();
    _model.lastNameTextFieldFocusNode ??= FocusNode();

    _model.mobileNumberTextFieldTextController ??= TextEditingController();
    _model.mobileNumberTextFieldFocusNode ??= FocusNode();

    _model.emailTextFieldTextController ??= TextEditingController();
    _model.emailTextFieldFocusNode ??= FocusNode();

    _model.pincodeFieldTextController ??= TextEditingController();
    _model.pincodeFieldFocusNode ??= FocusNode();

    _model.countryFieldTextController ??= TextEditingController();
    _model.countryFieldFocusNode ??= FocusNode();

    _model.stateFieldTextController ??= TextEditingController();
    _model.stateFieldFocusNode ??= FocusNode();

    _model.cityTownFieldTextController ??= TextEditingController();
    _model.cityTownFieldFocusNode ??= FocusNode();

    _model.localityFieldTextController ??= TextEditingController();
    _model.localityFieldFocusNode ??= FocusNode();

    _model.streetFieldTextController ??= TextEditingController();
    _model.streetFieldFocusNode ??= FocusNode();

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'User signing up',
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Poppins',
                      letterSpacing: 0.0,
                    ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 18.0,
                    buttonSize: 36.0,
                    fillColor: FlutterFlowTheme.of(context).secondaryBgOpacity,
                    icon: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 20.0,
                    ),
                    onPressed: () async {
                      setState(() {
                        FFAppState().dob = null;
                      });
                      setState(() {
                        _model.showBirthdayError = true;
                      });
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        if (_model.showRegisterApiError)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 8.0),
            child: Text(
              valueOrDefault<String>(
                getJsonField(
                  (_model.registerOutput?.jsonBody ?? ''),
                  r'''$.message''',
                )?.toString(),
                'Please enter valid details.',
              ),
              style: FlutterFlowTheme.of(context).displaySmall.override(
                    fontFamily: 'Poppins',
                    letterSpacing: 0.0,
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
          child: Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.0, 20.0, 12.0, 20.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
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
                                color: FlutterFlowTheme.of(context).errorText,
                                fontSize: 14.0,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _model.firstNameTextFieldTextController,
                      focusNode: _model.firstNameTextFieldFocusNode,
                      onChanged: (_) => EasyDebounce.debounce(
                        '_model.firstNameTextFieldTextController',
                        Duration(milliseconds: 2000),
                        () async {
                          setState(() {});
                        },
                      ),
                      autofocus: false,
                      textCapitalization: TextCapitalization.words,
                      textInputAction: TextInputAction.next,
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
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 8.0),
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
                                color: FlutterFlowTheme.of(context).errorText,
                                fontSize: 14.0,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                        errorStyle:
                            FlutterFlowTheme.of(context).displaySmall.override(
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
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
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
                      validator: _model.lastNameTextFieldTextControllerValidator
                          .asValidator(context),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 8.0),
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
                                color: FlutterFlowTheme.of(context).errorText,
                                fontSize: 14.0,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                          color: _model.showBirthdayError
                              ? FlutterFlowTheme.of(context).errorText
                              : FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 7.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            final _datePickedDate = await showDatePicker(
                              context: context,
                              initialDate:
                                  (functions.getPastDate() ?? DateTime.now()),
                              firstDate: DateTime(1900),
                              lastDate:
                                  (functions.getPastDate() ?? DateTime.now()),
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
                              FFAppState().dob = _model.datePicked;
                            });
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Text(
                                  dateTimeFormat(
                                      'dd-MM-yyyy', _model.datePicked),
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
                    if (valueOrDefault<bool>(
                      _model.showBirthdayError,
                      true,
                    ))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(14.0, 8.0, 0.0, 8.0),
                        child: Text(
                          'Birthday is required.',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Poppins',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 8.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Mobile number',
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
                                color: FlutterFlowTheme.of(context).errorText,
                                fontSize: 14.0,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _model.mobileNumberTextFieldTextController,
                      focusNode: _model.mobileNumberTextFieldFocusNode,
                      autofocus: false,
                      textInputAction: TextInputAction.next,
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
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
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
                      keyboardType: TextInputType.number,
                      cursorColor: FlutterFlowTheme.of(context).primaryText,
                      validator: _model
                          .mobileNumberTextFieldTextControllerValidator
                          .asValidator(context),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                      ],
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 8.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Email',
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
                                color: FlutterFlowTheme.of(context).errorText,
                                fontSize: 14.0,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    TextFormField(
                      controller: _model.emailTextFieldTextController,
                      focusNode: _model.emailTextFieldFocusNode,
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
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
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
                      validator: _model.emailTextFieldTextControllerValidator
                          .asValidator(context),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 8.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Residential details',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                            TextSpan(
                              text: '*',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).errorText,
                                fontSize: 14.0,
                              ),
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Text(
                      'Pincode',
                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                            fontFamily: 'Poppins',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: TextFormField(
                        controller: _model.pincodeFieldTextController,
                        focusNode: _model.pincodeFieldFocusNode,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.pincodeFieldTextController',
                          Duration(milliseconds: 2000),
                          () async {
                            var _shouldSetState = false;
                            setState(() {
                              _model.dropDownValueController?.reset();
                            });
                            setState(() {
                              _model.countryFieldTextController?.clear();
                              _model.stateFieldTextController?.clear();
                              _model.cityTownFieldTextController?.clear();
                            });
                            _model.pincodeResponseSignUp =
                                await GetDataFromPinCodeCall.call(
                              address: _model.pincodeFieldTextController.text,
                              key: FFAppConstants
                                  .googleApiKeyforPInCodeedonttouch,
                            );
                            _shouldSetState = true;
                            if (GetDataFromPinCodeCall.status(
                                  (_model.pincodeResponseSignUp?.jsonBody ??
                                      ''),
                                ) ==
                                'OK') {
                              setState(() {
                                _model.countryFieldTextController
                                    ?.text = (GetDataFromPinCodeCall.longNames(
                                  (_model.pincodeResponseSignUp?.jsonBody ??
                                      ''),
                                )![GetDataFromPinCodeCall.longNames(
                                      (_model.pincodeResponseSignUp?.jsonBody ??
                                          ''),
                                    )!
                                        .length -
                                    1]);
                              });
                              setState(() {
                                _model.stateFieldTextController
                                    ?.text = (GetDataFromPinCodeCall.longNames(
                                  (_model.pincodeResponseSignUp?.jsonBody ??
                                      ''),
                                )![GetDataFromPinCodeCall.longNames(
                                      (_model.pincodeResponseSignUp?.jsonBody ??
                                          ''),
                                    )!
                                        .length -
                                    2]);
                              });
                              setState(() {
                                _model.cityTownFieldTextController
                                    ?.text = (GetDataFromPinCodeCall.longNames(
                                  (_model.pincodeResponseSignUp?.jsonBody ??
                                      ''),
                                )![GetDataFromPinCodeCall.longNames(
                                      (_model.pincodeResponseSignUp?.jsonBody ??
                                          ''),
                                    )!
                                        .length -
                                    3]);
                              });
                              setState(() {
                                _model.localityFieldTextController?.text =
                                    (GetDataFromPinCodeCall.longNames(
                                              (_model.pincodeResponseSignUp
                                                      ?.jsonBody ??
                                                  ''),
                                            )?.length.toString() ==
                                            '5'
                                        ? (GetDataFromPinCodeCall.longNames(
                                            (_model.pincodeResponseSignUp
                                                    ?.jsonBody ??
                                                ''),
                                          )![GetDataFromPinCodeCall.longNames(
                                              (_model.pincodeResponseSignUp
                                                      ?.jsonBody ??
                                                  ''),
                                            )!
                                                .length -
                                            4])
                                        : '');
                              });
                              setState(() {
                                _model.postalCodeLocalities =
                                    GetDataFromPinCodeCall.postalCodeLocalities(
                                  (_model.pincodeResponseSignUp?.jsonBody ??
                                      ''),
                                )!
                                        .toList()
                                        .cast<String>();
                              });
                              if (_shouldSetState) setState(() {});
                              return;
                            } else {
                              if (_shouldSetState) setState(() {});
                              return;
                            }

                            if (_shouldSetState) setState(() {});
                          },
                        ),
                        autofocus: false,
                        textInputAction: TextInputAction.next,
                        obscureText: false,
                        decoration: InputDecoration(
                          isDense: false,
                          hintText: 'Your Pincode',
                          hintStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
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
                          suffixIcon: _model
                                  .pincodeFieldTextController!.text.isNotEmpty
                              ? InkWell(
                                  onTap: () async {
                                    _model.pincodeFieldTextController?.clear();
                                    var _shouldSetState = false;
                                    setState(() {
                                      _model.dropDownValueController?.reset();
                                    });
                                    setState(() {
                                      _model.countryFieldTextController
                                          ?.clear();
                                      _model.stateFieldTextController?.clear();
                                      _model.cityTownFieldTextController
                                          ?.clear();
                                    });
                                    _model.pincodeResponseSignUp =
                                        await GetDataFromPinCodeCall.call(
                                      address: _model
                                          .pincodeFieldTextController.text,
                                      key: FFAppConstants
                                          .googleApiKeyforPInCodeedonttouch,
                                    );
                                    _shouldSetState = true;
                                    if (GetDataFromPinCodeCall.status(
                                          (_model.pincodeResponseSignUp
                                                  ?.jsonBody ??
                                              ''),
                                        ) ==
                                        'OK') {
                                      setState(() {
                                        _model.countryFieldTextController
                                                ?.text =
                                            (GetDataFromPinCodeCall.longNames(
                                          (_model.pincodeResponseSignUp
                                                  ?.jsonBody ??
                                              ''),
                                        )![GetDataFromPinCodeCall.longNames(
                                                  (_model.pincodeResponseSignUp
                                                          ?.jsonBody ??
                                                      ''),
                                                )!
                                                    .length -
                                                1]);
                                      });
                                      setState(() {
                                        _model.stateFieldTextController?.text =
                                            (GetDataFromPinCodeCall.longNames(
                                          (_model.pincodeResponseSignUp
                                                  ?.jsonBody ??
                                              ''),
                                        )![GetDataFromPinCodeCall.longNames(
                                                  (_model.pincodeResponseSignUp
                                                          ?.jsonBody ??
                                                      ''),
                                                )!
                                                    .length -
                                                2]);
                                      });
                                      setState(() {
                                        _model.cityTownFieldTextController
                                                ?.text =
                                            (GetDataFromPinCodeCall.longNames(
                                          (_model.pincodeResponseSignUp
                                                  ?.jsonBody ??
                                              ''),
                                        )![GetDataFromPinCodeCall.longNames(
                                                  (_model.pincodeResponseSignUp
                                                          ?.jsonBody ??
                                                      ''),
                                                )!
                                                    .length -
                                                3]);
                                      });
                                      setState(() {
                                        _model.localityFieldTextController
                                                ?.text =
                                            (GetDataFromPinCodeCall.longNames(
                                                      (_model.pincodeResponseSignUp
                                                              ?.jsonBody ??
                                                          ''),
                                                    )?.length.toString() ==
                                                    '5'
                                                ? (GetDataFromPinCodeCall
                                                    .longNames(
                                                    (_model.pincodeResponseSignUp
                                                            ?.jsonBody ??
                                                        ''),
                                                  )![GetDataFromPinCodeCall
                                                            .longNames(
                                                      (_model.pincodeResponseSignUp
                                                              ?.jsonBody ??
                                                          ''),
                                                    )!
                                                        .length -
                                                    4])
                                                : '');
                                      });
                                      setState(() {
                                        _model.postalCodeLocalities =
                                            GetDataFromPinCodeCall
                                                    .postalCodeLocalities(
                                          (_model.pincodeResponseSignUp
                                                  ?.jsonBody ??
                                              ''),
                                        )!
                                                .toList()
                                                .cast<String>();
                                      });
                                      if (_shouldSetState) setState(() {});
                                      return;
                                    } else {
                                      if (_shouldSetState) setState(() {});
                                      return;
                                    }

                                    if (_shouldSetState) setState(() {});
                                    setState(() {});
                                  },
                                  child: Icon(
                                    Icons.clear,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 18.0,
                                  ),
                                )
                              : null,
                        ),
                        style: FlutterFlowTheme.of(context).bodyLarge.override(
                              fontFamily: 'Poppins',
                              letterSpacing: 0.0,
                            ),
                        textAlign: TextAlign.start,
                        maxLength: 10,
                        maxLengthEnforcement: MaxLengthEnforcement.none,
                        buildCounter: (context,
                                {required currentLength,
                                required isFocused,
                                maxLength}) =>
                            null,
                        keyboardType: TextInputType.number,
                        cursorColor: FlutterFlowTheme.of(context).primaryText,
                        validator: _model.pincodeFieldTextControllerValidator
                            .asValidator(context),
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                        ],
                      ),
                    ),
                    if (GetDataFromPinCodeCall.status(
                          (_model.pincodeResponseSignUp?.jsonBody ?? ''),
                        ) ==
                        'ZERO_RESULTS')
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                        child: Text(
                          'Pin code is not valid.',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Poppins',
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                    if (GetDataFromPinCodeCall.status(
                          (_model.pincodeResponseSignUp?.jsonBody ?? ''),
                        ) ==
                        'OK')
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Country',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 16.0),
                              child: TextFormField(
                                controller: _model.countryFieldTextController,
                                focusNode: _model.countryFieldFocusNode,
                                autofocus: false,
                                textInputAction: TextInputAction.next,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: false,
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
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
                                      color: FlutterFlowTheme.of(context)
                                          .errorText,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .errorText,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
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
                                maxLength: 10,
                                maxLengthEnforcement:
                                    MaxLengthEnforcement.enforced,
                                buildCounter: (context,
                                        {required currentLength,
                                        required isFocused,
                                        maxLength}) =>
                                    null,
                                keyboardType: TextInputType.number,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .countryFieldTextControllerValidator
                                    .asValidator(context),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp('[0-9]'))
                                ],
                              ),
                            ),
                            Text(
                              'State',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 16.0),
                              child: TextFormField(
                                controller: _model.stateFieldTextController,
                                focusNode: _model.stateFieldFocusNode,
                                autofocus: false,
                                textInputAction: TextInputAction.next,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: false,
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
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
                                      color: FlutterFlowTheme.of(context)
                                          .errorText,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .errorText,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
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
                                maxLength: 10,
                                maxLengthEnforcement:
                                    MaxLengthEnforcement.enforced,
                                buildCounter: (context,
                                        {required currentLength,
                                        required isFocused,
                                        maxLength}) =>
                                    null,
                                keyboardType: TextInputType.number,
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .stateFieldTextControllerValidator
                                    .asValidator(context),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp('[0-9]'))
                                ],
                              ),
                            ),
                            Text(
                              'City/Town',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 16.0),
                              child: TextFormField(
                                controller: _model.cityTownFieldTextController,
                                focusNode: _model.cityTownFieldFocusNode,
                                autofocus: false,
                                textInputAction: TextInputAction.next,
                                readOnly: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: false,
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
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
                                      color: FlutterFlowTheme.of(context)
                                          .errorText,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .errorText,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
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
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .cityTownFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                            Text(
                              'Locality',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            if ((_model.pincodeResponseSignUp != null) &&
                                (GetDataFromPinCodeCall.postalCodeLocalities(
                                          (_model.pincodeResponseSignUp
                                                  ?.jsonBody ??
                                              ''),
                                        )?.length.toString() !=
                                        null &&
                                    GetDataFromPinCodeCall.postalCodeLocalities(
                                          (_model.pincodeResponseSignUp
                                                  ?.jsonBody ??
                                              ''),
                                        )?.length.toString() !=
                                        ''))
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 16.0),
                                child: FlutterFlowDropDown<String>(
                                  controller: _model.dropDownValueController ??=
                                      FormFieldController<String>(null),
                                  options: _model.postalCodeLocalities,
                                  onChanged: (val) => setState(
                                      () => _model.dropDownValue = val),
                                  height: 50.0,
                                  searchHintTextStyle:
                                      FlutterFlowTheme.of(context)
                                          .bodyLarge
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                  searchTextStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                  textStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                  hintText: 'Select Locality',
                                  searchHintText: 'Search your locality',
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_rounded,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                  elevation: 2.0,
                                  borderColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderWidth: 1.0,
                                  borderRadius: 12.0,
                                  margin: EdgeInsetsDirectional.fromSTEB(
                                      16.0, 4.0, 16.0, 4.0),
                                  hidesUnderline: true,
                                  isOverButton: false,
                                  isSearchable: true,
                                  isMultiSelect: false,
                                ),
                              ),
                            if (GetDataFromPinCodeCall.postalCodeLocalities(
                                      (_model.pincodeResponseSignUp?.jsonBody ??
                                          ''),
                                    )?.length.toString() ==
                                    null ||
                                GetDataFromPinCodeCall.postalCodeLocalities(
                                      (_model.pincodeResponseSignUp?.jsonBody ??
                                          ''),
                                    )?.length.toString() ==
                                    '')
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 16.0),
                                child: TextFormField(
                                  controller:
                                      _model.localityFieldTextController,
                                  focusNode: _model.localityFieldFocusNode,
                                  autofocus: false,
                                  textInputAction: TextInputAction.next,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    isDense: false,
                                    hintText: 'Enter Locality',
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
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
                                        color: FlutterFlowTheme.of(context)
                                            .errorText,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    focusedErrorBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .errorText,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(12.0),
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
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model
                                      .localityFieldTextControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                            Text(
                              'Street',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 8.0, 0.0, 16.0),
                              child: TextFormField(
                                controller: _model.streetFieldTextController,
                                focusNode: _model.streetFieldFocusNode,
                                autofocus: false,
                                textInputAction: TextInputAction.next,
                                obscureText: false,
                                decoration: InputDecoration(
                                  isDense: false,
                                  hintText: 'Enter your Street Address',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
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
                                      color: FlutterFlowTheme.of(context)
                                          .errorText,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .errorText,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
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
                                cursorColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                validator: _model
                                    .streetFieldTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ],
                        ),
                      ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'By clicking “Agree and continue,” you agree to the apartment booking ',
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                            TextSpan(
                              text: 'terms and conditions.',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primary,
                                fontSize: 14.0,
                              ),
                              mouseCursor: SystemMouseCursors.click,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () async {
                                  setState(() {
                                    FFAppState().TermsAndConditions =
                                        TermsAndConditionsStruct(
                                      articleName: FFAppConstants.terms,
                                    );
                                  });

                                  context.pushNamed(
                                    'TermsPrivacyCookiesPage',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                      ),
                                    },
                                  );
                                },
                            )
                          ],
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 30.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              var _shouldSetState = false;
                              if (FFAppState().dob != null) {
                                setState(() {
                                  _model.showBirthdayError = false;
                                });
                              } else {
                                setState(() {
                                  _model.showBirthdayError = true;
                                });
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                if (_shouldSetState) setState(() {});
                                return;
                              }

                              if (_model.formKey.currentState == null ||
                                  !_model.formKey.currentState!.validate()) {
                                return;
                              }
                              if ((GetDataFromPinCodeCall.postalCodeLocalities(
                                            (_model.pincodeResponseSignUp
                                                    ?.jsonBody ??
                                                ''),
                                          ) !=
                                          null &&
                                      (GetDataFromPinCodeCall
                                              .postalCodeLocalities(
                                        (_model.pincodeResponseSignUp
                                                ?.jsonBody ??
                                            ''),
                                      ))!
                                          .isNotEmpty) &&
                                  (_model.dropDownValue == null ||
                                      _model.dropDownValue == '')) {
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
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                if (_shouldSetState) setState(() {});
                                return;
                              } else if (!(GetDataFromPinCodeCall
                                              .postalCodeLocalities(
                                            (_model.pincodeResponseSignUp
                                                    ?.jsonBody ??
                                                ''),
                                          ) !=
                                          null &&
                                      (GetDataFromPinCodeCall
                                              .postalCodeLocalities(
                                        (_model.pincodeResponseSignUp
                                                ?.jsonBody ??
                                            ''),
                                      ))!
                                          .isNotEmpty) &&
                                  (_model.localityFieldTextController.text ==
                                          null ||
                                      _model.localityFieldTextController.text ==
                                          '')) {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Info'),
                                      content: Text('Enter your locality.'),
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
                              } else if (GetDataFromPinCodeCall.status(
                                    (_model.pincodeResponseSignUp?.jsonBody ??
                                        ''),
                                  ) ==
                                  'ZERO_RESULTS') {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Info'),
                                      content: Text('Enter valid pincode.'),
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
                              } else {
                                _model.registerOutput =
                                    await RegistrationAPICall.call(
                                  firstName: _model
                                      .firstNameTextFieldTextController.text,
                                  lastName: _model
                                      .lastNameTextFieldTextController.text,
                                  dateOfBirth: valueOrDefault<String>(
                                    dateTimeFormat(
                                        'dd-MM-yyyy', FFAppState().dob),
                                    '13-12-2013',
                                  ),
                                  phoneNumber:
                                      '+91${_model.mobileNumberTextFieldTextController.text}',
                                  emailAddress:
                                      _model.emailTextFieldTextController.text,
                                  tAndC: true,
                                  pincode:
                                      _model.pincodeFieldTextController.text,
                                  country:
                                      _model.countryFieldTextController.text,
                                  state: _model.stateFieldTextController.text,
                                  city: _model.cityTownFieldTextController.text,
                                  locality: _model.dropDownValue != null &&
                                          _model.dropDownValue != ''
                                      ? _model.dropDownValue
                                      : _model.localityFieldTextController.text,
                                  street: _model.streetFieldTextController.text,
                                );
                                _shouldSetState = true;
                                if ((_model.registerOutput?.succeeded ??
                                    true)) {
                                  if (MediaQuery.sizeOf(context).width <
                                      991.0) {
                                    Navigator.pop(context);
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      enableDrag: false,
                                      context: context,
                                      builder: (context) {
                                        return Padding(
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child:
                                              RegisterSuccessComponentWidget(),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));

                                    if (_shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    Navigator.pop(context);
                                    await showDialog(
                                      barrierColor: Color(0xCC000D3E),
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
                                                0.5,
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.3,
                                            child:
                                                RegisterSuccessComponentWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));

                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }
                                } else {
                                  if ((_model.registerOutput?.statusCode ??
                                          200) ==
                                      200) {
                                    setState(() {
                                      _model.showRegisterApiError = false;
                                    });
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    setState(() {
                                      _model.showRegisterApiError = true;
                                    });
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }
                                }
                              }

                              if (_shouldSetState) setState(() {});
                            },
                            text: 'Agree and continue',
                            options: FFButtonOptions(
                              width: double.infinity,
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
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 22.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: 152.0,
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Text(
                              'or',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 152.0,
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 22.0, 12.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: Text(
                              'Registered user?',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                          Builder(
                            builder: (context) => InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                if (MediaQuery.sizeOf(context).width < 991.0) {
                                  Navigator.pop(context);
                                  await showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.transparent,
                                    isDismissible: false,
                                    enableDrag: false,
                                    useSafeArea: true,
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.7,
                                          child: PhoneLoginComponentWidget(),
                                        ),
                                      );
                                    },
                                  ).then((value) => safeSetState(() {}));
                                } else {
                                  Navigator.pop(context);
                                  await showDialog(
                                    barrierColor: Color(0xCC000D3E),
                                    context: context,
                                    builder: (dialogContext) {
                                      return Dialog(
                                        elevation: 0,
                                        insetPadding: EdgeInsets.zero,
                                        backgroundColor: Colors.transparent,
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.75,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.3,
                                          child: PhoneLoginComponentWidget(),
                                        ),
                                      );
                                    },
                                  ).then((value) => setState(() {}));
                                }
                              },
                              child: Text(
                                'Login',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      decoration: TextDecoration.underline,
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
        ),
      ],
    );
  }
}
