import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'contact_us_form_component_model.dart';
export 'contact_us_form_component_model.dart';

class ContactUsFormComponentWidget extends StatefulWidget {
  const ContactUsFormComponentWidget({super.key});

  @override
  State<ContactUsFormComponentWidget> createState() =>
      _ContactUsFormComponentWidgetState();
}

class _ContactUsFormComponentWidgetState
    extends State<ContactUsFormComponentWidget> {
  late ContactUsFormComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactUsFormComponentModel());

    _model.fullNameTextFieldTextController ??= TextEditingController(
        text:
            '${FFAppState().userData.firstName} ${FFAppState().userData.lastName}');
    _model.fullNameTextFieldFocusNode ??= FocusNode();

    _model.emailTextFieldTextController ??=
        TextEditingController(text: FFAppState().userData.emailAddress);
    _model.emailTextFieldFocusNode ??= FocusNode();

    _model.mobileNumberTextFieldTextController ??= TextEditingController(
        text: functions.removeCountryCode(FFAppState().userData.phoneNumber));
    _model.mobileNumberTextFieldFocusNode ??= FocusNode();

    _model.titleTextFieldTextController ??= TextEditingController();
    _model.titleTextFieldFocusNode ??= FocusNode();

    _model.descriptionTextFieldTextController ??= TextEditingController();
    _model.descriptionTextFieldFocusNode ??= FocusNode();

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
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Contact us',
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 12.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 8.0),
                              child: Text(
                                'Full Name',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            TextFormField(
                              controller:
                                  _model.fullNameTextFieldTextController,
                              focusNode: _model.fullNameTextFieldFocusNode,
                              autofocus: false,
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
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
                                filled: true,
                                fillColor: Color(0x32878787),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 8.0),
                              child: Text(
                                'Email',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 14.0,
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
                                filled: true,
                                fillColor: Color(0x32878787),
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
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 8.0),
                              child: Text(
                                'Mobile Number',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                            TextFormField(
                              controller:
                                  _model.mobileNumberTextFieldTextController,
                              focusNode: _model.mobileNumberTextFieldFocusNode,
                              autofocus: false,
                              readOnly: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
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
                                filled: true,
                                fillColor: Color(0x32878787),
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
                                  .mobileNumberTextFieldTextControllerValidator
                                  .asValidator(context),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 8.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Title',
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
                              controller: _model.titleTextFieldTextController,
                              focusNode: _model.titleTextFieldFocusNode,
                              autofocus: false,
                              textCapitalization: TextCapitalization.words,
                              textInputAction: TextInputAction.next,
                              obscureText: false,
                              decoration: InputDecoration(
                                isDense: false,
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
                              maxLength: 100,
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
                                  .titleTextFieldTextControllerValidator
                                  .asValidator(context),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 10.0, 0.0, 8.0),
                              child: RichText(
                                textScaler: MediaQuery.of(context).textScaler,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Description',
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
                                  _model.descriptionTextFieldTextController,
                              focusNode: _model.descriptionTextFieldFocusNode,
                              autofocus: false,
                              textCapitalization: TextCapitalization.sentences,
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
                                contentPadding: EdgeInsets.all(10.0),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                              textAlign: TextAlign.start,
                              maxLines: 8,
                              minLines: 6,
                              maxLength: 500,
                              maxLengthEnforcement:
                                  MaxLengthEnforcement.enforced,
                              cursorColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              validator: _model
                                  .descriptionTextFieldTextControllerValidator
                                  .asValidator(context),
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
                    child: FFButtonWidget(
                      onPressed: () async {
                        var _shouldSetState = false;
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
                          _model.contactusOutput =
                              await LiferayBaseUrlGroup.contactUsAPICall.call(
                            accessToken: FFAppState().accessToken,
                            fullName:
                                '${FFAppState().userData.firstName} ${FFAppState().userData.lastName}',
                            mobileNumber: FFAppState().userData.phoneNumber,
                            emailAddress: FFAppState().userData.emailAddress,
                            title: _model.titleTextFieldTextController.text,
                            description:
                                _model.descriptionTextFieldTextController.text,
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

                        if (_shouldSetState) setState(() {});
                      },
                      text: 'Submit',
                      options: FFButtonOptions(
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
