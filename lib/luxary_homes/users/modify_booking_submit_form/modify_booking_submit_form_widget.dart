import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'modify_booking_submit_form_model.dart';
export 'modify_booking_submit_form_model.dart';

class ModifyBookingSubmitFormWidget extends StatefulWidget {
  const ModifyBookingSubmitFormWidget({super.key});

  @override
  State<ModifyBookingSubmitFormWidget> createState() =>
      _ModifyBookingSubmitFormWidgetState();
}

class _ModifyBookingSubmitFormWidgetState
    extends State<ModifyBookingSubmitFormWidget> {
  late ModifyBookingSubmitFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ModifyBookingSubmitFormModel());

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
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
            child: Text(
              'your Booking modification has been updated\nPlease kindly check your email.',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 14.0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 20.0),
            child: FFButtonWidget(
              onPressed: () async {
                context.pushNamed('trips_page');
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
