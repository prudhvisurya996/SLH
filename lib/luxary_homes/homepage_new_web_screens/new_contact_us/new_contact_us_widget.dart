import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'new_contact_us_model.dart';
export 'new_contact_us_model.dart';

class NewContactUsWidget extends StatefulWidget {
  const NewContactUsWidget({super.key});

  @override
  State<NewContactUsWidget> createState() => _NewContactUsWidgetState();
}

class _NewContactUsWidgetState extends State<NewContactUsWidget>
    with TickerProviderStateMixin {
  late NewContactUsModel _model;

  final animationsMap = <String, AnimationInfo>{};

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewContactUsModel());

    _model.fullNameTextFieldTextController ??= TextEditingController();
    _model.fullNameTextFieldFocusNode ??= FocusNode();

    _model.mobileTextFieldTextController ??= TextEditingController();
    _model.mobileTextFieldFocusNode ??= FocusNode();

    _model.emailTextFieldTextController ??= TextEditingController();
    _model.emailTextFieldFocusNode ??= FocusNode();

    _model.titleTextFieldTextController ??= TextEditingController();
    _model.titleTextFieldFocusNode ??= FocusNode();

    _model.descriptionTextFieldTextController ??= TextEditingController();
    _model.descriptionTextFieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'imageOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 1000.0.ms,
            begin: 0.0,
            end: 0.5,
          ),
        ],
      ),
    });

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 25.0),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.3,
        height: MediaQuery.sizeOf(context).height * 0.7,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 4.0,
              color: Color(0x33000000),
              offset: Offset(
                0.0,
                2.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                      child: GradientText(
                        'We are glad to support you.',
                        style: GoogleFonts.getFont(
                          'Work Sans',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.w500,
                          fontSize: 20.0,
                        ),
                        colors: [
                          FlutterFlowTheme.of(context).primary,
                          Color(0xFFA51FF6)
                        ],
                        gradientDirection: GradientDirection.ltr,
                        gradientType: GradientType.linear,
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.clear_sharp,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 24.0,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 0.0, 11.0),
                child: RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Will get back to you with in 24hours',
                        style: GoogleFonts.getFont(
                          'Work Sans',
                          fontSize: 16.0,
                        ),
                      )
                    ],
                    style: GoogleFonts.getFont(
                      'Work Sans',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 8.0),
                child: RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'You can read ',
                        style: GoogleFonts.getFont(
                          'Work Sans',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                        ),
                      ),
                      TextSpan(
                        text: 'FAQ here !',
                        style: GoogleFonts.getFont(
                          'Work Sans',
                          color: FlutterFlowTheme.of(context).primary,
                          fontWeight: FontWeight.w600,
                          fontSize: 16.0,
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
              Flexible(
                child: Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            child: TextFormField(
                              controller:
                                  _model.fullNameTextFieldTextController,
                              focusNode: _model.fullNameTextFieldFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
                                labelText: 'Full Name',
                                labelStyle: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16.0,
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
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
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
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model
                                  .fullNameTextFieldTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 15.0, 20.0, 0.0),
                            child: TextFormField(
                              controller: _model.mobileTextFieldTextController,
                              focusNode: _model.mobileTextFieldFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
                                labelText: 'Mobile Number',
                                labelStyle: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16.0,
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
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
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
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model
                                  .mobileTextFieldTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 15.0, 20.0, 0.0),
                            child: TextFormField(
                              controller: _model.emailTextFieldTextController,
                              focusNode: _model.emailTextFieldFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
                                labelText: 'Email',
                                labelStyle: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16.0,
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
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
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
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model
                                  .emailTextFieldTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 15.0, 20.0, 0.0),
                            child: TextFormField(
                              controller: _model.titleTextFieldTextController,
                              focusNode: _model.titleTextFieldFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
                                labelText: 'Title',
                                labelStyle: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16.0,
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
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
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
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model
                                  .titleTextFieldTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 15.0, 20.0, 0.0),
                            child: TextFormField(
                              controller:
                                  _model.descriptionTextFieldTextController,
                              focusNode: _model.descriptionTextFieldFocusNode,
                              autofocus: false,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
                                labelText: 'Description',
                                labelStyle: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16.0,
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
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    14.0, 15.0, 14.0, 0.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                              textAlign: TextAlign.start,
                              maxLines: 5,
                              maxLength: 2500,
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
                                  .descriptionTextFieldTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 14.0, 20.0, 0.0),
                            child: Container(
                              width: 302.0,
                              height: 90.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF9F9F9),
                                borderRadius: BorderRadius.circular(5.0),
                                border: Border.all(
                                  color: Color(0xFFD3D3D3),
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Theme(
                                          data: ThemeData(
                                            checkboxTheme: CheckboxThemeData(
                                              visualDensity:
                                                  VisualDensity.compact,
                                              materialTapTargetSize:
                                                  MaterialTapTargetSize
                                                      .shrinkWrap,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(4.0),
                                              ),
                                            ),
                                            unselectedWidgetColor:
                                                Color(0xFFC1C1C1),
                                          ),
                                          child: Checkbox(
                                            value: _model.checkboxValue ??=
                                                false,
                                            onChanged: (newValue) async {
                                              setState(() => _model
                                                  .checkboxValue = newValue!);
                                              if (newValue!) {
                                                _model.captcha = true;
                                                setState(() {});
                                              } else {
                                                _model.captcha = false;
                                                setState(() {});
                                              }
                                            },
                                            side: BorderSide(
                                              width: 2,
                                              color: Color(0xFFC1C1C1),
                                            ),
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            checkColor:
                                                FlutterFlowTheme.of(context)
                                                    .info,
                                          ),
                                        ),
                                        Text(
                                          'I’m not a robot',
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/Icon.png',
                                            width: 32.0,
                                            height: 32.0,
                                            fit: BoxFit.contain,
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'imageOnPageLoadAnimation']!),
                                        Text(
                                          'reCAPTCHA',
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                            color: Color(0xFF555555),
                                            fontSize: 10.0,
                                          ),
                                        ),
                                        Text(
                                          'Privacy - terms',
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                            color: Color(0xFF555555),
                                            fontSize: 10.0,
                                          ),
                                        ),
                                      ],
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
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () async {
                        var _shouldSetState = false;
                        if (_model.formKey.currentState == null ||
                            !_model.formKey.currentState!.validate()) {
                          return;
                        }
                        if (_model.captcha == true) {
                          _model.contactUsRefreshTokenOutput =
                              await RefreshTokenAPICall.call(
                            clientId: FFAppConstants.clientId,
                            clientSecret: FFAppConstants.clientSecret,
                            grantType: FFAppConstants.refreshGrantType,
                            refreshToken: FFAppState().refreshToken,
                          );

                          _shouldSetState = true;
                          if ((_model.contactUsRefreshTokenOutput?.succeeded ??
                              true)) {
                            FFAppState().accessToken = getJsonField(
                              (_model.contactUsRefreshTokenOutput?.jsonBody ??
                                  ''),
                              r'''$.access_token''',
                            ).toString();
                            FFAppState().refreshToken = getJsonField(
                              (_model.contactUsRefreshTokenOutput?.jsonBody ??
                                  ''),
                              r'''$.refresh_token''',
                            ).toString();
                            setState(() {});
                            _model.contactusOutput =
                                await LiferayBaseUrlGroup.contactUsAPICall.call(
                              accessToken: FFAppState().accessToken,
                              fullName:
                                  '${FFAppState().userData.firstName} ${FFAppState().userData.lastName}',
                              mobileNumber: FFAppState().userData.phoneNumber,
                              emailAddress: FFAppState().userData.emailAddress,
                              title: _model.titleTextFieldTextController.text,
                              description: _model
                                  .descriptionTextFieldTextController.text,
                            );

                            _shouldSetState = true;
                            if ((_model.contactusOutput?.succeeded ?? true)) {
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
                                  (_model.contactusOutput?.jsonBody ?? ''),
                                  r'''$.message''',
                                ).toString(),
                              );
                              setState(() {
                                _model.fullNameTextFieldTextController?.clear();
                                _model.mobileTextFieldTextController?.clear();
                                _model.titleTextFieldTextController?.clear();
                                _model.descriptionTextFieldTextController
                                    ?.clear();
                                _model.emailTextFieldTextController?.clear();
                              });
                              setState(() {
                                _model.checkboxValue = false;
                              });
                              if (_shouldSetState) setState(() {});
                              return;
                            } else {
                              await actions.toastAction(
                                context,
                                FFAppConstants.error,
                                FlutterFlowTheme.of(context).errorText,
                                getJsonField(
                                  (_model.contactusOutput?.jsonBody ?? ''),
                                  r'''$.message''',
                                ).toString(),
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
                            FFAppState().refreshToken = '';
                            FFAppState().accessToken = '';
                            FFAppState().update(() {});

                            context.goNamed('home_page');

                            await showDialog(
                              context: context,
                              builder: (alertDialogContext) {
                                return AlertDialog(
                                  title: Text('Info'),
                                  content: Text('Success!'),
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
                                title: Text('Info'),
                                content: Text('Please Select Captcha!'),
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
                      text: 'Submit',
                      options: FFButtonOptions(
                        width: 250.0,
                        height: 40.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
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
