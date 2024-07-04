import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'feedback_submit_form_model.dart';
export 'feedback_submit_form_model.dart';

class FeedbackSubmitFormWidget extends StatefulWidget {
  const FeedbackSubmitFormWidget({
    super.key,
    required this.propertyId,
  });

  final int? propertyId;

  @override
  State<FeedbackSubmitFormWidget> createState() =>
      _FeedbackSubmitFormWidgetState();
}

class _FeedbackSubmitFormWidgetState extends State<FeedbackSubmitFormWidget> {
  late FeedbackSubmitFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FeedbackSubmitFormModel());

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
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Lottie.asset(
              'assets/lottie_animations/registration_success_lottie.json',
              width: 337.0,
              height: 280.0,
              fit: BoxFit.cover,
              animate: true,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
            child: Text(
              'Congrats!',
              style: GoogleFonts.getFont(
                'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 14.0,
              ),
            ),
          ),
          Text(
            'Your feedback submitted successfully',
            style: GoogleFonts.getFont(
              'Poppins',
              color: FlutterFlowTheme.of(context).primaryText,
              fontWeight: FontWeight.normal,
              fontSize: 14.0,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 20.0),
            child: FFButtonWidget(
              onPressed: () async {
                FFAppState().PropertyDetailsPage = PropertyDetailsPageStruct(
                  propertyId: widget.propertyId,
                );
                FFAppState().updateSyncFisionCalendarDatesStruct(
                  (e) => e
                    ..blockedDates = null
                    ..partialBookedDates = null,
                );
                setState(() {});

                context.goNamed(
                  'property_details',
                  queryParameters: {
                    'id': serializeParam(
                      null,
                      ParamType.JSON,
                    ),
                    'index': serializeParam(
                      0,
                      ParamType.int,
                    ),
                  }.withoutNulls,
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
                  'Poppins',
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
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
        ],
      ),
    );
  }
}
