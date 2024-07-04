import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_autocomplete_options_list.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/common_components/forgot_password/forgot_password_widget.dart';
import '/luxary_homes/common_components/forgot_password_success/forgot_password_success_widget.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/common_components/register/register_widget.dart';
import '/luxary_homes/common_components/register_success/register_success_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'login_form_model.dart';
export 'login_form_model.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  late LoginFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginFormModel());

    _model.emailTextFieldTextController1 ??= TextEditingController();
    _model.emailTextFieldFocusNode1 ??= FocusNode();

    _model.passwordTextFieldTextController ??= TextEditingController();
    _model.passwordTextFieldFocusNode ??= FocusNode();

    _model.emailloginwebTextController ??= TextEditingController();
    _model.emailloginwebFocusNode ??= FocusNode();

    _model.passwordloginwebTextController ??= TextEditingController();
    _model.passwordloginwebFocusNode ??= FocusNode();

    _model.numCountryLoginWebTextController ??= TextEditingController();

    _model.newNumberLoginWebTextController ??= TextEditingController();
    _model.newNumberLoginWebFocusNode ??= FocusNode();

    _model.newFirstNameSignwebTextController ??= TextEditingController();
    _model.newFirstNameSignwebFocusNode ??= FocusNode();

    _model.newLastNameSignwebTextController ??= TextEditingController();
    _model.newLastNameSignwebFocusNode ??= FocusNode();

    _model.newMobileNumberSignWebTextController ??= TextEditingController();
    _model.newMobileNumberSignWebFocusNode ??= FocusNode();

    _model.newEmailSignWebTextController ??= TextEditingController();
    _model.newEmailSignWebFocusNode ??= FocusNode();

    _model.newpincodeSignWebTextController ??= TextEditingController();
    _model.newpincodeSignWebFocusNode ??= FocusNode();

    _model.newCountrySignWebTextController ??= TextEditingController();
    _model.newCountrySignWebFocusNode ??= FocusNode();

    _model.newStateSignWebTextController ??= TextEditingController();
    _model.newStateSignWebFocusNode ??= FocusNode();

    _model.newCityTownSignWebTextController ??= TextEditingController();
    _model.newCityTownSignWebFocusNode ??= FocusNode();

    _model.newLocalitySignWebTextController ??= TextEditingController();
    _model.newLocalitySignWebFocusNode ??= FocusNode();

    _model.streetSignWebTextController ??= TextEditingController();
    _model.streetSignWebFocusNode ??= FocusNode();

    _model.emailTextFieldTextController2 ??= TextEditingController();
    _model.emailTextFieldFocusNode2 ??= FocusNode();

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
          desktop: false,
        ))
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Login with email',
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
                        fillColor: Color(0x4CBBD1EA),
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
              if (_model.showLoginApiError)
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 8.0),
                  child: Text(
                    'User credentials are invalid...',
                    style: FlutterFlowTheme.of(context).displaySmall.override(
                          fontFamily: 'Work Sans',
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
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          12.0, 20.0, 12.0, 20.0),
                      child: Form(
                        key: _model.formKey5,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 8.0),
                                  child: RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Email',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Work Sans',
                                                letterSpacing: 0.0,
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
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Work Sans',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                                TextFormField(
                                  controller:
                                      _model.emailTextFieldTextController1,
                                  focusNode: _model.emailTextFieldFocusNode1,
                                  autofocus: false,
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
                                  maxLength: 50,
                                  maxLengthEnforcement:
                                      MaxLengthEnforcement.enforced,
                                  buildCounter: (context,
                                          {required currentLength,
                                          required isFocused,
                                          maxLength}) =>
                                      null,
                                  keyboardType: TextInputType.emailAddress,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model
                                      .emailTextFieldTextController1Validator
                                      .asValidator(context),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 22.0, 0.0, 8.0),
                                  child: RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Password',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Work Sans',
                                                letterSpacing: 0.0,
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
                                      _model.passwordTextFieldTextController,
                                  focusNode: _model.passwordTextFieldFocusNode,
                                  onFieldSubmitted: (_) async {
                                    var _shouldSetState = false;
                                    if (_model.formKey5.currentState == null ||
                                        !_model.formKey5.currentState!
                                            .validate()) {
                                      return;
                                    }
                                    _model.authTokenOutputCopy =
                                        await AuthTokenAPICall.call(
                                      clientId: FFAppConstants.clientId,
                                      clientSecret: FFAppConstants.clientSecret,
                                      grantType: FFAppConstants.grantType,
                                      username: _model
                                          .emailTextFieldTextController1.text,
                                      password: _model
                                          .passwordTextFieldTextController.text,
                                    );

                                    _shouldSetState = true;
                                    if ((_model
                                            .authTokenOutputCopy?.succeeded ??
                                        true)) {
                                      FFAppState().accessToken = getJsonField(
                                        (_model.authTokenOutputCopy?.jsonBody ??
                                            ''),
                                        r'''$.access_token''',
                                      ).toString();
                                      FFAppState().refreshToken = getJsonField(
                                        (_model.authTokenOutputCopy?.jsonBody ??
                                            ''),
                                        r'''$.refresh_token''',
                                      ).toString();
                                      setState(() {});
                                      _model.userDetailsOuputCopy =
                                          await LiferayBaseUrlGroup
                                              .userDetailsAPICall
                                              .call(
                                        accessToken: FFAppState().accessToken,
                                      );

                                      _shouldSetState = true;
                                      if ((_model.userDetailsOuputCopy
                                              ?.succeeded ??
                                          true)) {
                                        FFAppState().searchCity = '';
                                        FFAppState().searchDates = [];
                                        FFAppState().searchGuests = 0;
                                        FFAppState().searchLocality = '';
                                        FFAppState().priceMin = 500.0;
                                        FFAppState().priceMax = 99999.0;
                                        FFAppState().userFilterPropertyType =
                                            [];
                                        FFAppState().userData = UserDataStruct(
                                          firstName: getJsonField(
                                            (_model.userDetailsOuputCopy
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.firstName''',
                                          ).toString(),
                                          lastName: getJsonField(
                                            (_model.userDetailsOuputCopy
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.lastName''',
                                          ).toString(),
                                          dateOfBirth: getJsonField(
                                            (_model.userDetailsOuputCopy
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.dateOfBirth''',
                                          ).toString(),
                                          phoneNumber: getJsonField(
                                            (_model.userDetailsOuputCopy
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.phoneNumber''',
                                          ).toString(),
                                          emailAddress: getJsonField(
                                            (_model.userDetailsOuputCopy
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.emailAddress''',
                                          ).toString(),
                                          isAdmin: getJsonField(
                                            (_model.userDetailsOuputCopy
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.isAdmin''',
                                          ),
                                          isHost: getJsonField(
                                            (_model.userDetailsOuputCopy
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.isHost''',
                                          ),
                                          userId: getJsonField(
                                            (_model.userDetailsOuputCopy
                                                    ?.jsonBody ??
                                                ''),
                                            r'''$.userId''',
                                          ),
                                        );
                                        setState(() {});
                                        if (MediaQuery.sizeOf(context).width <
                                            991.0) {
                                          Navigator.pop(context);
                                        } else {
                                          Navigator.pop(context);
                                        }

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

                                        if (_shouldSetState) setState(() {});
                                        return;
                                      } else {
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }
                                    } else {
                                      if ((_model.authTokenOutputCopy
                                                  ?.statusCode ??
                                              200) ==
                                          200) {
                                        _model.showLoginApiError = false;
                                        setState(() {});
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      } else {
                                        _model.showLoginApiError = true;
                                        setState(() {});
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }
                                    }

                                    if (_shouldSetState) setState(() {});
                                  },
                                  autofocus: false,
                                  obscureText:
                                      !_model.passwordTextFieldVisibility,
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
                                    suffixIcon: InkWell(
                                      onTap: () => setState(
                                        () => _model
                                                .passwordTextFieldVisibility =
                                            !_model.passwordTextFieldVisibility,
                                      ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: Icon(
                                        _model.passwordTextFieldVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 18.0,
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                  textAlign: TextAlign.start,
                                  maxLength: 15,
                                  maxLengthEnforcement:
                                      MaxLengthEnforcement.enforced,
                                  buildCounter: (context,
                                          {required currentLength,
                                          required isFocused,
                                          maxLength}) =>
                                      null,
                                  cursorColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  validator: _model
                                      .passwordTextFieldTextControllerValidator
                                      .asValidator(context),
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.0, 0.0),
                              child: Builder(
                                builder: (context) => Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 10.0, 0.0, 0.0),
                                  child: InkWell(
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
                                              child: ForgotPasswordWidget(
                                                email: _model
                                                    .emailTextFieldTextController1
                                                    .text,
                                              ),
                                            );
                                          },
                                        ).then((value) => safeSetState(() {}));
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
                                                      0.0, -1.0)
                                                  .resolve(Directionality.of(
                                                      context)),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.3,
                                                child: ForgotPasswordWidget(
                                                  email: _model
                                                      .emailTextFieldTextController1
                                                      .text,
                                                ),
                                              ),
                                            );
                                          },
                                        ).then((value) => setState(() {}));
                                      }
                                    },
                                    child: Text(
                                      'Forgot Password?',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Work Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                            decoration:
                                                TextDecoration.underline,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            var _shouldSetState = false;
                            if (_model.formKey5.currentState == null ||
                                !_model.formKey5.currentState!.validate()) {
                              return;
                            }
                            _model.authTokenOutput =
                                await AuthTokenAPICall.call(
                              clientId: FFAppConstants.clientId,
                              clientSecret: FFAppConstants.clientSecret,
                              grantType: FFAppConstants.grantType,
                              username:
                                  _model.emailTextFieldTextController1.text,
                              password:
                                  _model.passwordTextFieldTextController.text,
                            );

                            _shouldSetState = true;
                            if ((_model.authTokenOutput?.succeeded ?? true)) {
                              FFAppState().accessToken = getJsonField(
                                (_model.authTokenOutput?.jsonBody ?? ''),
                                r'''$.access_token''',
                              ).toString();
                              FFAppState().refreshToken = getJsonField(
                                (_model.authTokenOutput?.jsonBody ?? ''),
                                r'''$.refresh_token''',
                              ).toString();
                              setState(() {});
                              _model.userDetailsOuput =
                                  await LiferayBaseUrlGroup.userDetailsAPICall
                                      .call(
                                accessToken: FFAppState().accessToken,
                              );

                              _shouldSetState = true;
                              if ((_model.userDetailsOuput?.succeeded ??
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
                                    (_model.userDetailsOuput?.jsonBody ?? ''),
                                    r'''$.firstName''',
                                  ).toString(),
                                  lastName: getJsonField(
                                    (_model.userDetailsOuput?.jsonBody ?? ''),
                                    r'''$.lastName''',
                                  ).toString(),
                                  dateOfBirth: getJsonField(
                                    (_model.userDetailsOuput?.jsonBody ?? ''),
                                    r'''$.dateOfBirth''',
                                  ).toString(),
                                  phoneNumber: getJsonField(
                                    (_model.userDetailsOuput?.jsonBody ?? ''),
                                    r'''$.phoneNumber''',
                                  ).toString(),
                                  emailAddress: getJsonField(
                                    (_model.userDetailsOuput?.jsonBody ?? ''),
                                    r'''$.emailAddress''',
                                  ).toString(),
                                  isAdmin: getJsonField(
                                    (_model.userDetailsOuput?.jsonBody ?? ''),
                                    r'''$.isAdmin''',
                                  ),
                                  isHost: getJsonField(
                                    (_model.userDetailsOuput?.jsonBody ?? ''),
                                    r'''$.isHost''',
                                  ),
                                  userId: getJsonField(
                                    (_model.userDetailsOuput?.jsonBody ?? ''),
                                    r'''$.userId''',
                                  ),
                                  isPI: getJsonField(
                                    (_model.userDetailsOuput?.jsonBody ?? ''),
                                    r'''$.isPI''',
                                  ),
                                  isAT: getJsonField(
                                    (_model.userDetailsOuput?.jsonBody ?? ''),
                                    r'''$.isArchitect''',
                                  ),
                                );
                                setState(() {});
                                if (MediaQuery.sizeOf(context).width < 991.0) {
                                  Navigator.pop(context);

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
                                } else {
                                  Navigator.pop(context);

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
                                if (_shouldSetState) setState(() {});
                                return;
                              }
                            } else {
                              if ((_model.authTokenOutput?.statusCode ?? 200) ==
                                  200) {
                                _model.showLoginApiError = false;
                                setState(() {});
                                if (_shouldSetState) setState(() {});
                                return;
                              } else {
                                _model.showLoginApiError = true;
                                setState(() {});
                                if (_shouldSetState) setState(() {});
                                return;
                              }
                            }

                            if (_shouldSetState) setState(() {});
                          },
                          text: 'Login',
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
                                  fontFamily: 'Work Sans',
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
                    Align(
                      alignment: AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
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
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 22.0, 0.0, 0.0),
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
                                              0.75,
                                          child: PhoneNumLoginWidget(),
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
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0)
                                                .resolve(
                                                    Directionality.of(context)),
                                        child: Container(
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              0.9,
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.3,
                                          child: PhoneNumLoginWidget(),
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
                                  child: FaIcon(
                                    FontAwesomeIcons.phone,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 20.0,
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
                              var _shouldSetState = false;
                              if (isAndroid) {
                                _model.responseForAndroid =
                                    await actions.googleSignInAction(
                                  '28027295774-47saprgonlugqost1n439ofkk3034jrf.apps.googleusercontent.com',
                                );
                                _shouldSetState = true;
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
                                  if (_shouldSetState) setState(() {});
                                  return;
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
                                  if (_shouldSetState) setState(() {});
                                  return;
                                }
                              } else {
                                if (isWeb) {
                                  _model.responseForWeb =
                                      await actions.googleSignInAction(
                                    '893782189869-3v5oafna7fqft6eu1du3fodjbah7oe0f.apps.googleusercontent.com',
                                  );
                                  _shouldSetState = true;
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
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }
                                } else {
                                  if (_shouldSetState) setState(() {});
                                  return;
                                }
                              }

                              if (_shouldSetState) setState(() {});
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
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 28.0, 0.0, 0.0),
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
                                'Work Sans',
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
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 30.0),
                      child: Row(
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
                                              padding: MediaQuery.viewInsetsOf(
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
                                        ).then((value) => safeSetState(() {}));
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
                                              alignment:
                                                  AlignmentDirectional(0.0, 0.0)
                                                      .resolve(
                                                          Directionality.of(
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
                    ),
                  ],
                ),
              ),
            ],
          ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
        ))
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 0.5,
                        height: MediaQuery.sizeOf(context).height * 1.0,
                        decoration: BoxDecoration(
                          color: Color(0xFFF4F4F4),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(24.0),
                            topLeft: Radius.circular(0.0),
                            topRight: Radius.circular(24.0),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    20.0, 20.0, 0.0, 20.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 20.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 15.0, 0.0),
                                            child: FlutterFlowIconButton(
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius: 30.0,
                                              borderWidth: 1.0,
                                              buttonSize: 40.0,
                                              fillColor:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              icon: Icon(
                                                Icons.chevron_left,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 25.0,
                                              ),
                                              onPressed: () async {
                                                setState(() {
                                                  _model
                                                      .passwordloginwebTextController
                                                      ?.clear();
                                                  _model
                                                      .emailloginwebTextController
                                                      ?.clear();
                                                  _model
                                                      .numCountryLoginWebTextController
                                                      ?.clear();
                                                  _model
                                                      .newNumberLoginWebTextController
                                                      ?.clear();
                                                  _model
                                                      .newFirstNameSignwebTextController
                                                      ?.clear();
                                                  _model
                                                      .newLastNameSignwebTextController
                                                      ?.clear();
                                                  _model
                                                      .newMobileNumberSignWebTextController
                                                      ?.clear();
                                                  _model
                                                      .newEmailSignWebTextController
                                                      ?.clear();
                                                  _model
                                                      .streetSignWebTextController
                                                      ?.clear();
                                                  _model
                                                      .newCityTownSignWebTextController
                                                      ?.clear();
                                                  _model
                                                      .newCountrySignWebTextController
                                                      ?.clear();
                                                  _model
                                                      .newpincodeSignWebTextController
                                                      ?.clear();
                                                  _model
                                                      .newStateSignWebTextController
                                                      ?.clear();
                                                  _model
                                                      .newLocalitySignWebTextController
                                                      ?.clear();
                                                  _model.newOtpField?.clear();
                                                });
                                                _model.showLoginApiError =
                                                    false;
                                                _model.showRegisterApiError1 =
                                                    false;
                                                _model.showBirthdayError1 =
                                                    false;
                                                _model.updatePage(() {});
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ),
                                          Text(
                                            'HOME',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(),
                                          child: Container(
                                            width: 637.0,
                                            height: 250.0,
                                            child: Stack(
                                              children: [
                                                PageView(
                                                  controller: _model
                                                          .pageViewController ??=
                                                      PageController(
                                                          initialPage: 0),
                                                  onPageChanged: (_) =>
                                                      setState(() {}),
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  20.0),
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      12.0),
                                                        ),
                                                        child: Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      10.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceEvenly,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Flexible(
                                                                    child:
                                                                        GradientText(
                                                                      'Find the perfect place to stay',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        fontSize:
                                                                            36.0,
                                                                      ),
                                                                      colors: [
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        Color(
                                                                            0xFFA51FF6)
                                                                      ],
                                                                      gradientDirection:
                                                                          GradientDirection
                                                                              .ltr,
                                                                      gradientType:
                                                                          GradientType
                                                                              .linear,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Flexible(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          20.0),
                                                                  child: Text(
                                                                    'Our vision is to revolutionize the way people find and secure accommodation, providing a user-centric platform that simplifies the booking process. ',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: Color(
                                                                          0xFF475569),
                                                                      fontSize:
                                                                          18.0,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.0, 1.0),
                                                  child: smooth_page_indicator
                                                      .SmoothPageIndicator(
                                                    controller: _model
                                                            .pageViewController ??=
                                                        PageController(
                                                            initialPage: 0),
                                                    count: 3,
                                                    axisDirection:
                                                        Axis.horizontal,
                                                    onDotClicked: (i) async {
                                                      await _model
                                                          .pageViewController!
                                                          .animateToPage(
                                                        i,
                                                        duration: Duration(
                                                            milliseconds: 500),
                                                        curve: Curves.ease,
                                                      );
                                                      setState(() {});
                                                    },
                                                    effect: smooth_page_indicator
                                                        .ExpandingDotsEffect(
                                                      expansionFactor: 3.0,
                                                      spacing: 8.0,
                                                      radius: 16.0,
                                                      dotWidth: 16.0,
                                                      dotHeight: 8.0,
                                                      dotColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .accent1,
                                                      activeDotColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      paintStyle:
                                                          PaintingStyle.fill,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Align(
                                      alignment:
                                          AlignmentDirectional(-0.92, -0.28),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 30.0, 0.0, 0.0),
                                        child: Container(
                                          width: 162.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFFA51FF6),
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                                FlutterFlowTheme.of(context)
                                                    .primary
                                              ],
                                              stops: [0.0, 0.3, 1.0],
                                              begin: AlignmentDirectional(
                                                  1.0, 0.0),
                                              end:
                                                  AlignmentDirectional(-1.0, 0),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(100.0),
                                          ),
                                          child: Align(
                                            alignment:
                                                AlignmentDirectional(0.0, 0.0),
                                            child: Text(
                                              'Download App',
                                              style: GoogleFonts.getFont(
                                                'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                fontSize: 16.0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.0, 0.06),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: SvgPicture.asset(
                                  'assets/images/login-bg.svg',
                                  width: MediaQuery.sizeOf(context).width * 0.5,
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.5,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(1.18, 0.64),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 40.0, 0.0),
                                child: Container(
                                  width:
                                      MediaQuery.sizeOf(context).width * 0.28,
                                  height: 84.0,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      colors: [
                                        Color(0xFF4980D3),
                                        Color(0xFF111D49)
                                      ],
                                      stops: [0.0, 1.0],
                                      begin: AlignmentDirectional(1.0, -0.98),
                                      end: AlignmentDirectional(-1.0, 0.98),
                                    ),
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/aviso_1.png',
                                            width: 57.0,
                                            height: 57.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10.0, 0.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 0.0, 2.0),
                                              child: Text(
                                                '15% discount',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 2.0, 0.0, 0.0),
                                              child: Text(
                                                'on all our packages',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 12.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 0.0, 0.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            child: Image.asset(
                                              'assets/images/image_2.png',
                                              width: 119.0,
                                              height: 119.0,
                                              fit: BoxFit.cover,
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
                      Flexible(
                        child: Container(
                          width: 500.0,
                          height: MediaQuery.sizeOf(context).height * 1.0,
                          decoration: BoxDecoration(
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      if (FFAppState()
                                              .loginStatus
                                              .loginwithEmail ==
                                          true)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 80.0, 20.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 24.0, 12.0, 16.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Login with Email Address',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily:
                                                                'Work Sans',
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              if (_model.showLoginApiError)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 8.0),
                                                  child: Text(
                                                    'User credentials are invalid...',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              Container(
                                                width: double.infinity,
                                                height: 1.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                              ),
                                              SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  20.0,
                                                                  12.0,
                                                                  20.0),
                                                      child: Form(
                                                        key: _model.formKey4,
                                                        autovalidateMode:
                                                            AutovalidateMode
                                                                .disabled,
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child:
                                                                      RichText(
                                                                    textScaler:
                                                                        MediaQuery.of(context)
                                                                            .textScaler,
                                                                    text:
                                                                        TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              'Email',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                                fontFamily: 'Work Sans',
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              '*',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).errorText,
                                                                            fontSize:
                                                                                14.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Work Sans',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                TextFormField(
                                                                  controller: _model
                                                                      .emailloginwebTextController,
                                                                  focusNode: _model
                                                                      .emailloginwebFocusNode,
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      false,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        false,
                                                                    labelStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    errorStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .displaySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .errorText,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .errorText,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            14.0,
                                                                            0.0,
                                                                            14.0,
                                                                            0.0),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  maxLength: 50,
                                                                  maxLengthEnforcement:
                                                                      MaxLengthEnforcement
                                                                          .enforced,
                                                                  buildCounter: (context,
                                                                          {required currentLength,
                                                                          required isFocused,
                                                                          maxLength}) =>
                                                                      null,
                                                                  keyboardType:
                                                                      TextInputType
                                                                          .emailAddress,
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  validator: _model
                                                                      .emailloginwebTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          22.0,
                                                                          0.0,
                                                                          8.0),
                                                                  child:
                                                                      RichText(
                                                                    textScaler:
                                                                        MediaQuery.of(context)
                                                                            .textScaler,
                                                                    text:
                                                                        TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              'Password',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                                fontFamily: 'Work Sans',
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w500,
                                                                              ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              '*',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).errorText,
                                                                            fontSize:
                                                                                14.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                TextFormField(
                                                                  controller: _model
                                                                      .passwordloginwebTextController,
                                                                  focusNode: _model
                                                                      .passwordloginwebFocusNode,
                                                                  onFieldSubmitted:
                                                                      (_) async {
                                                                    var _shouldSetState =
                                                                        false;
                                                                    if (_model.formKey4.currentState ==
                                                                            null ||
                                                                        !_model
                                                                            .formKey4
                                                                            .currentState!
                                                                            .validate()) {
                                                                      return;
                                                                    }
                                                                    _model.authTokenOutputCopytabweb =
                                                                        await AuthTokenAPICall
                                                                            .call(
                                                                      clientId:
                                                                          FFAppConstants
                                                                              .clientId,
                                                                      clientSecret:
                                                                          FFAppConstants
                                                                              .clientSecret,
                                                                      grantType:
                                                                          FFAppConstants
                                                                              .grantType,
                                                                      username: _model
                                                                          .emailloginwebTextController
                                                                          .text,
                                                                      password: _model
                                                                          .passwordloginwebTextController
                                                                          .text,
                                                                    );

                                                                    _shouldSetState =
                                                                        true;
                                                                    if ((_model
                                                                            .authTokenOutputCopytabweb
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      FFAppState()
                                                                              .accessToken =
                                                                          getJsonField(
                                                                        (_model.authTokenOutputCopytabweb?.jsonBody ??
                                                                            ''),
                                                                        r'''$.access_token''',
                                                                      ).toString();
                                                                      FFAppState()
                                                                              .refreshToken =
                                                                          getJsonField(
                                                                        (_model.authTokenOutputCopytabweb?.jsonBody ??
                                                                            ''),
                                                                        r'''$.refresh_token''',
                                                                      ).toString();
                                                                      setState(
                                                                          () {});
                                                                      _model.userDetailsOuputCopytabweb = await LiferayBaseUrlGroup
                                                                          .userDetailsAPICall
                                                                          .call(
                                                                        accessToken:
                                                                            FFAppState().accessToken,
                                                                      );

                                                                      _shouldSetState =
                                                                          true;
                                                                      if ((_model
                                                                              .userDetailsOuputCopytabweb
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        FFAppState().searchCity =
                                                                            '';
                                                                        FFAppState().searchDates =
                                                                            [];
                                                                        FFAppState()
                                                                            .searchGuests = 0;
                                                                        FFAppState().searchLocality =
                                                                            '';
                                                                        FFAppState().priceMin =
                                                                            500.0;
                                                                        FFAppState().priceMax =
                                                                            99999.0;
                                                                        FFAppState().userFilterPropertyType =
                                                                            [];
                                                                        FFAppState().userData =
                                                                            UserDataStruct(
                                                                          firstName:
                                                                              getJsonField(
                                                                            (_model.userDetailsOuputCopytabweb?.jsonBody ??
                                                                                ''),
                                                                            r'''$.firstName''',
                                                                          ).toString(),
                                                                          lastName:
                                                                              getJsonField(
                                                                            (_model.userDetailsOuputCopytabweb?.jsonBody ??
                                                                                ''),
                                                                            r'''$.lastName''',
                                                                          ).toString(),
                                                                          dateOfBirth:
                                                                              getJsonField(
                                                                            (_model.userDetailsOuputCopytabweb?.jsonBody ??
                                                                                ''),
                                                                            r'''$.dateOfBirth''',
                                                                          ).toString(),
                                                                          phoneNumber:
                                                                              getJsonField(
                                                                            (_model.userDetailsOuputCopytabweb?.jsonBody ??
                                                                                ''),
                                                                            r'''$.phoneNumber''',
                                                                          ).toString(),
                                                                          emailAddress:
                                                                              getJsonField(
                                                                            (_model.userDetailsOuputCopytabweb?.jsonBody ??
                                                                                ''),
                                                                            r'''$.emailAddress''',
                                                                          ).toString(),
                                                                          isAdmin:
                                                                              getJsonField(
                                                                            (_model.userDetailsOuputCopytabweb?.jsonBody ??
                                                                                ''),
                                                                            r'''$.isAdmin''',
                                                                          ),
                                                                          isHost:
                                                                              getJsonField(
                                                                            (_model.userDetailsOuputCopytabweb?.jsonBody ??
                                                                                ''),
                                                                            r'''$.isHost''',
                                                                          ),
                                                                          userId:
                                                                              getJsonField(
                                                                            (_model.userDetailsOuputCopytabweb?.jsonBody ??
                                                                                ''),
                                                                            r'''$.userId''',
                                                                          ),
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                        if (MediaQuery.sizeOf(context).width <
                                                                            991.0) {
                                                                          Navigator.pop(
                                                                              context);
                                                                        } else {
                                                                          Navigator.pop(
                                                                              context);
                                                                        }

                                                                        context
                                                                            .goNamed(
                                                                          'home_page',
                                                                          extra: <String,
                                                                              dynamic>{
                                                                            kTransitionInfoKey:
                                                                                TransitionInfo(
                                                                              hasTransition: true,
                                                                              transitionType: PageTransitionType.fade,
                                                                              duration: Duration(milliseconds: 0),
                                                                            ),
                                                                          },
                                                                        );

                                                                        if (_shouldSetState)
                                                                          setState(
                                                                              () {});
                                                                        return;
                                                                      } else {
                                                                        if (_shouldSetState)
                                                                          setState(
                                                                              () {});
                                                                        return;
                                                                      }
                                                                    } else {
                                                                      if ((_model.authTokenOutputCopytabweb?.statusCode ??
                                                                              200) ==
                                                                          200) {
                                                                        _model.showLoginApiError =
                                                                            false;
                                                                        setState(
                                                                            () {});
                                                                        if (_shouldSetState)
                                                                          setState(
                                                                              () {});
                                                                        return;
                                                                      } else {
                                                                        _model.showLoginApiError =
                                                                            true;
                                                                        setState(
                                                                            () {});
                                                                        if (_shouldSetState)
                                                                          setState(
                                                                              () {});
                                                                        return;
                                                                      }
                                                                    }

                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                  },
                                                                  autofocus:
                                                                      false,
                                                                  obscureText:
                                                                      !_model
                                                                          .passwordloginwebVisibility,
                                                                  decoration:
                                                                      InputDecoration(
                                                                    isDense:
                                                                        false,
                                                                    errorStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .displaySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    enabledBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    focusedBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    errorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .errorText,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    focusedErrorBorder:
                                                                        OutlineInputBorder(
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .errorText,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    contentPadding:
                                                                        EdgeInsetsDirectional.fromSTEB(
                                                                            14.0,
                                                                            0.0,
                                                                            14.0,
                                                                            0.0),
                                                                    suffixIcon:
                                                                        InkWell(
                                                                      onTap: () =>
                                                                          setState(
                                                                        () => _model.passwordloginwebVisibility =
                                                                            !_model.passwordloginwebVisibility,
                                                                      ),
                                                                      focusNode:
                                                                          FocusNode(
                                                                              skipTraversal: true),
                                                                      child:
                                                                          Icon(
                                                                        _model.passwordloginwebVisibility
                                                                            ? Icons.visibility_outlined
                                                                            : Icons.visibility_off_outlined,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  textAlign:
                                                                      TextAlign
                                                                          .start,
                                                                  maxLength: 15,
                                                                  maxLengthEnforcement:
                                                                      MaxLengthEnforcement
                                                                          .enforced,
                                                                  buildCounter: (context,
                                                                          {required currentLength,
                                                                          required isFocused,
                                                                          maxLength}) =>
                                                                      null,
                                                                  cursorColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                  validator: _model
                                                                      .passwordloginwebTextControllerValidator
                                                                      .asValidator(
                                                                          context),
                                                                ),
                                                              ],
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      1.0, 0.0),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: InkWell(
                                                                  splashColor:
                                                                      Colors
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
                                                                    FFAppState()
                                                                        .updateLoginStatusStruct(
                                                                      (e) => e
                                                                        ..loginwitphNumber =
                                                                            false
                                                                        ..loginwithEmail =
                                                                            false
                                                                        ..signUp =
                                                                            false
                                                                        ..forgotPassword =
                                                                            true,
                                                                    );
                                                                    setState(
                                                                        () {});
                                                                  },
                                                                  child: Text(
                                                                    'Forgot Password?',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Work Sans',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          fontSize:
                                                                              14.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          decoration:
                                                                              TextDecoration.underline,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    0.0,
                                                                    12.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            var _shouldSetState =
                                                                false;
                                                            if (_model.formKey4
                                                                        .currentState ==
                                                                    null ||
                                                                !_model.formKey4
                                                                    .currentState!
                                                                    .validate()) {
                                                              return;
                                                            }
                                                            _model.authTokenOutputtabweb =
                                                                await AuthTokenAPICall
                                                                    .call(
                                                              clientId:
                                                                  FFAppConstants
                                                                      .clientId,
                                                              clientSecret:
                                                                  FFAppConstants
                                                                      .clientSecret,
                                                              grantType:
                                                                  FFAppConstants
                                                                      .grantType,
                                                              username: _model
                                                                  .emailloginwebTextController
                                                                  .text,
                                                              password: _model
                                                                  .passwordloginwebTextController
                                                                  .text,
                                                            );

                                                            _shouldSetState =
                                                                true;
                                                            if ((_model
                                                                    .authTokenOutputtabweb
                                                                    ?.succeeded ??
                                                                true)) {
                                                              FFAppState()
                                                                      .accessToken =
                                                                  getJsonField(
                                                                (_model.authTokenOutputtabweb
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.access_token''',
                                                              ).toString();
                                                              FFAppState()
                                                                      .refreshToken =
                                                                  getJsonField(
                                                                (_model.authTokenOutputtabweb
                                                                        ?.jsonBody ??
                                                                    ''),
                                                                r'''$.refresh_token''',
                                                              ).toString();
                                                              setState(() {});
                                                              _model.userDetailsOuputtabweb =
                                                                  await LiferayBaseUrlGroup
                                                                      .userDetailsAPICall
                                                                      .call(
                                                                accessToken:
                                                                    FFAppState()
                                                                        .accessToken,
                                                              );

                                                              _shouldSetState =
                                                                  true;
                                                              if ((_model
                                                                      .userDetailsOuputtabweb
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                FFAppState()
                                                                    .searchCity = '';
                                                                FFAppState()
                                                                    .searchDates = [];
                                                                FFAppState()
                                                                    .searchGuests = 0;
                                                                FFAppState()
                                                                    .searchLocality = '';
                                                                FFAppState()
                                                                        .priceMin =
                                                                    500.0;
                                                                FFAppState()
                                                                        .priceMax =
                                                                    99999.0;
                                                                FFAppState()
                                                                    .userFilterPropertyType = [];
                                                                FFAppState()
                                                                        .userData =
                                                                    UserDataStruct(
                                                                  firstName:
                                                                      getJsonField(
                                                                    (_model.userDetailsOuputtabweb
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.firstName''',
                                                                  ).toString(),
                                                                  lastName:
                                                                      getJsonField(
                                                                    (_model.userDetailsOuputtabweb
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.lastName''',
                                                                  ).toString(),
                                                                  dateOfBirth:
                                                                      getJsonField(
                                                                    (_model.userDetailsOuputtabweb
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.dateOfBirth''',
                                                                  ).toString(),
                                                                  phoneNumber:
                                                                      getJsonField(
                                                                    (_model.userDetailsOuputtabweb
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.phoneNumber''',
                                                                  ).toString(),
                                                                  emailAddress:
                                                                      getJsonField(
                                                                    (_model.userDetailsOuputtabweb
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.emailAddress''',
                                                                  ).toString(),
                                                                  isAdmin:
                                                                      getJsonField(
                                                                    (_model.userDetailsOuputtabweb
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.isAdmin''',
                                                                  ),
                                                                  isHost:
                                                                      getJsonField(
                                                                    (_model.userDetailsOuputtabweb
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.isHost''',
                                                                  ),
                                                                  userId:
                                                                      getJsonField(
                                                                    (_model.userDetailsOuputtabweb
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.userId''',
                                                                  ),
                                                                  isPI:
                                                                      getJsonField(
                                                                    (_model.userDetailsOuputtabweb
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.isPI''',
                                                                  ),
                                                                  isAT:
                                                                      getJsonField(
                                                                    (_model.userDetailsOuputtabweb
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                    r'''$.isArchitect''',
                                                                  ),
                                                                );
                                                                setState(() {});
                                                                setState(() {
                                                                  _model
                                                                      .emailloginwebTextController
                                                                      ?.clear();
                                                                  _model
                                                                      .passwordloginwebTextController
                                                                      ?.clear();
                                                                });
                                                                if (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width <
                                                                    991.0) {
                                                                  Navigator.pop(
                                                                      context);

                                                                  context.pushNamed(
                                                                      'home_page');

                                                                  if (_shouldSetState)
                                                                    setState(
                                                                        () {});
                                                                  return;
                                                                } else {
                                                                  Navigator.pop(
                                                                      context);

                                                                  context
                                                                      .goNamed(
                                                                    'home_page',
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.fade,
                                                                        duration:
                                                                            Duration(milliseconds: 0),
                                                                      ),
                                                                    },
                                                                  );

                                                                  if (_shouldSetState)
                                                                    setState(
                                                                        () {});
                                                                  return;
                                                                }
                                                              } else {
                                                                if (_shouldSetState)
                                                                  setState(
                                                                      () {});
                                                                return;
                                                              }
                                                            } else {
                                                              if ((_model.authTokenOutputtabweb
                                                                          ?.statusCode ??
                                                                      200) ==
                                                                  200) {
                                                                _model.showLoginApiError =
                                                                    false;
                                                                _model
                                                                    .updatePage(
                                                                        () {});
                                                                if (_shouldSetState)
                                                                  setState(
                                                                      () {});
                                                                return;
                                                              } else {
                                                                _model.showLoginApiError =
                                                                    true;
                                                                _model
                                                                    .updatePage(
                                                                        () {});
                                                                if (_shouldSetState)
                                                                  setState(
                                                                      () {});
                                                                return;
                                                              }
                                                            }

                                                            if (_shouldSetState)
                                                              setState(() {});
                                                          },
                                                          text: 'Login',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 250.0,
                                                            height: 50.0,
                                                            padding:
                                                                EdgeInsets.all(
                                                                    0.0),
                                                            iconPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Work Sans',
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                            elevation: 4.0,
                                                            borderSide:
                                                                BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  15.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'or continue with',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 16.0,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  22.0,
                                                                  0.0,
                                                                  22.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        25.0,
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
                                                                FFAppState()
                                                                    .updateLoginStatusStruct(
                                                                  (e) => e
                                                                    ..loginwitphNumber =
                                                                        true
                                                                    ..loginwithEmail =
                                                                        false
                                                                    ..signUp =
                                                                        false
                                                                    ..forgotPassword =
                                                                        false,
                                                                );
                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                width: 48.0,
                                                                height: 48.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFDDE6F0),
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: FaIcon(
                                                                    FontAwesomeIcons
                                                                        .phone,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 20.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        25.0,
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
                                                                var _shouldSetState =
                                                                    false;
                                                                if (isWeb) {
                                                                  _model.responseForWebCopy =
                                                                      await actions
                                                                          .googleSignInAction(
                                                                    '893782189869-3v5oafna7fqft6eu1du3fodjbah7oe0f.apps.googleusercontent.com',
                                                                  );
                                                                  _shouldSetState =
                                                                      true;
                                                                  if (_model
                                                                          .responseForWebCopy ==
                                                                      true) {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Success'),
                                                                          content:
                                                                              Text('Log In Credentials are valid'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                    return;
                                                                  } else {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Failed'),
                                                                          content:
                                                                              Text('Failed to Login'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                    return;
                                                                  }
                                                                } else {
                                                                  if (_shouldSetState)
                                                                    setState(
                                                                        () {});
                                                                  return;
                                                                }

                                                                if (_shouldSetState)
                                                                  setState(
                                                                      () {});
                                                              },
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/images/Google.svg',
                                                                  width: 48.0,
                                                                  height: 48.0,
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        25.0,
                                                                        0.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/facebook_1.svg',
                                                                width: 48.0,
                                                                height: 48.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/Apple.svg',
                                                              width: 48.0,
                                                              height: 48.0,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    'If you don’t have an account, please ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Work Sans',
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                    ),
                                                              ),
                                                              TextSpan(
                                                                text:
                                                                    'Register here',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Work Sans',
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w600,
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline,
                                                                    ),
                                                                mouseCursor:
                                                                    SystemMouseCursors
                                                                        .click,
                                                                recognizer:
                                                                    TapGestureRecognizer()
                                                                      ..onTap =
                                                                          () async {
                                                                        FFAppState()
                                                                            .updateLoginStatusStruct(
                                                                          (e) => e
                                                                            ..signUp =
                                                                                true
                                                                            ..loginwithEmail =
                                                                                false
                                                                            ..loginwitphNumber = false,
                                                                        );
                                                                        setState(
                                                                            () {});
                                                                      },
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  letterSpacing:
                                                                      0.0,
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
                                      if (FFAppState()
                                              .loginStatus
                                              .loginwitphNumber ==
                                          true)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 80.0, 20.0, 20.0),
                                          child: SingleChildScrollView(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 24.0,
                                                          12.0, 12.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Login with Mobile Number',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Work Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Container(
                                                  width: double.infinity,
                                                  height: 1.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackground,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 20.0,
                                                          12.0, 20.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .center,
                                                      children: [
                                                        Form(
                                                          key: _model.formKey3,
                                                          autovalidateMode:
                                                              AutovalidateMode
                                                                  .disabled,
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        12.0,
                                                                        18.0,
                                                                        12.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        if (_model.numCountryLoginWebTextController.text !=
                                                                                null &&
                                                                            _model.numCountryLoginWebTextController.text !=
                                                                                '')
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                10.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 38.0,
                                                                              height: 38.0,
                                                                              clipBehavior: Clip.antiAlias,
                                                                              decoration: BoxDecoration(
                                                                                shape: BoxShape.circle,
                                                                              ),
                                                                              child: CachedNetworkImage(
                                                                                fadeInDuration: Duration(milliseconds: 50),
                                                                                fadeOutDuration: Duration(milliseconds: 50),
                                                                                imageUrl: valueOrDefault<String>(
                                                                                  functions.getCountryFlag(_model.numCountryLoginWebTextController.text),
                                                                                  'https://media.istockphoto.com/id/1055079680/vector/black-linear-photo-camera-like-no-image-available.jpg?s=612x612&w=0&k=20&c=P1DebpeMIAtXj_ZbVsKVvg-duuL0v9DlrOZUvPG6UJk=',
                                                                                ),
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        Expanded(
                                                                          child:
                                                                              Autocomplete<String>(
                                                                            initialValue:
                                                                                TextEditingValue(),
                                                                            optionsBuilder:
                                                                                (textEditingValue) {
                                                                              if (textEditingValue.text == '') {
                                                                                return const Iterable<String>.empty();
                                                                              }
                                                                              return functions.getCountryList().where((option) {
                                                                                final lowercaseOption = option.toLowerCase();
                                                                                return lowercaseOption.contains(textEditingValue.text.toLowerCase());
                                                                              });
                                                                            },
                                                                            optionsViewBuilder: (context,
                                                                                onSelected,
                                                                                options) {
                                                                              return AutocompleteOptionsList(
                                                                                textFieldKey: _model.numCountryLoginWebKey,
                                                                                textController: _model.numCountryLoginWebTextController!,
                                                                                options: options.toList(),
                                                                                onSelected: onSelected,
                                                                                textStyle: GoogleFonts.getFont(
                                                                                  'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                                textHighlightStyle: TextStyle(),
                                                                                textAlign: TextAlign.start,
                                                                                elevation: 0.5,
                                                                                optionBackgroundColor: FlutterFlowTheme.of(context).primaryBackground,
                                                                                optionHighlightColor: Color(0xFFDDE0E9),
                                                                                maxHeight: 200.0,
                                                                              );
                                                                            },
                                                                            onSelected:
                                                                                (String selection) {
                                                                              setState(() => _model.numCountryLoginWebSelectedOption = selection);
                                                                              FocusScope.of(context).unfocus();
                                                                            },
                                                                            fieldViewBuilder:
                                                                                (
                                                                              context,
                                                                              textEditingController,
                                                                              focusNode,
                                                                              onEditingComplete,
                                                                            ) {
                                                                              _model.numCountryLoginWebFocusNode = focusNode;

                                                                              _model.numCountryLoginWebTextController = textEditingController;
                                                                              return TextFormField(
                                                                                key: _model.numCountryLoginWebKey,
                                                                                controller: textEditingController,
                                                                                focusNode: focusNode,
                                                                                onEditingComplete: onEditingComplete,
                                                                                autofocus: false,
                                                                                textCapitalization: TextCapitalization.none,
                                                                                obscureText: false,
                                                                                decoration: InputDecoration(
                                                                                  isDense: false,
                                                                                  hintText: 'Enter your country',
                                                                                  hintStyle: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).secondaryText,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontSize: 14.0,
                                                                                  ),
                                                                                  errorStyle: GoogleFonts.getFont(
                                                                                    'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).error,
                                                                                    fontWeight: FontWeight.w500,
                                                                                    fontSize: 14.0,
                                                                                  ),
                                                                                  enabledBorder: InputBorder.none,
                                                                                  focusedBorder: InputBorder.none,
                                                                                  errorBorder: InputBorder.none,
                                                                                  focusedErrorBorder: InputBorder.none,
                                                                                  contentPadding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                ),
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                                textAlign: TextAlign.start,
                                                                                keyboardType: TextInputType.name,
                                                                                cursorColor: FlutterFlowTheme.of(context).primaryText,
                                                                                validator: _model.numCountryLoginWebTextControllerValidator.asValidator(context),
                                                                                inputFormatters: [
                                                                                  FilteringTextInputFormatter.allow(RegExp('[a-zA-Z]'))
                                                                                ],
                                                                              );
                                                                            },
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              5.0,
                                                                              0.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              setState(() {
                                                                                _model.numCountryLoginWebTextController?.clear();
                                                                              });
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.close_rounded,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 18.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                if (responsiveVisibility(
                                                                  context:
                                                                      context,
                                                                  phone: false,
                                                                  tablet: false,
                                                                  tabletLandscape:
                                                                      false,
                                                                  desktop:
                                                                      false,
                                                                ))
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            10.0),
                                                                    child:
                                                                        RichText(
                                                                      textScaler:
                                                                          MediaQuery.of(context)
                                                                              .textScaler,
                                                                      text:
                                                                          TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                            text:
                                                                                'Mobile number',
                                                                            style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  letterSpacing: 0.0,
                                                                                  fontWeight: FontWeight.w500,
                                                                                ),
                                                                          ),
                                                                          TextSpan(
                                                                            text:
                                                                                '*',
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Poppins',
                                                                              color: FlutterFlowTheme.of(context).errorText,
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
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius
                                                                              .only(
                                                                        bottomLeft:
                                                                            Radius.circular(0.0),
                                                                        bottomRight:
                                                                            Radius.circular(0.0),
                                                                        topLeft:
                                                                            Radius.circular(0.0),
                                                                        topRight:
                                                                            Radius.circular(0.0),
                                                                      ),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        if (_model.numCountryLoginWebTextController.text !=
                                                                                null &&
                                                                            _model.numCountryLoginWebTextController.text !=
                                                                                '')
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              valueOrDefault<String>(
                                                                                functions.getDialCode(_model.numCountryLoginWebTextController.text),
                                                                                '+1',
                                                                              ),
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 16.0,
                                                                                    letterSpacing: 0.0,
                                                                                    fontWeight: FontWeight.w500,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        if (_model.numCountryLoginWebTextController.text !=
                                                                                null &&
                                                                            _model.numCountryLoginWebTextController.text !=
                                                                                '')
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                8.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                Container(
                                                                              width: 2.0,
                                                                              height: 30.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        Expanded(
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                TextFormField(
                                                                              controller: _model.newNumberLoginWebTextController,
                                                                              focusNode: _model.newNumberLoginWebFocusNode,
                                                                              onChanged: (_) => EasyDebounce.debounce(
                                                                                '_model.newNumberLoginWebTextController',
                                                                                Duration(milliseconds: 100),
                                                                                () => setState(() {}),
                                                                              ),
                                                                              autofocus: false,
                                                                              obscureText: false,
                                                                              decoration: InputDecoration(
                                                                                hintText: 'Enter your phone number',
                                                                                hintStyle: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                                errorStyle: GoogleFonts.getFont(
                                                                                  'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).error,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                                enabledBorder: InputBorder.none,
                                                                                focusedBorder: InputBorder.none,
                                                                                errorBorder: InputBorder.none,
                                                                                focusedErrorBorder: InputBorder.none,
                                                                                contentPadding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                              ),
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 14.0,
                                                                              ),
                                                                              textAlign: TextAlign.start,
                                                                              maxLength: 10,
                                                                              maxLengthEnforcement: MaxLengthEnforcement.none,
                                                                              buildCounter: (context, {required currentLength, required isFocused, maxLength}) => null,
                                                                              keyboardType: TextInputType.number,
                                                                              validator: _model.newNumberLoginWebTextControllerValidator.asValidator(context),
                                                                              inputFormatters: [
                                                                                FilteringTextInputFormatter.allow(RegExp('[0-9]'))
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              5.0,
                                                                              0.0),
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              setState(() {
                                                                                _model.newNumberLoginWebTextController?.clear();
                                                                              });
                                                                            },
                                                                            child:
                                                                                Icon(
                                                                              Icons.close_rounded,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 18.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          0.0,
                                                                          -1.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        FFButtonWidget(
                                                                      onPressed:
                                                                          () async {
                                                                        var _shouldSetState =
                                                                            false;
                                                                        if (_model.formKey3.currentState ==
                                                                                null ||
                                                                            !_model.formKey3.currentState!.validate()) {
                                                                          return;
                                                                        }
                                                                        _model.initiateOTPResponseTabWeb = await LiferayBaseUrlGroup
                                                                            .initialMobileNumAndOTPCall
                                                                            .call(
                                                                          phoneNumber:
                                                                              '${functions.getDialCode(_model.numCountryLoginWebSelectedOption)}${_model.newNumberLoginWebTextController.text}',
                                                                          otp:
                                                                              '',
                                                                        );

                                                                        _shouldSetState =
                                                                            true;
                                                                        if ((_model.initiateOTPResponseTabWeb?.succeeded ??
                                                                            true)) {
                                                                          _model.otpSent1 =
                                                                              true;
                                                                          _model
                                                                              .updatePage(() {});
                                                                          if (_shouldSetState)
                                                                            setState(() {});
                                                                          return;
                                                                        } else {
                                                                          await showDialog(
                                                                            context:
                                                                                context,
                                                                            builder:
                                                                                (alertDialogContext) {
                                                                              return AlertDialog(
                                                                                title: Text('Alert!'),
                                                                                content: Text(getJsonField(
                                                                                  (_model.initiateOTPResponseTabWeb?.jsonBody ?? ''),
                                                                                  r'''$.message''',
                                                                                ).toString()),
                                                                                actions: [
                                                                                  TextButton(
                                                                                    onPressed: () => Navigator.pop(alertDialogContext),
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
                                                                          setState(
                                                                              () {});
                                                                      },
                                                                      text:
                                                                          'Generate OTP',
                                                                      options:
                                                                          FFButtonOptions(
                                                                        width:
                                                                            150.0,
                                                                        height:
                                                                            33.0,
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            24.0,
                                                                            0.0),
                                                                        iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        textStyle: FlutterFlowTheme.of(context)
                                                                            .labelSmall
                                                                            .override(
                                                                              fontFamily: 'Work Sans',
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                        elevation:
                                                                            3.0,
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              Colors.transparent,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(6.0),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      13.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            8.0),
                                                                child: RichText(
                                                                  textScaler: MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text:
                                                                            'Enter the OTP',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyLarge
                                                                            .override(
                                                                              fontFamily: 'Work Sans',
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                      TextSpan(
                                                                        text:
                                                                            '*',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Poppins',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).errorText,
                                                                          fontSize:
                                                                              14.0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              PinCodeTextField(
                                                                autoDisposeControllers:
                                                                    false,
                                                                appContext:
                                                                    context,
                                                                length: 6,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                enableActiveFill:
                                                                    true,
                                                                autoFocus:
                                                                    false,
                                                                enablePinAutofill:
                                                                    false,
                                                                errorTextSpace:
                                                                    16.0,
                                                                showCursor:
                                                                    true,
                                                                cursorColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                obscureText:
                                                                    false,
                                                                hintCharacter:
                                                                    '*',
                                                                keyboardType:
                                                                    TextInputType
                                                                        .number,
                                                                pinTheme:
                                                                    PinTheme(
                                                                  fieldHeight:
                                                                      45.0,
                                                                  fieldWidth:
                                                                      52.0,
                                                                  borderWidth:
                                                                      2.0,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .only(
                                                                    bottomLeft:
                                                                        Radius.circular(
                                                                            12.0),
                                                                    bottomRight:
                                                                        Radius.circular(
                                                                            12.0),
                                                                    topLeft: Radius
                                                                        .circular(
                                                                            12.0),
                                                                    topRight: Radius
                                                                        .circular(
                                                                            12.0),
                                                                  ),
                                                                  shape:
                                                                      PinCodeFieldShape
                                                                          .box,
                                                                  activeColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  inactiveColor:
                                                                      Color(
                                                                          0xEEE5EFF7),
                                                                  selectedColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  activeFillColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                  inactiveFillColor:
                                                                      Color(
                                                                          0xEEE5EFF7),
                                                                  selectedFillColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                ),
                                                                controller: _model
                                                                    .newOtpField,
                                                                onChanged:
                                                                    (_) {},
                                                                autovalidateMode:
                                                                    AutovalidateMode
                                                                        .onUserInteraction,
                                                                validator: _model
                                                                    .newOtpFieldValidator
                                                                    .asValidator(
                                                                        context),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            5.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .end,
                                                                  children: [
                                                                    Flexible(
                                                                      child:
                                                                          Text(
                                                                        'OTP valid till ',
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Work Sans',
                                                                              fontSize: 12.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                    ),
                                                                    FlutterFlowTimer(
                                                                      initialTime:
                                                                          _model
                                                                              .timerInitialTimeMs,
                                                                      getDisplayTime:
                                                                          (value) =>
                                                                              StopWatchTimer.getDisplayTime(
                                                                        value,
                                                                        hours:
                                                                            false,
                                                                        minute:
                                                                            false,
                                                                        milliSecond:
                                                                            false,
                                                                      ),
                                                                      controller:
                                                                          _model
                                                                              .timerController,
                                                                      updateStateInterval:
                                                                          Duration(
                                                                              milliseconds: 1000),
                                                                      onChanged: (value,
                                                                          displayTime,
                                                                          shouldUpdate) {
                                                                        _model.timerMilliseconds =
                                                                            value;
                                                                        _model.timerValue =
                                                                            displayTime;
                                                                        if (shouldUpdate)
                                                                          setState(
                                                                              () {});
                                                                      },
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      ' seconds',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Work Sans',
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
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
                                                                    Text(
                                                                      'Didn\'t get the code?',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Work Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                    Text(
                                                                      'Resend OTP',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Work Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryText,
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            decoration:
                                                                                TextDecoration.underline,
                                                                          ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        -1.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      FFButtonWidget(
                                                                    onPressed:
                                                                        () async {
                                                                      var _shouldSetState =
                                                                          false;
                                                                      _model.otpVerificationResponsetabweb = await LiferayBaseUrlGroup
                                                                          .oTPVerificationCall
                                                                          .call(
                                                                        otp: _model
                                                                            .newOtpField!
                                                                            .text,
                                                                        phoneNumber:
                                                                            '${functions.getDialCode(_model.numCountryLoginWebSelectedOption)}${_model.newNumberLoginWebTextController.text}',
                                                                      );

                                                                      _shouldSetState =
                                                                          true;
                                                                      if ((_model
                                                                              .otpVerificationResponsetabweb
                                                                              ?.succeeded ??
                                                                          true)) {
                                                                        FFAppState().accessToken =
                                                                            getJsonField(
                                                                          (_model.otpVerificationResponsetabweb?.jsonBody ??
                                                                              ''),
                                                                          r'''$.access_token''',
                                                                        ).toString();
                                                                        FFAppState().refreshToken =
                                                                            getJsonField(
                                                                          (_model.otpVerificationResponsetabweb?.jsonBody ??
                                                                              ''),
                                                                          r'''$.refresh_token''',
                                                                        ).toString();
                                                                        setState(
                                                                            () {});
                                                                        _model.userDetailsOuput1TabWeb = await LiferayBaseUrlGroup
                                                                            .userDetailsAPICall
                                                                            .call(
                                                                          accessToken:
                                                                              FFAppState().accessToken,
                                                                        );

                                                                        _shouldSetState =
                                                                            true;
                                                                        if ((_model.userDetailsOuput1TabWeb?.succeeded ??
                                                                            true)) {
                                                                          FFAppState().searchCity =
                                                                              '';
                                                                          FFAppState().searchDates =
                                                                              [];
                                                                          FFAppState().searchGuests =
                                                                              0;
                                                                          FFAppState().searchLocality =
                                                                              '';
                                                                          FFAppState().priceMin =
                                                                              500.0;
                                                                          FFAppState().priceMax =
                                                                              99999.0;
                                                                          FFAppState().userFilterPropertyType =
                                                                              [];
                                                                          FFAppState().userData =
                                                                              UserDataStruct(
                                                                            firstName:
                                                                                getJsonField(
                                                                              (_model.userDetailsOuput1TabWeb?.jsonBody ?? ''),
                                                                              r'''$.firstName''',
                                                                            ).toString(),
                                                                            lastName:
                                                                                getJsonField(
                                                                              (_model.userDetailsOuput1TabWeb?.jsonBody ?? ''),
                                                                              r'''$.lastName''',
                                                                            ).toString(),
                                                                            dateOfBirth:
                                                                                getJsonField(
                                                                              (_model.userDetailsOuput1TabWeb?.jsonBody ?? ''),
                                                                              r'''$.dateOfBirth''',
                                                                            ).toString(),
                                                                            phoneNumber:
                                                                                getJsonField(
                                                                              (_model.userDetailsOuput1TabWeb?.jsonBody ?? ''),
                                                                              r'''$.phoneNumber''',
                                                                            ).toString(),
                                                                            emailAddress:
                                                                                getJsonField(
                                                                              (_model.userDetailsOuput1TabWeb?.jsonBody ?? ''),
                                                                              r'''$.emailAddress''',
                                                                            ).toString(),
                                                                            isAdmin:
                                                                                getJsonField(
                                                                              (_model.userDetailsOuput1TabWeb?.jsonBody ?? ''),
                                                                              r'''$.isAdmin''',
                                                                            ),
                                                                            isHost:
                                                                                getJsonField(
                                                                              (_model.userDetailsOuput1TabWeb?.jsonBody ?? ''),
                                                                              r'''$.isHost''',
                                                                            ),
                                                                            userId:
                                                                                getJsonField(
                                                                              (_model.userDetailsOuput1TabWeb?.jsonBody ?? ''),
                                                                              r'''$.userId''',
                                                                            ),
                                                                          );
                                                                          setState(
                                                                              () {});
                                                                          setState(
                                                                              () {
                                                                            _model.newNumberLoginWebTextController?.clear();
                                                                            _model.numCountryLoginWebTextController?.clear();
                                                                            _model.newOtpField?.clear();
                                                                          });
                                                                          if (MediaQuery.sizeOf(context).width <
                                                                              991.0) {
                                                                            Navigator.pop(context);

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
                                                                          } else {
                                                                            Navigator.pop(context);

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
                                                                          }

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
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (alertDialogContext) {
                                                                            return AlertDialog(
                                                                              content: Text(_model.newOtpField!.text == null || _model.newOtpField!.text == '' ? 'Please Enter Otp !' : 'Invalid Otp !'),
                                                                              actions: [
                                                                                TextButton(
                                                                                  onPressed: () => Navigator.pop(alertDialogContext),
                                                                                  child: Text('Ok'),
                                                                                ),
                                                                              ],
                                                                            );
                                                                          },
                                                                        );
                                                                        if (_shouldSetState)
                                                                          setState(
                                                                              () {});
                                                                        return;
                                                                      }

                                                                      if (_shouldSetState)
                                                                        setState(
                                                                            () {});
                                                                    },
                                                                    text:
                                                                        'Login',
                                                                    options:
                                                                        FFButtonOptions(
                                                                      width:
                                                                          250.0,
                                                                      height:
                                                                          50.0,
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              0.0),
                                                                      iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary,
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelSmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Work Sans',
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                      elevation:
                                                                          4.0,
                                                                      borderSide:
                                                                          BorderSide(
                                                                        color: Colors
                                                                            .transparent,
                                                                        width:
                                                                            1.0,
                                                                      ),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      12.0,
                                                                      13.0,
                                                                      12.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                'or continue with',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        22.0,
                                                                        0.0,
                                                                        20.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          FFAppState()
                                                                              .updateLoginStatusStruct(
                                                                            (e) => e
                                                                              ..loginwitphNumber = false
                                                                              ..loginwithEmail = true
                                                                              ..signUp = false,
                                                                          );
                                                                          setState(
                                                                              () {});
                                                                        },
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              48.0,
                                                                          height:
                                                                              48.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                Color(0xFFDDE6F0),
                                                                            shape:
                                                                                BoxShape.circle,
                                                                          ),
                                                                          child:
                                                                              Align(
                                                                            alignment:
                                                                                AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Icon(
                                                                              Icons.mail_rounded,
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              size: 24.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                      child:
                                                                          InkWell(
                                                                        splashColor:
                                                                            Colors.transparent,
                                                                        focusColor:
                                                                            Colors.transparent,
                                                                        hoverColor:
                                                                            Colors.transparent,
                                                                        highlightColor:
                                                                            Colors.transparent,
                                                                        onTap:
                                                                            () async {
                                                                          var _shouldSetState =
                                                                              false;
                                                                          if (isWeb) {
                                                                            _model.responseForTabWeb =
                                                                                await actions.googleSignInAction(
                                                                              '893782189869-3v5oafna7fqft6eu1du3fodjbah7oe0f.apps.googleusercontent.com',
                                                                            );
                                                                            _shouldSetState =
                                                                                true;
                                                                            if (_model.responseForTabWeb ==
                                                                                true) {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return AlertDialog(
                                                                                    title: Text('Success'),
                                                                                    content: Text('Log In Credentials are valid'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
                                                                                        child: Text('Ok'),
                                                                                      ),
                                                                                    ],
                                                                                  );
                                                                                },
                                                                              );
                                                                              if (_shouldSetState)
                                                                                setState(() {});
                                                                              return;
                                                                            } else {
                                                                              await showDialog(
                                                                                context: context,
                                                                                builder: (alertDialogContext) {
                                                                                  return AlertDialog(
                                                                                    title: Text('Failed'),
                                                                                    content: Text('Failed to Login'),
                                                                                    actions: [
                                                                                      TextButton(
                                                                                        onPressed: () => Navigator.pop(alertDialogContext),
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
                                                                            if (_shouldSetState)
                                                                              setState(() {});
                                                                            return;
                                                                          }

                                                                          if (_shouldSetState)
                                                                            setState(() {});
                                                                        },
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Google.svg',
                                                                            width:
                                                                                48.0,
                                                                            height:
                                                                                48.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          25.0,
                                                                          0.0),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                        child: SvgPicture
                                                                            .asset(
                                                                          'assets/images/facebook_1.svg',
                                                                          width:
                                                                              48.0,
                                                                          height:
                                                                              48.0,
                                                                          fit: BoxFit
                                                                              .cover,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    ClipRRect(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                      child: SvgPicture
                                                                          .asset(
                                                                        'assets/images/Apple.svg',
                                                                        width:
                                                                            48.0,
                                                                        height:
                                                                            48.0,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  RichText(
                                                                    textScaler:
                                                                        MediaQuery.of(context)
                                                                            .textScaler,
                                                                    text:
                                                                        TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              'If you don’t have an account, please ',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyLarge
                                                                              .override(
                                                                                fontFamily: 'Work Sans',
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                              ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              'Register here',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .labelMedium
                                                                              .override(
                                                                                fontFamily: 'Work Sans',
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.w600,
                                                                                decoration: TextDecoration.underline,
                                                                              ),
                                                                          mouseCursor:
                                                                              SystemMouseCursors.click,
                                                                          recognizer: TapGestureRecognizer()
                                                                            ..onTap = () async {
                                                                              FFAppState().updateLoginStatusStruct(
                                                                                (e) => e
                                                                                  ..signUp = true
                                                                                  ..loginwithEmail = false
                                                                                  ..loginwitphNumber = false,
                                                                              );
                                                                              setState(() {});
                                                                            },
                                                                        )
                                                                      ],
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
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
                                              ],
                                            ),
                                          ),
                                        ),
                                      if (FFAppState().loginStatus.signUp ==
                                          true)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 80.0, 20.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 24.0, 12.0, 16.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Signing Up',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily:
                                                                'Work Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              if (_model.showRegisterApiError1)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 8.0),
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      getJsonField(
                                                        (_model.registerOutputTabWeb
                                                                ?.jsonBody ??
                                                            ''),
                                                        r'''$.message''',
                                                      )?.toString(),
                                                      'Please enter valid details.',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              Container(
                                                width: double.infinity,
                                                height: 1.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                              ),
                                              Form(
                                                key: _model.formKey1,
                                                autovalidateMode:
                                                    AutovalidateMode.disabled,
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 20.0,
                                                          12.0, 0.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: RichText(
                                                            textScaler:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      'First name',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                TextSpan(
                                                                  text: '*',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .errorText,
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        TextFormField(
                                                          controller: _model
                                                              .newFirstNameSignwebTextController,
                                                          focusNode: _model
                                                              .newFirstNameSignwebFocusNode,
                                                          onChanged: (_) =>
                                                              EasyDebounce
                                                                  .debounce(
                                                            '_model.newFirstNameSignwebTextController',
                                                            Duration(
                                                                milliseconds:
                                                                    2000),
                                                            () async {
                                                              setState(() {});
                                                            },
                                                          ),
                                                          autofocus: false,
                                                          textCapitalization:
                                                              TextCapitalization
                                                                  .words,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .next,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: false,
                                                            errorStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .errorText,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .errorText,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        14.0,
                                                                        0.0,
                                                                        14.0,
                                                                        0.0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          maxLength: 25,
                                                          maxLengthEnforcement:
                                                              MaxLengthEnforcement
                                                                  .enforced,
                                                          buildCounter: (context,
                                                                  {required currentLength,
                                                                  required isFocused,
                                                                  maxLength}) =>
                                                              null,
                                                          keyboardType:
                                                              TextInputType
                                                                  .name,
                                                          cursorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          validator: _model
                                                              .newFirstNameSignwebTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      16.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: RichText(
                                                            textScaler:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      'Last name',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                TextSpan(
                                                                  text: '*',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .errorText,
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        TextFormField(
                                                          controller: _model
                                                              .newLastNameSignwebTextController,
                                                          focusNode: _model
                                                              .newLastNameSignwebFocusNode,
                                                          autofocus: false,
                                                          textCapitalization:
                                                              TextCapitalization
                                                                  .words,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .next,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: false,
                                                            errorStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .errorText,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .errorText,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        14.0,
                                                                        0.0,
                                                                        14.0,
                                                                        0.0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          maxLength: 25,
                                                          maxLengthEnforcement:
                                                              MaxLengthEnforcement
                                                                  .enforced,
                                                          buildCounter: (context,
                                                                  {required currentLength,
                                                                  required isFocused,
                                                                  maxLength}) =>
                                                              null,
                                                          keyboardType:
                                                              TextInputType
                                                                  .name,
                                                          cursorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          validator: _model
                                                              .newLastNameSignwebTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      16.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: RichText(
                                                            textScaler:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      'DOB (DD-MM-YYYY)',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                TextSpan(
                                                                  text: '*',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .errorText,
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          height: 50.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                            border: Border.all(
                                                              color: _model
                                                                      .showBirthdayError1
                                                                  ? FlutterFlowTheme.of(
                                                                          context)
                                                                      .errorText
                                                                  : FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        14.0,
                                                                        0.0,
                                                                        7.0,
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
                                                                final _datePickedDate =
                                                                    await showDatePicker(
                                                                  context:
                                                                      context,
                                                                  initialDate: (functions
                                                                          .getPastDate() ??
                                                                      DateTime
                                                                          .now()),
                                                                  firstDate:
                                                                      DateTime(
                                                                          1900),
                                                                  lastDate: (functions
                                                                          .getPastDate() ??
                                                                      DateTime
                                                                          .now()),
                                                                );

                                                                if (_datePickedDate !=
                                                                    null) {
                                                                  safeSetState(
                                                                      () {
                                                                    _model.datePicked =
                                                                        DateTime(
                                                                      _datePickedDate
                                                                          .year,
                                                                      _datePickedDate
                                                                          .month,
                                                                      _datePickedDate
                                                                          .day,
                                                                    );
                                                                  });
                                                                }
                                                                FFAppState()
                                                                        .dob =
                                                                    _model
                                                                        .datePicked;
                                                                setState(() {});
                                                              },
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child: Text(
                                                                      dateTimeFormat(
                                                                          'dd-MM-yyyy',
                                                                          _model
                                                                              .datePicked),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  Icon(
                                                                    Icons
                                                                        .date_range_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    size: 24.0,
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        if (valueOrDefault<
                                                            bool>(
                                                          _model
                                                              .showBirthdayError1,
                                                          true,
                                                        ))
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        14.0,
                                                                        8.0,
                                                                        0.0,
                                                                        8.0),
                                                            child: Text(
                                                              'Birthday is required.',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      16.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: RichText(
                                                            textScaler:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      'Mobile number',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                TextSpan(
                                                                  text: '*',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .errorText,
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        TextFormField(
                                                          controller: _model
                                                              .newMobileNumberSignWebTextController,
                                                          focusNode: _model
                                                              .newMobileNumberSignWebFocusNode,
                                                          autofocus: false,
                                                          textInputAction:
                                                              TextInputAction
                                                                  .next,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: false,
                                                            errorStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .errorText,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .errorText,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        14.0,
                                                                        0.0,
                                                                        14.0,
                                                                        0.0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          maxLength: 15,
                                                          maxLengthEnforcement:
                                                              MaxLengthEnforcement
                                                                  .enforced,
                                                          buildCounter: (context,
                                                                  {required currentLength,
                                                                  required isFocused,
                                                                  maxLength}) =>
                                                              null,
                                                          keyboardType:
                                                              TextInputType
                                                                  .number,
                                                          cursorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          validator: _model
                                                              .newMobileNumberSignWebTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                          inputFormatters: [
                                                            FilteringTextInputFormatter
                                                                .allow(RegExp(
                                                                    '[0-9]'))
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      16.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: RichText(
                                                            textScaler:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text: 'Email',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                TextSpan(
                                                                  text: '*',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .errorText,
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        TextFormField(
                                                          controller: _model
                                                              .newEmailSignWebTextController,
                                                          focusNode: _model
                                                              .newEmailSignWebFocusNode,
                                                          autofocus: false,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            isDense: false,
                                                            errorStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .errorText,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .errorText,
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12.0),
                                                            ),
                                                            contentPadding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        14.0,
                                                                        0.0,
                                                                        14.0,
                                                                        0.0),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                          textAlign:
                                                              TextAlign.start,
                                                          maxLength: 50,
                                                          maxLengthEnforcement:
                                                              MaxLengthEnforcement
                                                                  .enforced,
                                                          buildCounter: (context,
                                                                  {required currentLength,
                                                                  required isFocused,
                                                                  maxLength}) =>
                                                              null,
                                                          keyboardType:
                                                              TextInputType
                                                                  .emailAddress,
                                                          cursorColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .primaryText,
                                                          validator: _model
                                                              .newEmailSignWebTextControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      16.0,
                                                                      0.0,
                                                                      8.0),
                                                          child: RichText(
                                                            textScaler:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      'Residential details',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .titleSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                      ),
                                                                ),
                                                                TextSpan(
                                                                  text: '*',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .errorText,
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          'Pincode',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Work Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      8.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: TextFormField(
                                                            controller: _model
                                                                .newpincodeSignWebTextController,
                                                            focusNode: _model
                                                                .newpincodeSignWebFocusNode,
                                                            onChanged: (_) =>
                                                                EasyDebounce
                                                                    .debounce(
                                                              '_model.newpincodeSignWebTextController',
                                                              Duration(
                                                                  milliseconds:
                                                                      2000),
                                                              () async {
                                                                var _shouldSetState =
                                                                    false;
                                                                setState(() {
                                                                  _model
                                                                      .newlocalitySignWebValueController
                                                                      ?.reset();
                                                                });
                                                                setState(() {
                                                                  _model
                                                                      .newCountrySignWebTextController
                                                                      ?.clear();
                                                                  _model
                                                                      .newStateSignWebTextController
                                                                      ?.clear();
                                                                  _model
                                                                      .newCityTownSignWebTextController
                                                                      ?.clear();
                                                                  _model
                                                                      .newLocalitySignWebTextController
                                                                      ?.clear();
                                                                  _model
                                                                      .streetSignWebTextController
                                                                      ?.clear();
                                                                });
                                                                _model.pincodeResponseSignUpTabWeb =
                                                                    await GetDataFromPinCodeCall
                                                                        .call(
                                                                  address: _model
                                                                      .newpincodeSignWebTextController
                                                                      .text,
                                                                  key: FFAppConstants
                                                                      .googleApiKeyforPInCodeedonttouch,
                                                                );

                                                                _shouldSetState =
                                                                    true;
                                                                if (GetDataFromPinCodeCall
                                                                        .status(
                                                                      (_model.pincodeResponseSignUpTabWeb
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    ) ==
                                                                    'OK') {
                                                                  setState(() {
                                                                    _model.newCountrySignWebTextController
                                                                            ?.text =
                                                                        (GetDataFromPinCodeCall
                                                                            .longNames(
                                                                      (_model.pincodeResponseSignUpTabWeb
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )![GetDataFromPinCodeCall.longNames(
                                                                              (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                            )!
                                                                                .length -
                                                                            1]);
                                                                    _model.newCountrySignWebTextController?.selection = TextSelection.collapsed(
                                                                        offset: _model
                                                                            .newCountrySignWebTextController!
                                                                            .text
                                                                            .length);
                                                                  });
                                                                  setState(() {
                                                                    _model.newStateSignWebTextController
                                                                            ?.text =
                                                                        (GetDataFromPinCodeCall
                                                                            .longNames(
                                                                      (_model.pincodeResponseSignUpTabWeb
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )![GetDataFromPinCodeCall.longNames(
                                                                              (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                            )!
                                                                                .length -
                                                                            2]);
                                                                    _model.newStateSignWebTextController?.selection = TextSelection.collapsed(
                                                                        offset: _model
                                                                            .newStateSignWebTextController!
                                                                            .text
                                                                            .length);
                                                                  });
                                                                  setState(() {
                                                                    _model.newCityTownSignWebTextController
                                                                            ?.text =
                                                                        (GetDataFromPinCodeCall
                                                                            .longNames(
                                                                      (_model.pincodeResponseSignUpTabWeb
                                                                              ?.jsonBody ??
                                                                          ''),
                                                                    )![GetDataFromPinCodeCall.longNames(
                                                                              (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                            )!
                                                                                .length -
                                                                            3]);
                                                                    _model.newCityTownSignWebTextController?.selection = TextSelection.collapsed(
                                                                        offset: _model
                                                                            .newCityTownSignWebTextController!
                                                                            .text
                                                                            .length);
                                                                  });
                                                                  setState(() {
                                                                    _model
                                                                        .newLocalitySignWebTextController
                                                                        ?.text = (GetDataFromPinCodeCall.longNames(
                                                                              (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                            )?.length.toString() ==
                                                                            '5'
                                                                        ? (GetDataFromPinCodeCall.longNames(
                                                                            (_model.pincodeResponseSignUpTabWeb?.jsonBody ??
                                                                                ''),
                                                                          )![GetDataFromPinCodeCall.longNames(
                                                                              (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                            )!
                                                                                .length -
                                                                            4])
                                                                        : '');
                                                                    _model.newLocalitySignWebTextController?.selection = TextSelection.collapsed(
                                                                        offset: _model
                                                                            .newLocalitySignWebTextController!
                                                                            .text
                                                                            .length);
                                                                  });
                                                                  _model
                                                                      .postalCodeLocalities1 = GetDataFromPinCodeCall
                                                                          .postalCodeLocalities(
                                                                    (_model.pincodeResponseSignUpTabWeb
                                                                            ?.jsonBody ??
                                                                        ''),
                                                                  )!
                                                                      .toList()
                                                                      .cast<
                                                                          String>();
                                                                  setState(
                                                                      () {});
                                                                  if (_shouldSetState)
                                                                    setState(
                                                                        () {});
                                                                  return;
                                                                } else {
                                                                  if (_shouldSetState)
                                                                    setState(
                                                                        () {});
                                                                  return;
                                                                }

                                                                if (_shouldSetState)
                                                                  setState(
                                                                      () {});
                                                              },
                                                            ),
                                                            autofocus: false,
                                                            textInputAction:
                                                                TextInputAction
                                                                    .next,
                                                            obscureText: false,
                                                            decoration:
                                                                InputDecoration(
                                                              isDense: false,
                                                              hintText:
                                                                  'Your Pincode',
                                                              hintStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              errorStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .displaySmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                              enabledBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              errorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .errorText,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              focusedErrorBorder:
                                                                  OutlineInputBorder(
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .errorText,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              contentPadding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          14.0,
                                                                          0.0,
                                                                          14.0,
                                                                          0.0),
                                                              suffixIcon: _model
                                                                      .newpincodeSignWebTextController!
                                                                      .text
                                                                      .isNotEmpty
                                                                  ? InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .newpincodeSignWebTextController
                                                                            ?.clear();
                                                                        var _shouldSetState =
                                                                            false;
                                                                        setState(
                                                                            () {
                                                                          _model
                                                                              .newlocalitySignWebValueController
                                                                              ?.reset();
                                                                        });
                                                                        setState(
                                                                            () {
                                                                          _model
                                                                              .newCountrySignWebTextController
                                                                              ?.clear();
                                                                          _model
                                                                              .newStateSignWebTextController
                                                                              ?.clear();
                                                                          _model
                                                                              .newCityTownSignWebTextController
                                                                              ?.clear();
                                                                          _model
                                                                              .newLocalitySignWebTextController
                                                                              ?.clear();
                                                                          _model
                                                                              .streetSignWebTextController
                                                                              ?.clear();
                                                                        });
                                                                        _model.pincodeResponseSignUpTabWeb =
                                                                            await GetDataFromPinCodeCall.call(
                                                                          address: _model
                                                                              .newpincodeSignWebTextController
                                                                              .text,
                                                                          key: FFAppConstants
                                                                              .googleApiKeyforPInCodeedonttouch,
                                                                        );

                                                                        _shouldSetState =
                                                                            true;
                                                                        if (GetDataFromPinCodeCall.status(
                                                                              (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                            ) ==
                                                                            'OK') {
                                                                          setState(
                                                                              () {
                                                                            _model.newCountrySignWebTextController?.text = (GetDataFromPinCodeCall.longNames(
                                                                              (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                            )![GetDataFromPinCodeCall.longNames(
                                                                                  (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                                )!
                                                                                    .length -
                                                                                1]);
                                                                            _model.newCountrySignWebTextController?.selection =
                                                                                TextSelection.collapsed(offset: _model.newCountrySignWebTextController!.text.length);
                                                                          });
                                                                          setState(
                                                                              () {
                                                                            _model.newStateSignWebTextController?.text = (GetDataFromPinCodeCall.longNames(
                                                                              (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                            )![GetDataFromPinCodeCall.longNames(
                                                                                  (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                                )!
                                                                                    .length -
                                                                                2]);
                                                                            _model.newStateSignWebTextController?.selection =
                                                                                TextSelection.collapsed(offset: _model.newStateSignWebTextController!.text.length);
                                                                          });
                                                                          setState(
                                                                              () {
                                                                            _model.newCityTownSignWebTextController?.text = (GetDataFromPinCodeCall.longNames(
                                                                              (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                            )![GetDataFromPinCodeCall.longNames(
                                                                                  (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                                )!
                                                                                    .length -
                                                                                3]);
                                                                            _model.newCityTownSignWebTextController?.selection =
                                                                                TextSelection.collapsed(offset: _model.newCityTownSignWebTextController!.text.length);
                                                                          });
                                                                          setState(
                                                                              () {
                                                                            _model.newLocalitySignWebTextController?.text = (GetDataFromPinCodeCall.longNames(
                                                                                      (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                                    )?.length.toString() ==
                                                                                    '5'
                                                                                ? (GetDataFromPinCodeCall.longNames(
                                                                                    (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                                  )![GetDataFromPinCodeCall.longNames(
                                                                                      (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                                    )!
                                                                                        .length -
                                                                                    4])
                                                                                : '');
                                                                            _model.newLocalitySignWebTextController?.selection =
                                                                                TextSelection.collapsed(offset: _model.newLocalitySignWebTextController!.text.length);
                                                                          });
                                                                          _model
                                                                              .postalCodeLocalities1 = GetDataFromPinCodeCall.postalCodeLocalities(
                                                                            (_model.pincodeResponseSignUpTabWeb?.jsonBody ??
                                                                                ''),
                                                                          )!
                                                                              .toList()
                                                                              .cast<String>();
                                                                          setState(
                                                                              () {});
                                                                          if (_shouldSetState)
                                                                            setState(() {});
                                                                          return;
                                                                        } else {
                                                                          if (_shouldSetState)
                                                                            setState(() {});
                                                                          return;
                                                                        }

                                                                        if (_shouldSetState)
                                                                          setState(
                                                                              () {});
                                                                        setState(
                                                                            () {});
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .clear,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            18.0,
                                                                      ),
                                                                    )
                                                                  : null,
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Work Sans',
                                                                  fontSize:
                                                                      16.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                            textAlign:
                                                                TextAlign.start,
                                                            maxLength: 10,
                                                            maxLengthEnforcement:
                                                                MaxLengthEnforcement
                                                                    .none,
                                                            buildCounter: (context,
                                                                    {required currentLength,
                                                                    required isFocused,
                                                                    maxLength}) =>
                                                                null,
                                                            keyboardType:
                                                                TextInputType
                                                                    .number,
                                                            cursorColor:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryText,
                                                            validator: _model
                                                                .newpincodeSignWebTextControllerValidator
                                                                .asValidator(
                                                                    context),
                                                            inputFormatters: [
                                                              FilteringTextInputFormatter
                                                                  .allow(RegExp(
                                                                      '[0-9]'))
                                                            ],
                                                          ),
                                                        ),
                                                        if (GetDataFromPinCodeCall
                                                                .status(
                                                              (_model.pincodeResponseSignUpTabWeb
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) ==
                                                            'ZERO_RESULTS')
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        8.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Pin code is not valid.',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .displaySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        if (GetDataFromPinCodeCall
                                                                .status(
                                                              (_model.pincodeResponseSignUpTabWeb
                                                                      ?.jsonBody ??
                                                                  ''),
                                                            ) ==
                                                            'OK')
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        8.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Country',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          16.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .newCountrySignWebTextController,
                                                                    focusNode:
                                                                        _model
                                                                            .newCountrySignWebFocusNode,
                                                                    autofocus:
                                                                        false,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .next,
                                                                    readOnly:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          false,
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).errorText,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).errorText,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          14.0,
                                                                          0.0,
                                                                          14.0,
                                                                          0.0),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    maxLength:
                                                                        10,
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
                                                                        .newCountrySignWebTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'State',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          16.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .newStateSignWebTextController,
                                                                    focusNode:
                                                                        _model
                                                                            .newStateSignWebFocusNode,
                                                                    autofocus:
                                                                        false,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .next,
                                                                    readOnly:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          false,
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).errorText,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).errorText,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          14.0,
                                                                          0.0,
                                                                          14.0,
                                                                          0.0),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    maxLength:
                                                                        10,
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
                                                                        .newStateSignWebTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'City/Town',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          16.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .newCityTownSignWebTextController,
                                                                    focusNode:
                                                                        _model
                                                                            .newCityTownSignWebFocusNode,
                                                                    autofocus:
                                                                        false,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .next,
                                                                    readOnly:
                                                                        true,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          false,
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).errorText,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).errorText,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          14.0,
                                                                          0.0,
                                                                          14.0,
                                                                          0.0),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    cursorColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    validator: _model
                                                                        .newCityTownSignWebTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                                Text(
                                                                  'Locality',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                if ((_model.pincodeResponseSignUpTabWeb !=
                                                                        null) &&
                                                                    (GetDataFromPinCodeCall.postalCodeLocalities(
                                                                              (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                            )?.length.toString() !=
                                                                            null &&
                                                                        GetDataFromPinCodeCall.postalCodeLocalities(
                                                                              (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                            )?.length.toString() !=
                                                                            ''))
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            16.0),
                                                                    child: FlutterFlowDropDown<
                                                                        String>(
                                                                      controller: _model
                                                                          .newlocalitySignWebValueController ??= FormFieldController<
                                                                              String>(
                                                                          null),
                                                                      options:
                                                                          _model
                                                                              .postalCodeLocalities1,
                                                                      onChanged:
                                                                          (val) =>
                                                                              setState(() => _model.newlocalitySignWebValue = val),
                                                                      height:
                                                                          50.0,
                                                                      searchHintTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Work Sans',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      searchTextStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      textStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      hintText:
                                                                          'Select Locality',
                                                                      searchHintText:
                                                                          'Search your locality',
                                                                      icon:
                                                                          Icon(
                                                                        Icons
                                                                            .keyboard_arrow_down_rounded,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        size:
                                                                            24.0,
                                                                      ),
                                                                      elevation:
                                                                          2.0,
                                                                      borderColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                      borderWidth:
                                                                          1.0,
                                                                      borderRadius:
                                                                          12.0,
                                                                      margin: EdgeInsetsDirectional.fromSTEB(
                                                                          16.0,
                                                                          4.0,
                                                                          16.0,
                                                                          4.0),
                                                                      hidesUnderline:
                                                                          true,
                                                                      isOverButton:
                                                                          false,
                                                                      isSearchable:
                                                                          true,
                                                                      isMultiSelect:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                if (GetDataFromPinCodeCall
                                                                                .postalCodeLocalities(
                                                                          (_model.pincodeResponseSignUpTabWeb?.jsonBody ??
                                                                              ''),
                                                                        )
                                                                            ?.length
                                                                            .toString() ==
                                                                        null ||
                                                                    GetDataFromPinCodeCall
                                                                            .postalCodeLocalities(
                                                                          (_model.pincodeResponseSignUpTabWeb?.jsonBody ??
                                                                              ''),
                                                                        )?.length.toString() ==
                                                                        '')
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            16.0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .newLocalitySignWebTextController,
                                                                      focusNode:
                                                                          _model
                                                                              .newLocalitySignWebFocusNode,
                                                                      autofocus:
                                                                          false,
                                                                      textInputAction:
                                                                          TextInputAction
                                                                              .next,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        isDense:
                                                                            false,
                                                                        hintText:
                                                                            'Enter Locality',
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Work Sans',
                                                                              fontSize: 14.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        errorStyle: FlutterFlowTheme.of(context)
                                                                            .displaySmall
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        enabledBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        focusedBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        errorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).errorText,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        focusedErrorBorder:
                                                                            OutlineInputBorder(
                                                                          borderSide:
                                                                              BorderSide(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).errorText,
                                                                            width:
                                                                                1.0,
                                                                          ),
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                            14.0,
                                                                            0.0,
                                                                            14.0,
                                                                            0.0),
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      cursorColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .primaryText,
                                                                      validator: _model
                                                                          .newLocalitySignWebTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                Text(
                                                                  'Street',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          16.0),
                                                                  child:
                                                                      TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .streetSignWebTextController,
                                                                    focusNode:
                                                                        _model
                                                                            .streetSignWebFocusNode,
                                                                    autofocus:
                                                                        false,
                                                                    textInputAction:
                                                                        TextInputAction
                                                                            .next,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      isDense:
                                                                          false,
                                                                      hintText:
                                                                          'Enter your Street Address',
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Work Sans',
                                                                            fontSize:
                                                                                14.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      errorStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .displaySmall
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).errorText,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).errorText,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      contentPadding: EdgeInsetsDirectional.fromSTEB(
                                                                          14.0,
                                                                          0.0,
                                                                          14.0,
                                                                          0.0),
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textAlign:
                                                                        TextAlign
                                                                            .start,
                                                                    cursorColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                    validator: _model
                                                                        .streetSignWebTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      16.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: RichText(
                                                            textScaler:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      'By clicking “Agree and continue,” you agree to the apartment booking ',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      'terms and conditions.',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                  mouseCursor:
                                                                      SystemMouseCursors
                                                                          .click,
                                                                  recognizer:
                                                                      TapGestureRecognizer()
                                                                        ..onTap =
                                                                            () async {
                                                                          FFAppState().TermsAndConditions =
                                                                              TermsAndConditionsStruct(
                                                                            articleName:
                                                                                FFAppConstants.terms,
                                                                          );
                                                                          setState(
                                                                              () {});

                                                                          context
                                                                              .goNamed(
                                                                            'terms_and_conditions',
                                                                            extra: <String,
                                                                                dynamic>{
                                                                              kTransitionInfoKey: TransitionInfo(
                                                                                hasTransition: true,
                                                                                transitionType: PageTransitionType.fade,
                                                                                duration: Duration(milliseconds: 0),
                                                                              ),
                                                                            },
                                                                          );
                                                                        },
                                                                )
                                                              ],
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Work Sans',
                                                                    letterSpacing:
                                                                        0.0,
                                                                    lineHeight:
                                                                        1.5,
                                                                  ),
                                                            ),
                                                          ),
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          child: Builder(
                                                            builder:
                                                                (context) =>
                                                                    Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          30.0,
                                                                          0.0,
                                                                          20.0),
                                                              child:
                                                                  FFButtonWidget(
                                                                onPressed:
                                                                    () async {
                                                                  var _shouldSetState =
                                                                      false;
                                                                  if (FFAppState()
                                                                          .dob !=
                                                                      null) {
                                                                    _model.showBirthdayError1 =
                                                                        false;
                                                                    setState(
                                                                        () {});
                                                                  } else {
                                                                    _model.showBirthdayError1 =
                                                                        true;
                                                                    setState(
                                                                        () {});
                                                                    if (_model.formKey1.currentState ==
                                                                            null ||
                                                                        !_model
                                                                            .formKey1
                                                                            .currentState!
                                                                            .validate()) {
                                                                      return;
                                                                    }
                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                    return;
                                                                  }

                                                                  if (_model.formKey1
                                                                              .currentState ==
                                                                          null ||
                                                                      !_model
                                                                          .formKey1
                                                                          .currentState!
                                                                          .validate()) {
                                                                    return;
                                                                  }
                                                                  if ((GetDataFromPinCodeCall
                                                                                  .postalCodeLocalities(
                                                                                (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                              ) !=
                                                                              null &&
                                                                          (GetDataFromPinCodeCall
                                                                                  .postalCodeLocalities(
                                                                            (_model.pincodeResponseSignUpTabWeb?.jsonBody ??
                                                                                ''),
                                                                          ))!
                                                                              .isNotEmpty) &&
                                                                      (_model.newlocalitySignWebValue ==
                                                                              null ||
                                                                          _model.newlocalitySignWebValue ==
                                                                              '')) {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Info'),
                                                                          content:
                                                                              Text('Select locality from dropdown.'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                    return;
                                                                  } else if (!(GetDataFromPinCodeCall
                                                                                  .postalCodeLocalities(
                                                                                (_model.pincodeResponseSignUpTabWeb?.jsonBody ?? ''),
                                                                              ) !=
                                                                              null &&
                                                                          (GetDataFromPinCodeCall
                                                                                  .postalCodeLocalities(
                                                                            (_model.pincodeResponseSignUpTabWeb?.jsonBody ??
                                                                                ''),
                                                                          ))!
                                                                              .isNotEmpty) &&
                                                                      (_model.newLocalitySignWebTextController.text ==
                                                                              null ||
                                                                          _model.newLocalitySignWebTextController.text ==
                                                                              '')) {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Info'),
                                                                          content:
                                                                              Text('Enter your locality.'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                    return;
                                                                  } else if (GetDataFromPinCodeCall
                                                                          .status(
                                                                        (_model.pincodeResponseSignUpTabWeb?.jsonBody ??
                                                                            ''),
                                                                      ) ==
                                                                      'ZERO_RESULTS') {
                                                                    await showDialog(
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (alertDialogContext) {
                                                                        return AlertDialog(
                                                                          title:
                                                                              Text('Info'),
                                                                          content:
                                                                              Text('Enter valid pincode.'),
                                                                          actions: [
                                                                            TextButton(
                                                                              onPressed: () => Navigator.pop(alertDialogContext),
                                                                              child: Text('Ok'),
                                                                            ),
                                                                          ],
                                                                        );
                                                                      },
                                                                    );
                                                                    if (_shouldSetState)
                                                                      setState(
                                                                          () {});
                                                                    return;
                                                                  } else {
                                                                    _model.registerOutputTabWeb =
                                                                        await RegistrationAPICall
                                                                            .call(
                                                                      firstName: _model
                                                                          .newFirstNameSignwebTextController
                                                                          .text,
                                                                      lastName: _model
                                                                          .newLastNameSignwebTextController
                                                                          .text,
                                                                      dateOfBirth:
                                                                          valueOrDefault<
                                                                              String>(
                                                                        dateTimeFormat(
                                                                            'dd-MM-yyyy',
                                                                            FFAppState().dob),
                                                                        '13-12-2013',
                                                                      ),
                                                                      phoneNumber:
                                                                          '+91${_model.newMobileNumberSignWebTextController.text}',
                                                                      emailAddress: _model
                                                                          .newEmailSignWebTextController
                                                                          .text,
                                                                      tAndC:
                                                                          true,
                                                                      pincode: _model
                                                                          .newpincodeSignWebTextController
                                                                          .text,
                                                                      country: _model
                                                                          .newCountrySignWebTextController
                                                                          .text,
                                                                      state: _model
                                                                          .newStateSignWebTextController
                                                                          .text,
                                                                      city: _model
                                                                          .newCityTownSignWebTextController
                                                                          .text,
                                                                      locality: _model.newlocalitySignWebValue != null &&
                                                                              _model.newlocalitySignWebValue !=
                                                                                  ''
                                                                          ? _model
                                                                              .newlocalitySignWebValue
                                                                          : _model
                                                                              .newLocalitySignWebTextController
                                                                              .text,
                                                                      street: _model
                                                                          .streetSignWebTextController
                                                                          .text,
                                                                    );

                                                                    _shouldSetState =
                                                                        true;
                                                                    if ((_model
                                                                            .registerOutputTabWeb
                                                                            ?.succeeded ??
                                                                        true)) {
                                                                      setState(
                                                                          () {
                                                                        _model
                                                                            .newFirstNameSignwebTextController
                                                                            ?.clear();
                                                                        _model
                                                                            .newLastNameSignwebTextController
                                                                            ?.clear();
                                                                        _model
                                                                            .newMobileNumberSignWebTextController
                                                                            ?.clear();
                                                                        _model
                                                                            .newEmailSignWebTextController
                                                                            ?.clear();
                                                                        _model
                                                                            .newpincodeSignWebTextController
                                                                            ?.clear();
                                                                        _model
                                                                            .newCountrySignWebTextController
                                                                            ?.clear();
                                                                        _model
                                                                            .newStateSignWebTextController
                                                                            ?.clear();
                                                                        _model
                                                                            .newCityTownSignWebTextController
                                                                            ?.clear();
                                                                        _model
                                                                            .newLocalitySignWebTextController
                                                                            ?.clear();
                                                                        _model
                                                                            .streetSignWebTextController
                                                                            ?.clear();
                                                                      });
                                                                      if (MediaQuery.sizeOf(context)
                                                                              .width <
                                                                          991.0) {
                                                                        Navigator.pop(
                                                                            context);
                                                                        await showModalBottomSheet(
                                                                          isScrollControlled:
                                                                              true,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          enableDrag:
                                                                              false,
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (context) {
                                                                            return Padding(
                                                                              padding: MediaQuery.viewInsetsOf(context),
                                                                              child: RegisterSuccessWidget(),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            safeSetState(() {}));

                                                                        if (_shouldSetState)
                                                                          setState(
                                                                              () {});
                                                                        return;
                                                                      } else {
                                                                        Navigator.pop(
                                                                            context);
                                                                        await showDialog(
                                                                          barrierColor:
                                                                              Color(0xCC000D3E),
                                                                          context:
                                                                              context,
                                                                          builder:
                                                                              (dialogContext) {
                                                                            return Dialog(
                                                                              elevation: 0,
                                                                              insetPadding: EdgeInsets.zero,
                                                                              backgroundColor: Colors.transparent,
                                                                              alignment: AlignmentDirectional(0.0, -1.0).resolve(Directionality.of(context)),
                                                                              child: Container(
                                                                                height: MediaQuery.sizeOf(context).height * 0.5,
                                                                                width: MediaQuery.sizeOf(context).width * 0.3,
                                                                                child: RegisterSuccessWidget(),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ).then((value) =>
                                                                            setState(() {}));

                                                                        if (_shouldSetState)
                                                                          setState(
                                                                              () {});
                                                                        return;
                                                                      }
                                                                    } else {
                                                                      if ((_model.registerOutputTabWeb?.statusCode ??
                                                                              200) ==
                                                                          200) {
                                                                        _model.showRegisterApiError1 =
                                                                            false;
                                                                        setState(
                                                                            () {});
                                                                        if (_shouldSetState)
                                                                          setState(
                                                                              () {});
                                                                        return;
                                                                      } else {
                                                                        _model.showRegisterApiError1 =
                                                                            true;
                                                                        setState(
                                                                            () {});
                                                                        if (_shouldSetState)
                                                                          setState(
                                                                              () {});
                                                                        return;
                                                                      }
                                                                    }
                                                                  }

                                                                  if (_shouldSetState)
                                                                    setState(
                                                                        () {});
                                                                },
                                                                text:
                                                                    'Agree and continue',
                                                                options:
                                                                    FFButtonOptions(
                                                                  width: 250.0,
                                                                  height: 50.0,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              0.0),
                                                                  iconPadding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  textStyle: FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelSmall
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                  elevation:
                                                                      4.0,
                                                                  borderSide:
                                                                      BorderSide(
                                                                    color: Colors
                                                                        .transparent,
                                                                    width: 1.0,
                                                                  ),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
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
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              'Already have an account ? ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Work Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                        ),
                                                        TextSpan(
                                                          text: 'Login here',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Work Sans',
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                decoration:
                                                                    TextDecoration
                                                                        .underline,
                                                              ),
                                                          mouseCursor:
                                                              SystemMouseCursors
                                                                  .click,
                                                          recognizer:
                                                              TapGestureRecognizer()
                                                                ..onTap =
                                                                    () async {
                                                                  FFAppState()
                                                                      .updateLoginStatusStruct(
                                                                    (e) => e
                                                                      ..loginwitphNumber =
                                                                          false
                                                                      ..loginwithEmail =
                                                                          true
                                                                      ..signUp =
                                                                          false,
                                                                  );
                                                                  setState(
                                                                      () {});
                                                                },
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      if (FFAppState()
                                              .loginStatus
                                              .forgotPassword ==
                                          true)
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 80.0, 20.0, 20.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 24.0, 12.0, 24.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      'Forgot Password',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .titleMedium
                                                          .override(
                                                            fontFamily:
                                                                'Work Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              if (_model.showForgotApiError1)
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          12.0, 0.0, 0.0, 8.0),
                                                  child: Text(
                                                    getJsonField(
                                                      (_model.forgotPswOutput1
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.message''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              'Work Sans',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              Container(
                                                width: double.infinity,
                                                height: 1.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                              ),
                                              Form(
                                                key: _model.formKey2,
                                                autovalidateMode:
                                                    AutovalidateMode.disabled,
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(12.0, 22.0,
                                                          12.0, 22.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Please enter your email id, we will send a new password to your email.',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 14.0,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    8.0),
                                                        child: RichText(
                                                          textScaler:
                                                              MediaQuery.of(
                                                                      context)
                                                                  .textScaler,
                                                          text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                text:
                                                                    'Enter your email',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              ),
                                                              TextSpan(
                                                                text: '*',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .errorText,
                                                                  fontSize:
                                                                      14.0,
                                                                ),
                                                              )
                                                            ],
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Work Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      TextFormField(
                                                        controller: _model
                                                            .emailTextFieldTextController2,
                                                        focusNode: _model
                                                            .emailTextFieldFocusNode2,
                                                        autofocus: false,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          isDense: false,
                                                          errorStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryBackground,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .errorText,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .errorText,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12.0),
                                                          ),
                                                          contentPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      14.0,
                                                                      0.0,
                                                                      14.0,
                                                                      0.0),
                                                        ),
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 14.0,
                                                        ),
                                                        textAlign:
                                                            TextAlign.start,
                                                        maxLength: 50,
                                                        maxLengthEnforcement:
                                                            MaxLengthEnforcement
                                                                .enforced,
                                                        buildCounter: (context,
                                                                {required currentLength,
                                                                required isFocused,
                                                                maxLength}) =>
                                                            null,
                                                        keyboardType:
                                                            TextInputType
                                                                .emailAddress,
                                                        cursorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        validator: _model
                                                            .emailTextFieldTextController2Validator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: Builder(
                                                          builder: (context) =>
                                                              Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        30.0,
                                                                        0.0,
                                                                        0.0),
                                                            child:
                                                                FFButtonWidget(
                                                              onPressed:
                                                                  () async {
                                                                if (_model.formKey2
                                                                            .currentState ==
                                                                        null ||
                                                                    !_model
                                                                        .formKey2
                                                                        .currentState!
                                                                        .validate()) {
                                                                  return;
                                                                }
                                                                _model.forgotPswOutput1 =
                                                                    await ForgotPasswordAPICall
                                                                        .call(
                                                                  emailAddress:
                                                                      _model
                                                                          .emailTextFieldTextController2
                                                                          .text,
                                                                );

                                                                if ((_model
                                                                        .forgotPswOutput1
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  if (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width <
                                                                      991.0) {
                                                                    Navigator.pop(
                                                                        context);
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Colors
                                                                              .transparent,
                                                                      enableDrag:
                                                                          false,
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return Padding(
                                                                          padding:
                                                                              MediaQuery.viewInsetsOf(context),
                                                                          child:
                                                                              ForgotPasswordSuccessWidget(),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        safeSetState(
                                                                            () {}));
                                                                  } else {
                                                                    Navigator.pop(
                                                                        context);
                                                                    await showDialog(
                                                                      barrierColor:
                                                                          Color(
                                                                              0xCC000D3E),
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (dialogContext) {
                                                                        return Dialog(
                                                                          elevation:
                                                                              0,
                                                                          insetPadding:
                                                                              EdgeInsets.zero,
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          alignment:
                                                                              AlignmentDirectional(0.0, -1.0).resolve(Directionality.of(context)),
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                MediaQuery.sizeOf(context).height * 0.6,
                                                                            width:
                                                                                MediaQuery.sizeOf(context).width * 0.3,
                                                                            child:
                                                                                ForgotPasswordSuccessWidget(),
                                                                          ),
                                                                        );
                                                                      },
                                                                    ).then((value) =>
                                                                        setState(
                                                                            () {}));
                                                                  }
                                                                } else {
                                                                  ScaffoldMessenger.of(
                                                                          context)
                                                                      .showSnackBar(
                                                                    SnackBar(
                                                                      content:
                                                                          Text(
                                                                        getJsonField(
                                                                          (_model.forgotPswOutput1?.jsonBody ??
                                                                              ''),
                                                                          r'''$.message''',
                                                                        ).toString(),
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).errorText,
                                                                        ),
                                                                      ),
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              4000),
                                                                      backgroundColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBgOpacity,
                                                                    ),
                                                                  );
                                                                  if ((_model.forgotPswOutput1
                                                                              ?.statusCode ??
                                                                          200) ==
                                                                      200) {
                                                                    _model.showForgotApiError1 =
                                                                        false;
                                                                    setState(
                                                                        () {});
                                                                  } else {
                                                                    _model.showForgotApiError1 =
                                                                        true;
                                                                    setState(
                                                                        () {});
                                                                  }
                                                                }

                                                                setState(() {});
                                                              },
                                                              text: 'Send',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: double
                                                                    .infinity,
                                                                height: 36.0,
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            0.0),
                                                                iconPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Work Sans',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                                elevation: 4.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: Colors
                                                                      .transparent,
                                                                  width: 1.0,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    22.0,
                                                                    12.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                width: 152.0,
                                                                height: 1.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10.0,
                                                                          0.0,
                                                                          10.0,
                                                                          0.0),
                                                              child: Text(
                                                                'OR',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      12.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                width: 152.0,
                                                                height: 1.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    12.0,
                                                                    22.0,
                                                                    12.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
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
                                                                FFAppState()
                                                                    .updateLoginStatusStruct(
                                                                  (e) => e
                                                                    ..loginwitphNumber =
                                                                        false
                                                                    ..loginwithEmail =
                                                                        true
                                                                    ..signUp =
                                                                        false,
                                                                );
                                                                setState(() {});
                                                              },
                                                              child: Text(
                                                                'Login?',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      16.0,
                                                                  decoration:
                                                                      TextDecoration
                                                                          .underline,
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
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
