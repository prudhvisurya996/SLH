import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login/login_widget.dart';
import '/luxary_homes/common_components/register/register_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'phone_num_login_form_model.dart';
export 'phone_num_login_form_model.dart';

class PhoneNumLoginFormWidget extends StatefulWidget {
  const PhoneNumLoginFormWidget({super.key});

  @override
  State<PhoneNumLoginFormWidget> createState() =>
      _PhoneNumLoginFormWidgetState();
}

class _PhoneNumLoginFormWidgetState extends State<PhoneNumLoginFormWidget> {
  late PhoneNumLoginFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PhoneNumLoginFormModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.otpSent = false;
      setState(() {});
    });

    _model.countryFieldTextController ??= TextEditingController();

    _model.mobileNumberTextController ??= TextEditingController();
    _model.mobileNumberFocusNode ??= FocusNode();

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
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 12.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Login with Mobile Number',
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Work Sans',
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 18.0,
                  buttonSize: 36.0,
                  fillColor: FlutterFlowTheme.of(context).secondaryBgOpacity,
                  icon: Icon(
                    Icons.close,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 20.0,
                  ),
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 20.0, 12.0, 20.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, -1.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: SvgPicture.asset(
                        'assets/images/login-img.svg',
                        width: 257.0,
                        height: 155.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 18.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  if (_model.countryFieldTextController.text !=
                                          null &&
                                      _model.countryFieldTextController.text !=
                                          '')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 10.0, 0.0),
                                      child: Container(
                                        width: 38.0,
                                        height: 38.0,
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: CachedNetworkImage(
                                          fadeInDuration:
                                              Duration(milliseconds: 50),
                                          fadeOutDuration:
                                              Duration(milliseconds: 50),
                                          imageUrl: valueOrDefault<String>(
                                            functions.getCountryFlag(_model
                                                .countryFieldTextController
                                                .text),
                                            'https://media.istockphoto.com/id/1055079680/vector/black-linear-photo-camera-like-no-image-available.jpg?s=612x612&w=0&k=20&c=P1DebpeMIAtXj_ZbVsKVvg-duuL0v9DlrOZUvPG6UJk=',
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  Expanded(
                                    child: Autocomplete<String>(
                                      initialValue: TextEditingValue(),
                                      optionsBuilder: (textEditingValue) {
                                        if (textEditingValue.text == '') {
                                          return const Iterable<String>.empty();
                                        }
                                        return functions
                                            .getCountryList()
                                            .where((option) {
                                          final lowercaseOption =
                                              option.toLowerCase();
                                          return lowercaseOption.contains(
                                              textEditingValue.text
                                                  .toLowerCase());
                                        });
                                      },
                                      optionsViewBuilder:
                                          (context, onSelected, options) {
                                        return AutocompleteOptionsList(
                                          textFieldKey: _model.countryFieldKey,
                                          textController: _model
                                              .countryFieldTextController!,
                                          options: options.toList(),
                                          onSelected: onSelected,
                                          textStyle: GoogleFonts.getFont(
                                            'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                          textHighlightStyle: TextStyle(),
                                          textAlign: TextAlign.start,
                                          elevation: 0.5,
                                          optionBackgroundColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          optionHighlightColor:
                                              Color(0xFFDDE0E9),
                                          maxHeight: 200.0,
                                        );
                                      },
                                      onSelected: (String selection) {
                                        setState(() =>
                                            _model.countryFieldSelectedOption =
                                                selection);
                                        FocusScope.of(context).unfocus();
                                      },
                                      fieldViewBuilder: (
                                        context,
                                        textEditingController,
                                        focusNode,
                                        onEditingComplete,
                                      ) {
                                        _model.countryFieldFocusNode =
                                            focusNode;

                                        _model.countryFieldTextController =
                                            textEditingController;
                                        return TextFormField(
                                          key: _model.countryFieldKey,
                                          controller: textEditingController,
                                          focusNode: focusNode,
                                          onEditingComplete: onEditingComplete,
                                          autofocus: false,
                                          textCapitalization:
                                              TextCapitalization.none,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            isDense: false,
                                            hintText: 'Enter your country',
                                            hintStyle: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                            errorStyle: GoogleFonts.getFont(
                                              'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .error,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14.0,
                                            ),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            focusedErrorBorder:
                                                InputBorder.none,
                                            contentPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                          ),
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                          textAlign: TextAlign.start,
                                          keyboardType: TextInputType.name,
                                          cursorColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryText,
                                          validator: _model
                                              .countryFieldTextControllerValidator
                                              .asValidator(context),
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                                RegExp('[a-zA-Z]'))
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        setState(() {
                                          _model.countryFieldTextController
                                              ?.clear();
                                        });
                                      },
                                      child: Icon(
                                        Icons.close_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          if (responsiveVisibility(
                            context: context,
                            phone: false,
                            tablet: false,
                            tabletLandscape: false,
                            desktop: false,
                          ))
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 10.0),
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
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    TextSpan(
                                      text: '*',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .errorText,
                                        fontSize: 14.0,
                                      ),
                                    )
                                  ],
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 16.0, 0.0, 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(0.0),
                                  topRight: Radius.circular(0.0),
                                ),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  if (_model.countryFieldTextController.text !=
                                          null &&
                                      _model.countryFieldTextController.text !=
                                          '')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        valueOrDefault<String>(
                                          functions.getDialCode(_model
                                              .countryFieldTextController.text),
                                          '+1',
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  if (_model.countryFieldTextController.text !=
                                          null &&
                                      _model.countryFieldTextController.text !=
                                          '')
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 8.0, 0.0),
                                      child: Container(
                                        width: 2.0,
                                        height: 30.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                        ),
                                      ),
                                    ),
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: TextFormField(
                                        controller:
                                            _model.mobileNumberTextController,
                                        focusNode: _model.mobileNumberFocusNode,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          '_model.mobileNumberTextController',
                                          Duration(milliseconds: 100),
                                          () => setState(() {}),
                                        ),
                                        autofocus: false,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Enter your phone number',
                                          hintStyle: GoogleFonts.getFont(
                                            'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                          errorStyle: GoogleFonts.getFont(
                                            'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          focusedErrorBorder: InputBorder.none,
                                          contentPadding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14.0,
                                        ),
                                        textAlign: TextAlign.start,
                                        maxLength: 10,
                                        maxLengthEnforcement:
                                            MaxLengthEnforcement.none,
                                        buildCounter: (context,
                                                {required currentLength,
                                                required isFocused,
                                                maxLength}) =>
                                            null,
                                        keyboardType: TextInputType.number,
                                        validator: _model
                                            .mobileNumberTextControllerValidator
                                            .asValidator(context),
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp('[0-9]'))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        setState(() {
                                          _model.mobileNumberTextController
                                              ?.clear();
                                        });
                                      },
                                      child: Icon(
                                        Icons.close_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: (_model.otpSent == true)
                                    ? null
                                    : () async {
                                        var _shouldSetState = false;
                                        if (_model.formKey.currentState ==
                                                null ||
                                            !_model.formKey.currentState!
                                                .validate()) {
                                          return;
                                        }
                                        _model.initiateOTPResponse =
                                            await LiferayBaseUrlGroup
                                                .initialMobileNumAndOTPCall
                                                .call(
                                          phoneNumber:
                                              '${functions.getDialCode(_model.countryFieldSelectedOption)}${_model.mobileNumberTextController.text}',
                                          otp: '',
                                        );

                                        _shouldSetState = true;
                                        if ((_model.initiateOTPResponse
                                                ?.succeeded ??
                                            true)) {
                                          _model.otpSent = true;
                                          _model.updatePage(() {});
                                          if (_shouldSetState) setState(() {});
                                          return;
                                        } else {
                                          await showDialog(
                                            context: context,
                                            builder: (alertDialogContext) {
                                              return AlertDialog(
                                                title: Text('Alert!'),
                                                content: Text(getJsonField(
                                                  (_model.initiateOTPResponse
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.message''',
                                                ).toString()),
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
                                text: 'Generate OTP',
                                options: FFButtonOptions(
                                  width: 150.0,
                                  height: 33.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        fontFamily: 'Work Sans',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                  elevation: 3.0,
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(6.0),
                                  disabledColor: Color(0xFFC0BCF2),
                                  disabledTextColor:
                                      FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (_model.otpSent == true)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(12.0, 13.0, 12.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
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
                                    text: 'Enter the OTP',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Work Sans',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                  TextSpan(
                                    text: '*',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .errorText,
                                      fontSize: 14.0,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyLarge
                                    .override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ),
                          PinCodeTextField(
                            autoDisposeControllers: false,
                            appContext: context,
                            length: 6,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            enableActiveFill: true,
                            autoFocus: false,
                            enablePinAutofill: false,
                            errorTextSpace: 16.0,
                            showCursor: true,
                            cursorColor: FlutterFlowTheme.of(context).primary,
                            obscureText: false,
                            hintCharacter: '*',
                            keyboardType: TextInputType.number,
                            pinTheme: PinTheme(
                              fieldHeight: 45.0,
                              fieldWidth: 52.0,
                              borderWidth: 2.0,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(12.0),
                                bottomRight: Radius.circular(12.0),
                                topLeft: Radius.circular(12.0),
                                topRight: Radius.circular(12.0),
                              ),
                              shape: PinCodeFieldShape.box,
                              activeColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              inactiveColor: Color(0xEEE5EFF7),
                              selectedColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              activeFillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              inactiveFillColor: Color(0xEEE5EFF7),
                              selectedFillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            controller: _model.otpField,
                            onChanged: (_) {},
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator:
                                _model.otpFieldValidator.asValidator(context),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Flexible(
                                child: Text(
                                  'OTP valid till ',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Work Sans',
                                        fontSize: 10.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                              FlutterFlowTimer(
                                initialTime: _model.timerInitialTimeMs,
                                getDisplayTime: (value) =>
                                    StopWatchTimer.getDisplayTime(
                                  value,
                                  hours: false,
                                  minute: false,
                                  milliSecond: false,
                                ),
                                controller: _model.timerController,
                                updateStateInterval:
                                    Duration(milliseconds: 1000),
                                onChanged: (value, displayTime, shouldUpdate) {
                                  _model.timerMilliseconds = value;
                                  _model.timerValue = displayTime;
                                  if (shouldUpdate) setState(() {});
                                },
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Text(
                                ' seconds',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Work Sans',
                                      fontSize: 10.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Didn\'t get the code?',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Work Sans',
                                        color: Color(0xFF000D3E),
                                        fontSize: 10.0,
                                        letterSpacing: 0.5,
                                        lineHeight: 2.0,
                                      ),
                                ),
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    var _shouldSetState = false;
                                    _model.initiateOTPResponseCopy =
                                        await LiferayBaseUrlGroup
                                            .initialMobileNumAndOTPCall
                                            .call(
                                      phoneNumber:
                                          '${functions.getDialCode(_model.countryFieldSelectedOption)}${_model.mobileNumberTextController.text}',
                                      otp: '',
                                    );

                                    _shouldSetState = true;
                                    if ((_model
                                            .initiateOTPResponse?.succeeded ??
                                        true)) {
                                      _model.otpSent = true;
                                      _model.updatePage(() {});
                                      if (_shouldSetState) setState(() {});
                                      return;
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Alert!'),
                                            content: Text(getJsonField(
                                              (_model.initiateOTPResponse
                                                      ?.jsonBody ??
                                                  ''),
                                              r'''$.message''',
                                            ).toString()),
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
                                  child: Text(
                                    'Resend OTP',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Work Sans',
                                          color: Color(0xFF000D3E),
                                          fontSize: 13.0,
                                          letterSpacing: 0.5,
                                          decoration: TextDecoration.underline,
                                          lineHeight: 2.0,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, -1.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 20.0, 0.0, 0.0),
                              child: FFButtonWidget(
                                onPressed: () async {
                                  var _shouldSetState = false;
                                  _model.otpVerificationResponse =
                                      await LiferayBaseUrlGroup
                                          .oTPVerificationCall
                                          .call(
                                    otp: _model.otpField!.text,
                                    phoneNumber:
                                        '${functions.getDialCode(_model.countryFieldSelectedOption)}${_model.mobileNumberTextController.text}',
                                  );

                                  _shouldSetState = true;
                                  if ((_model
                                          .otpVerificationResponse?.succeeded ??
                                      true)) {
                                    FFAppState().accessToken = getJsonField(
                                      (_model.otpVerificationResponse
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.access_token''',
                                    ).toString();
                                    FFAppState().refreshToken = getJsonField(
                                      (_model.otpVerificationResponse
                                              ?.jsonBody ??
                                          ''),
                                      r'''$.refresh_token''',
                                    ).toString();
                                    setState(() {});
                                    _model.userDetailsOuput1 =
                                        await LiferayBaseUrlGroup
                                            .userDetailsAPICall
                                            .call(
                                      accessToken: FFAppState().accessToken,
                                    );

                                    _shouldSetState = true;
                                    if ((_model.userDetailsOuput1?.succeeded ??
                                        true)) {
                                      FFAppState().searchCity = '';
                                      FFAppState().searchDates = [];
                                      FFAppState().searchGuests = 0;
                                      FFAppState().searchLocality = '';
                                      FFAppState().priceMin = 500.0;
                                      FFAppState().priceMax = 99999.0;
                                      FFAppState().userFilterPropertyType = [];
                                      FFAppState().userData = UserDataStruct(
                                        firstName: getJsonField(
                                          (_model.userDetailsOuput1?.jsonBody ??
                                              ''),
                                          r'''$.firstName''',
                                        ).toString(),
                                        lastName: getJsonField(
                                          (_model.userDetailsOuput1?.jsonBody ??
                                              ''),
                                          r'''$.lastName''',
                                        ).toString(),
                                        dateOfBirth: getJsonField(
                                          (_model.userDetailsOuput1?.jsonBody ??
                                              ''),
                                          r'''$.dateOfBirth''',
                                        ).toString(),
                                        phoneNumber: getJsonField(
                                          (_model.userDetailsOuput1?.jsonBody ??
                                              ''),
                                          r'''$.phoneNumber''',
                                        ).toString(),
                                        emailAddress: getJsonField(
                                          (_model.userDetailsOuput1?.jsonBody ??
                                              ''),
                                          r'''$.emailAddress''',
                                        ).toString(),
                                        isAdmin: getJsonField(
                                          (_model.userDetailsOuput1?.jsonBody ??
                                              ''),
                                          r'''$.isAdmin''',
                                        ),
                                        isHost: getJsonField(
                                          (_model.userDetailsOuput1?.jsonBody ??
                                              ''),
                                          r'''$.isHost''',
                                        ),
                                        userId: getJsonField(
                                          (_model.userDetailsOuput1?.jsonBody ??
                                              ''),
                                          r'''$.userId''',
                                        ),
                                      );
                                      setState(() {});
                                      setState(() {
                                        _model.mobileNumberTextController
                                            ?.clear();
                                        _model.countryFieldTextController
                                            ?.clear();
                                        _model.otpField?.clear();
                                      });
                                      if (MediaQuery.sizeOf(context).width <
                                          991.0) {
                                        Navigator.pop(context);

                                        context.goNamed(
                                          'home_page',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      } else {
                                        Navigator.pop(context);

                                        context.goNamed(
                                          'home_page',
                                          extra: <String, dynamic>{
                                            kTransitionInfoKey: TransitionInfo(
                                              hasTransition: true,
                                              transitionType:
                                                  PageTransitionType.fade,
                                              duration:
                                                  Duration(milliseconds: 0),
                                            ),
                                          },
                                        );
                                      }

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
                                          content: Text(_model.otpField!.text ==
                                                      null ||
                                                  _model.otpField!.text == ''
                                              ? 'Please Enter Otp !'
                                              : 'Invalid Otp !'),
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
                                text: 'Login',
                                options: FFButtonOptions(
                                  width: 343.0,
                                  height: 35.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color: FlutterFlowTheme.of(context).primary,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .labelSmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w500,
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
                          ),
                        ],
                      ),
                    ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 13.0, 12.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, -1.0),
                          child: Text(
                            'or continue with',
                            style: GoogleFonts.getFont(
                              'Work Sans',
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 22.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Builder(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    if (MediaQuery.sizeOf(context).width <
                                        991.0) {
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
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: Container(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.7,
                                              child: LoginWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => safeSetState(() {}));

                                      return;
                                    } else {
                                      Navigator.pop(context);
                                      await showDialog(
                                        barrierColor: Color(0xCC000D3E),
                                        barrierDismissible: false,
                                        context: context,
                                        builder: (dialogContext) {
                                          return Dialog(
                                            elevation: 0,
                                            insetPadding: EdgeInsets.zero,
                                            backgroundColor: Colors.transparent,
                                            alignment: AlignmentDirectional(
                                                    0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                            child: Container(
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.7,
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.3,
                                              child: LoginWidget(),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));

                                      return;
                                    }
                                  },
                                  child: Container(
                                    width: 48.0,
                                    height: 48.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFDDE6F0),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Icon(
                                        Icons.mail_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 24.0,
                                      ),
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
                                  if (isAndroid) {
                                    _model.responseForAndroid =
                                        await actions.googleSignInAction(
                                      '28027295774-47saprgonlugqost1n439ofkk3034jrf.apps.googleusercontent.com',
                                    );
                                    if (_model.responseForAndroid == true) {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Success'),
                                            content: Text(
                                                'Log In Credentials are valid'),
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
                                    } else {
                                      await showDialog(
                                        context: context,
                                        builder: (alertDialogContext) {
                                          return AlertDialog(
                                            title: Text('Failed'),
                                            content: Text('Failed to Login'),
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
                                    }
                                  } else {
                                    if (isWeb) {
                                      _model.responseForWeb =
                                          await actions.googleSignInAction(
                                        '893782189869-3v5oafna7fqft6eu1du3fodjbah7oe0f.apps.googleusercontent.com',
                                      );
                                      if (_model.responseForWeb == true) {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Success'),
                                              content: Text(
                                                  'Log In Credentials are valid'),
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
                                      } else {
                                        await showDialog(
                                          context: context,
                                          builder: (alertDialogContext) {
                                            return AlertDialog(
                                              title: Text('Failed'),
                                              content: Text('Failed to Login'),
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
                                      }
                                    }
                                  }

                                  setState(() {});
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: SvgPicture.asset(
                                    'assets/images/Google.svg',
                                    width: 48.0,
                                    height: 48.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: SvgPicture.asset(
                                  'assets/images/facebook_1.svg',
                                  width: 48.0,
                                  height: 48.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: SvgPicture.asset(
                                  'assets/images/Apple.svg',
                                  width: 48.0,
                                  height: 48.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 10.0, 0.0, 10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Container(
                                  width: 155.0,
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
                                  width: 155.0,
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Not Registered ?  ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Work Sans',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  TextSpan(
                                    text: 'Create Account',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Work Sans',
                                          letterSpacing: 0.0,
                                          decoration: TextDecoration.underline,
                                        ),
                                    mouseCursor: SystemMouseCursors.click,
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        if (MediaQuery.sizeOf(context).width <
                                            991.0) {
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
                                                    MediaQuery.viewInsetsOf(
                                                        context),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.8,
                                                  child: RegisterWidget(),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));

                                          return;
                                        } else {
                                          Navigator.pop(context);
                                          await showDialog(
                                            barrierColor: Color(0xCC000D3E),
                                            barrierDismissible: false,
                                            context: context,
                                            builder: (dialogContext) {
                                              return Dialog(
                                                elevation: 0,
                                                insetPadding: EdgeInsets.zero,
                                                backgroundColor:
                                                    Colors.transparent,
                                                alignment: AlignmentDirectional(
                                                        0.0, 0.0)
                                                    .resolve(Directionality.of(
                                                        context)),
                                                child: Container(
                                                  height:
                                                      MediaQuery.sizeOf(context)
                                                              .height *
                                                          0.9,
                                                  width:
                                                      MediaQuery.sizeOf(context)
                                                              .width *
                                                          0.3,
                                                  child: RegisterWidget(),
                                                ),
                                              );
                                            },
                                          ).then((value) => setState(() {}));

                                          return;
                                        }
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
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
