import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'change_password_form_component_model.dart';
export 'change_password_form_component_model.dart';

class ChangePasswordFormComponentWidget extends StatefulWidget {
  const ChangePasswordFormComponentWidget({super.key});

  @override
  State<ChangePasswordFormComponentWidget> createState() =>
      _ChangePasswordFormComponentWidgetState();
}

class _ChangePasswordFormComponentWidgetState
    extends State<ChangePasswordFormComponentWidget> {
  late ChangePasswordFormComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChangePasswordFormComponentModel());

    _model.passwordTextFieldTextController ??= TextEditingController();
    _model.passwordTextFieldFocusNode ??= FocusNode();

    _model.newPasswordTextFieldTextController ??= TextEditingController();
    _model.newPasswordTextFieldFocusNode ??= FocusNode();

    _model.confirmNewPasswordTextFieldTextController ??=
        TextEditingController();
    _model.confirmNewPasswordTextFieldFocusNode ??= FocusNode();

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
                'Change Password',
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
                  (_model.changePasswordOutput?.jsonBody ?? ''),
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
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                child: Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 10.0),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Current Password',
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
                            controller: _model.passwordTextFieldTextController,
                            focusNode: _model.passwordTextFieldFocusNode,
                            autofocus: false,
                            textInputAction: TextInputAction.next,
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
                                  size: 22.0,
                                ),
                              ),
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
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .passwordTextFieldTextControllerValidator
                                .asValidator(context),
                          ),
                          if (_model.showOldPasswordError)
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    14.0, 8.0, 0.0, 8.0),
                                child: Text(
                                  'Old & new passwords should not same.',
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ),
                            ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 10.0),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'New Password',
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
                                _model.newPasswordTextFieldTextController,
                            focusNode: _model.newPasswordTextFieldFocusNode,
                            autofocus: false,
                            textInputAction: TextInputAction.next,
                            obscureText: !_model.newPasswordTextFieldVisibility,
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
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => _model.newPasswordTextFieldVisibility =
                                      !_model.newPasswordTextFieldVisibility,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  _model.newPasswordTextFieldVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 22.0,
                                ),
                              ),
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
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .newPasswordTextFieldTextControllerValidator
                                .asValidator(context),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 10.0),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Confirm New Password',
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
                            controller: _model
                                .confirmNewPasswordTextFieldTextController,
                            focusNode:
                                _model.confirmNewPasswordTextFieldFocusNode,
                            autofocus: false,
                            textInputAction: TextInputAction.done,
                            obscureText:
                                !_model.confirmNewPasswordTextFieldVisibility,
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
                              suffixIcon: InkWell(
                                onTap: () => setState(
                                  () => _model
                                          .confirmNewPasswordTextFieldVisibility =
                                      !_model
                                          .confirmNewPasswordTextFieldVisibility,
                                ),
                                focusNode: FocusNode(skipTraversal: true),
                                child: Icon(
                                  _model.confirmNewPasswordTextFieldVisibility
                                      ? Icons.visibility_outlined
                                      : Icons.visibility_off_outlined,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 22.0,
                                ),
                              ),
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
                            cursorColor:
                                FlutterFlowTheme.of(context).primaryText,
                            validator: _model
                                .confirmNewPasswordTextFieldTextControllerValidator
                                .asValidator(context),
                          ),
                          if (_model.showConfirmPasswordError)
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    14.0, 8.0, 0.0, 8.0),
                                child: Text(
                                  'New & confirm passwords should be same.',
                                  style: FlutterFlowTheme.of(context)
                                      .displaySmall
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
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
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
                          if (_model.newPasswordTextFieldTextController.text ==
                                  _model.passwordTextFieldTextController.text
                              ? false
                              : true) {
                            setState(() {
                              _model.showOldPasswordError = false;
                            });
                            if (_model.newPasswordTextFieldTextController
                                        .text ==
                                    _model
                                        .confirmNewPasswordTextFieldTextController
                                        .text
                                ? true
                                : false) {
                              setState(() {
                                _model.showConfirmPasswordError = false;
                              });
                              _model.refreshOutput =
                                  await RefreshTokenAPICall.call(
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
                                _model.changePasswordOutput =
                                    await LiferayBaseUrlGroup
                                        .updatePasswordAPICall
                                        .call(
                                  accessToken: FFAppState().accessToken,
                                  currentPassword: _model
                                      .passwordTextFieldTextController.text,
                                  newPassword: _model
                                      .newPasswordTextFieldTextController.text,
                                  confirmNewPassword: _model
                                      .confirmNewPasswordTextFieldTextController
                                      .text,
                                );
                                _shouldSetState = true;
                                if ((_model.changePasswordOutput?.succeeded ??
                                    true)) {
                                  setState(() {
                                    FFAppState().accessToken = '';
                                    FFAppState().refreshToken = '';
                                  });
                                  await actions.toastAction(
                                    context,
                                    FFAppConstants.success,
                                    FlutterFlowTheme.of(context).success,
                                    getJsonField(
                                      (_model.changePasswordOutput?.jsonBody ??
                                          ''),
                                      r'''$.message''',
                                    ).toString(),
                                  );

                                  context.goNamed(
                                    'HomePage',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                      ),
                                    },
                                  );
                                } else {
                                  if ((_model.changePasswordOutput
                                              ?.statusCode ??
                                          200) ==
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
                                FFAppState().update(() {
                                  FFAppState().refreshToken = '';
                                  FFAppState().accessToken = '';
                                });

                                context.goNamed('HomePage');

                                if (_shouldSetState) setState(() {});
                                return;
                              }
                            } else {
                              setState(() {
                                _model.showConfirmPasswordError = true;
                              });
                            }
                          } else {
                            setState(() {
                              _model.showOldPasswordError = true;
                            });
                          }

                          if (_shouldSetState) setState(() {});
                        },
                        text: 'Change Password',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
