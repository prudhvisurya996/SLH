import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/users/feedback_submit/feedback_submit_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'feedback_form_model.dart';
export 'feedback_form_model.dart';

class FeedbackFormWidget extends StatefulWidget {
  const FeedbackFormWidget({
    super.key,
    required this.bookingId,
    required this.propertyId,
  });

  final String? bookingId;
  final int? propertyId;

  @override
  State<FeedbackFormWidget> createState() => _FeedbackFormWidgetState();
}

class _FeedbackFormWidgetState extends State<FeedbackFormWidget> {
  late FeedbackFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedbackFormModel());

    _model.fBDescriptionTextFieldTextController ??= TextEditingController();
    _model.fBDescriptionTextFieldFocusNode ??= FocusNode();

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
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 8.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Feedback',
                  style: GoogleFonts.getFont(
                    'Work Sans',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontWeight: FontWeight.w600,
                    fontSize: 24.0,
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
          Divider(
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 8.0, 0.0),
            child: Form(
              key: _model.formKey,
              autovalidateMode: AutovalidateMode.disabled,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                    child: RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Rating ',
                            style: GoogleFonts.getFont(
                              'Work Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                            ),
                          ),
                          TextSpan(
                            text: '*',
                            style: TextStyle(
                              color: Color(0xFFD70000),
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          )
                        ],
                        style: TextStyle(),
                      ),
                    ),
                  ),
                  RatingBar.builder(
                    onRatingUpdate: (newValue) =>
                        setState(() => _model.ratingBarValue = newValue),
                    itemBuilder: (context, index) => Icon(
                      Icons.star_rounded,
                      color: Color(0xFFFFCC6A),
                    ),
                    direction: Axis.horizontal,
                    initialRating: _model.ratingBarValue ??= 0.0,
                    unratedColor: Color(0xFF979797),
                    itemCount: 5,
                    itemSize: 32.0,
                    glowColor: Color(0xFFFFCC6A),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Description',
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18.0,
                                ),
                              ),
                              TextSpan(
                                text: '*',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: Color(0xFFD70000),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                              )
                            ],
                            style: TextStyle(),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              6.0, 0.0, 0.0, 0.0),
                          child: Text(
                            '(500 characters)',
                            style: GoogleFonts.getFont(
                              'Work Sans',
                              color: Color(0x7F000D3E),
                              fontWeight: FontWeight.w500,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextFormField(
                    controller: _model.fBDescriptionTextFieldTextController,
                    focusNode: _model.fBDescriptionTextFieldFocusNode,
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
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
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
                          14.0, 10.0, 14.0, 10.0),
                    ),
                    style: GoogleFonts.getFont(
                      'Work Sans',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 14.0,
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
                    validator: _model
                        .fBDescriptionTextFieldTextControllerValidator
                        .asValidator(context),
                  ),
                ],
              ),
            ),
          ),
          Builder(
            builder: (context) => Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 12.0),
              child: FFButtonWidget(
                onPressed: () async {
                  var _shouldSetState = false;
                  if (_model.ratingBarValue! > 0.0) {
                    if (_model.formKey.currentState == null ||
                        !_model.formKey.currentState!.validate()) {
                      return;
                    }
                    _model.submitRatingReviewResponse =
                        await LiferayBaseUrlGroup.submitRatingReviewCall.call(
                      bookingId: widget.bookingId,
                      propertyId: widget.propertyId,
                      rating: _model.ratingBarValue,
                      comment: _model.fBDescriptionTextFieldTextController.text,
                      accessToken: FFAppState().accessToken,
                    );

                    _shouldSetState = true;
                    if ((_model.submitRatingReviewResponse?.succeeded ??
                        true)) {
                      if (MediaQuery.sizeOf(context).width < 600.0) {
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
                              padding: MediaQuery.viewInsetsOf(context),
                              child: FeedbackSubmitWidget(
                                propertyId: widget.propertyId!,
                              ),
                            );
                          },
                        ).then((value) => safeSetState(() {}));

                        if (_shouldSetState) setState(() {});
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
                              alignment: AlignmentDirectional(0.0, -1.0)
                                  .resolve(Directionality.of(context)),
                              child: Container(
                                height: MediaQuery.sizeOf(context).height * 0.8,
                                width: MediaQuery.sizeOf(context).width * 0.3,
                                child: FeedbackSubmitWidget(
                                  propertyId: widget.propertyId!,
                                ),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));

                        if (_shouldSetState) setState(() {});
                        return;
                      }
                    } else {
                      await showDialog(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('Error'),
                            content: Text(getJsonField(
                              (_model.submitRatingReviewResponse?.jsonBody ??
                                  ''),
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
                  } else {
                    await actions.toastAction(
                      context,
                      'Alert',
                      FlutterFlowTheme.of(context).warning,
                      'Rating is required!',
                    );
                    if (_shouldSetState) setState(() {});
                    return;
                  }

                  if (_shouldSetState) setState(() {});
                },
                text: 'Submit',
                options: FFButtonOptions(
                  height: 36.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primary,
                  textStyle: GoogleFonts.getFont(
                    'Work Sans',
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
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
