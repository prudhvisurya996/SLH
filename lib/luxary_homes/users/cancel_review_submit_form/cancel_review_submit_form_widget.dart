import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'cancel_review_submit_form_model.dart';
export 'cancel_review_submit_form_model.dart';

class CancelReviewSubmitFormWidget extends StatefulWidget {
  const CancelReviewSubmitFormWidget({
    super.key,
    required this.message,
  });

  final String? message;

  @override
  State<CancelReviewSubmitFormWidget> createState() =>
      _CancelReviewSubmitFormWidgetState();
}

class _CancelReviewSubmitFormWidgetState
    extends State<CancelReviewSubmitFormWidget> {
  late CancelReviewSubmitFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CancelReviewSubmitFormModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Lottie.asset(
            'assets/lottie_animations/registration_success_lottie.json',
            width: 300.0,
            height: 250.0,
            fit: BoxFit.cover,
            animate: true,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Text(
              valueOrDefault<String>(
                widget.message,
                '\"\"',
              ),
              style: GoogleFonts.getFont(
                'Work Sans',
                color: FlutterFlowTheme.of(context).primaryText,
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 20.0),
            child: FFButtonWidget(
              onPressed: () async {
                FFAppState().updateTripsStatusStruct(
                  (e) => e
                    ..cancelled = true
                    ..upComing = null
                    ..completed = null
                    ..inProgress = null,
                );
                setState(() {});

                context.goNamed(
                  'new_trips_page',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
              text: 'Continue',
              options: FFButtonOptions(
                width: double.infinity,
                height: 36.0,
                padding: EdgeInsets.all(0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primary,
                textStyle: GoogleFonts.getFont(
                  'Work Sans',
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.0,
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
        ],
      ),
    );
  }
}
