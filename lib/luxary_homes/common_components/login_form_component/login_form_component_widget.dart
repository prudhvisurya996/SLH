import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/forgot_password_component/forgot_password_component_widget.dart';
import '/luxary_homes/common_components/phone_login_component/phone_login_component_widget.dart';
import '/luxary_homes/common_components/register_component/register_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_form_component_model.dart';
export 'login_form_component_model.dart';

class LoginFormComponentWidget extends StatefulWidget {
  const LoginFormComponentWidget({super.key});

  @override
  State<LoginFormComponentWidget> createState() =>
      _LoginFormComponentWidgetState();
}

class _LoginFormComponentWidgetState extends State<LoginFormComponentWidget> {
  late LoginFormComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginFormComponentModel());

    _model.emailTextFieldTextController ??= TextEditingController();
    _model.emailTextFieldFocusNode ??= FocusNode();

    _model.passwordTextFieldTextController ??= TextEditingController();
    _model.passwordTextFieldFocusNode ??= FocusNode();

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
                      fontFamily: 'Poppins',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 20.0, 12.0, 20.0),
                  child: Form(
                    key: _model.formKey,
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
                              controller: _model.emailTextFieldTextController,
                              focusNode: _model.emailTextFieldFocusNode,
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
                                    color:
                                        FlutterFlowTheme.of(context).errorText,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).errorText,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
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
                                  .emailTextFieldTextControllerValidator
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
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Password',
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
                                if (_model.formKey.currentState == null ||
                                    !_model.formKey.currentState!.validate()) {
                                  return;
                                }
                                _model.authTokenOutputCopy =
                                    await AuthTokenAPICall.call(
                                  clientId: FFAppConstants.clientId,
                                  clientSecret: FFAppConstants.clientSecret,
                                  grantType: FFAppConstants.grantType,
                                  username:
                                      _model.emailTextFieldTextController.text,
                                  password: _model
                                      .passwordTextFieldTextController.text,
                                );
                                _shouldSetState = true;
                                if ((_model.authTokenOutputCopy?.succeeded ??
                                    true)) {
                                  setState(() {
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
                                  });
                                  _model.userDetailsOuputCopy =
                                      await LiferayBaseUrlGroup
                                          .userDetailsAPICall
                                          .call(
                                    accessToken: FFAppState().accessToken,
                                  );
                                  _shouldSetState = true;
                                  if ((_model.userDetailsOuputCopy?.succeeded ??
                                      true)) {
                                    setState(() {
                                      FFAppState().searchCity = '';
                                      FFAppState().searchDates = [];
                                      FFAppState().searchGuests = 0;
                                      FFAppState().searchLocality = '';
                                      FFAppState().priceMin = 500.0;
                                      FFAppState().priceMax = 99999.0;
                                      FFAppState().userFilterPropertyType = [];
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
                                    });
                                    if (MediaQuery.sizeOf(context).width <
                                        991.0) {
                                      Navigator.pop(context);
                                    } else {
                                      Navigator.pop(context);
                                    }

                                    context.goNamed(
                                      'ExplorePage',
                                      extra: <String, dynamic>{
                                        kTransitionInfoKey: TransitionInfo(
                                          hasTransition: true,
                                          transitionType:
                                              PageTransitionType.fade,
                                          duration: Duration(milliseconds: 0),
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
                                  if ((_model.authTokenOutputCopy?.statusCode ??
                                          200) ==
                                      200) {
                                    setState(() {
                                      _model.showLoginApiError = false;
                                    });
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    setState(() {
                                      _model.showLoginApiError = true;
                                    });
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }
                                }

                                if (_shouldSetState) setState(() {});
                              },
                              autofocus: false,
                              obscureText: !_model.passwordTextFieldVisibility,
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
                                    color:
                                        FlutterFlowTheme.of(context).errorText,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).errorText,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    14.0, 0.0, 14.0, 0.0),
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => _model.passwordTextFieldVisibility =
                                        !_model.passwordTextFieldVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.passwordTextFieldVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: FlutterFlowTheme.of(context).primary,
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
                                          padding:
                                              MediaQuery.viewInsetsOf(context),
                                          child: ForgotPasswordComponentWidget(
                                            email: _model
                                                .emailTextFieldTextController
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
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, -1.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.3,
                                            child:
                                                ForgotPasswordComponentWidget(
                                              email: _model
                                                  .emailTextFieldTextController
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
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        decoration: TextDecoration.underline,
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        var _shouldSetState = false;
                        if (_model.formKey.currentState == null ||
                            !_model.formKey.currentState!.validate()) {
                          return;
                        }
                        _model.authTokenOutput = await AuthTokenAPICall.call(
                          clientId: FFAppConstants.clientId,
                          clientSecret: FFAppConstants.clientSecret,
                          grantType: FFAppConstants.grantType,
                          username: _model.emailTextFieldTextController.text,
                          password: _model.passwordTextFieldTextController.text,
                        );
                        _shouldSetState = true;
                        if ((_model.authTokenOutput?.succeeded ?? true)) {
                          setState(() {
                            FFAppState().accessToken = getJsonField(
                              (_model.authTokenOutput?.jsonBody ?? ''),
                              r'''$.access_token''',
                            ).toString();
                            FFAppState().refreshToken = getJsonField(
                              (_model.authTokenOutput?.jsonBody ?? ''),
                              r'''$.refresh_token''',
                            ).toString();
                          });
                          _model.userDetailsOuput =
                              await LiferayBaseUrlGroup.userDetailsAPICall.call(
                            accessToken: FFAppState().accessToken,
                          );
                          _shouldSetState = true;
                          if ((_model.userDetailsOuput?.succeeded ?? true)) {
                            setState(() {
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
                              );
                            });
                            if (MediaQuery.sizeOf(context).width < 991.0) {
                              Navigator.pop(context);

                              context.pushNamed('HomePage');

                              if (_shouldSetState) setState(() {});
                              return;
                            } else {
                              Navigator.pop(context);

                              context.goNamed(
                                'ExplorePage',
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
                            setState(() {
                              _model.showLoginApiError = false;
                            });
                            if (_shouldSetState) setState(() {});
                            return;
                          } else {
                            setState(() {
                              _model.showLoginApiError = true;
                            });
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
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).labelSmall.override(
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
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(12.0, 13.0, 12.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: Text(
                          'or continue with',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 16.0,
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
                                                0.9,
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.3,
                                            child: PhoneLoginComponentWidget(),
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 25.0, 0.0, 30.0),
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
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  TextSpan(
                                    text: 'Create Account',
                                    style: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Poppins',
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
                                                          0.7,
                                                  child:
                                                      RegisterComponentWidget(),
                                                ),
                                              );
                                            },
                                          ).then(
                                              (value) => safeSetState(() {}));
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
                                                  child:
                                                      RegisterComponentWidget(),
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
          ),
        ),
      ],
    );
  }
}
