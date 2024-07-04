import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/portfolio_manager/reject_submit/reject_submit_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reject_form_model.dart';
export 'reject_form_model.dart';

class RejectFormWidget extends StatefulWidget {
  const RejectFormWidget({
    super.key,
    required this.propertyId,
    required this.propertyStatus,
  });

  final int? propertyId;
  final int? propertyStatus;

  @override
  State<RejectFormWidget> createState() => _RejectFormWidgetState();
}

class _RejectFormWidgetState extends State<RejectFormWidget> {
  late RejectFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RejectFormModel());

    _model.cRTextFieldTextController ??= TextEditingController();
    _model.cRTextFieldFocusNode ??= FocusNode();

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
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Reason for Reject',
                  style: GoogleFonts.getFont(
                    'Poppins',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
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
          Divider(
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          Form(
            key: _model.formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 6.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Description',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Text(
                          '*',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: Color(0xFFD70000),
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                        child: Text(
                          '(500 characters)',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: Color(0x7F000D3E),
                            fontWeight: FontWeight.w500,
                            fontSize: 10.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                TextFormField(
                  controller: _model.cRTextFieldTextController,
                  focusNode: _model.cRTextFieldFocusNode,
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
                        EdgeInsetsDirectional.fromSTEB(14.0, 10.0, 14.0, 10.0),
                  ),
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Poppins',
                        letterSpacing: 0.0,
                      ),
                  textAlign: TextAlign.start,
                  maxLines: null,
                  maxLength: 500,
                  maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  buildCounter: (context,
                          {required currentLength,
                          required isFocused,
                          maxLength}) =>
                      null,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator: _model.cRTextFieldTextControllerValidator
                      .asValidator(context),
                ),
              ],
            ),
          ),
          Builder(
            builder: (context) => Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  var _shouldSetState = false;
                  if (_model.formKey.currentState == null ||
                      !_model.formKey.currentState!.validate()) {
                    return;
                  }
                  _model.changePropertyStatusReject = await LiferayBaseUrlGroup
                      .changePropertyStatusByPMCall
                      .call(
                    propertyId: widget.propertyId,
                    status: 0,
                    comments: _model.cRTextFieldTextController.text,
                    accessToken: FFAppState().accessToken,
                  );

                  _shouldSetState = true;
                  if ((_model.changePropertyStatusReject?.succeeded ?? true)) {
                    Navigator.pop(context);
                    Navigator.pop(context);
                    await showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (dialogContext) {
                        return Dialog(
                          elevation: 0,
                          insetPadding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          alignment: AlignmentDirectional(0.0, -1.0)
                              .resolve(Directionality.of(context)),
                          child: RejectSubmitWidget(
                            message: getJsonField(
                              (_model.changePropertyStatusReject?.jsonBody ??
                                  ''),
                              r'''$.message''',
                            ).toString(),
                          ),
                        );
                      },
                    ).then((value) => setState(() {}));

                    if (_shouldSetState) setState(() {});
                    return;
                  } else {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          title: Text('Error'),
                          content: Text(getJsonField(
                            (_model.changePropertyStatusReject?.jsonBody ?? ''),
                            r'''$.message''',
                          ).toString()),
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
                text: 'Reject',
                options: FFButtonOptions(
                  height: 36.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFFD70000),
                  textStyle: FlutterFlowTheme.of(context).labelSmall.override(
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
        ],
      ),
    );
  }
}
