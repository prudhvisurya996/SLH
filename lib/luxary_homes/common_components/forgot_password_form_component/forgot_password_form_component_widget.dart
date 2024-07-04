import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/forgot_psw_success_component/forgot_psw_success_component_widget.dart';
import '/luxary_homes/common_components/login_component/login_component_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'forgot_password_form_component_model.dart';
export 'forgot_password_form_component_model.dart';

class ForgotPasswordFormComponentWidget extends StatefulWidget {
  const ForgotPasswordFormComponentWidget({super.key});

  @override
  State<ForgotPasswordFormComponentWidget> createState() =>
      _ForgotPasswordFormComponentWidgetState();
}

class _ForgotPasswordFormComponentWidgetState
    extends State<ForgotPasswordFormComponentWidget> {
  late ForgotPasswordFormComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPasswordFormComponentModel());

    _model.emailTextFieldTextController ??= TextEditingController();
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 24.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Forgot Password',
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
                    fillColor: Color(0x4DBBD1EA),
                    icon: Icon(
                      Icons.close_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 20.0,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        if (_model.showForgotApiError)
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 8.0),
            child: Text(
              getJsonField(
                (_model.forgotPswOutput?.jsonBody ?? ''),
                r'''$.message''',
              ).toString(),
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
        Form(
          key: _model.formKey,
          autovalidateMode: AutovalidateMode.disabled,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 22.0, 12.0, 22.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Please enter your email id, we will send a new password to your email.',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontWeight: FontWeight.w600,
                    fontSize: 14.0,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 8.0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Enter your email',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
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
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
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
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 14.0, 0.0),
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
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Builder(
                    builder: (context) => Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          _model.forgotPswOutput =
                              await ForgotPasswordAPICall.call(
                            emailAddress:
                                _model.emailTextFieldTextController.text,
                          );
                          if ((_model.forgotPswOutput?.succeeded ?? true)) {
                            if (MediaQuery.sizeOf(context).width < 991.0) {
                              Navigator.pop(context);
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: ForgotPswSuccessComponentWidget(),
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
                                    alignment: AlignmentDirectional(0.0, -1.0)
                                        .resolve(Directionality.of(context)),
                                    child: Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.6,
                                      width: MediaQuery.sizeOf(context).width *
                                          0.3,
                                      child: ForgotPswSuccessComponentWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  getJsonField(
                                    (_model.forgotPswOutput?.jsonBody ?? ''),
                                    r'''$.message''',
                                  ).toString(),
                                  style: TextStyle(
                                    color:
                                        FlutterFlowTheme.of(context).errorText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor: FlutterFlowTheme.of(context)
                                    .secondaryBgOpacity,
                              ),
                            );
                            if ((_model.forgotPswOutput?.statusCode ?? 200) ==
                                200) {
                              setState(() {
                                _model.showForgotApiError = false;
                              });
                            } else {
                              setState(() {
                                _model.showForgotApiError = true;
                              });
                            }
                          }

                          setState(() {});
                        },
                        text: 'Send',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 36.0,
                          padding: EdgeInsets.all(0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
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
                          'OR',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
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
                                enableDrag: false,
                                useSafeArea: true,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: LoginComponentWidget(),
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
                                    alignment: AlignmentDirectional(0.0, -1.0)
                                        .resolve(Directionality.of(context)),
                                    child: Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.3,
                                      child: LoginComponentWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            }
                          },
                          child: Text(
                            'Login?',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
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
      ],
    );
  }
}
