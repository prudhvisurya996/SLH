import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'w_request_submit_form_model.dart';
export 'w_request_submit_form_model.dart';

class WRequestSubmitFormWidget extends StatefulWidget {
  const WRequestSubmitFormWidget({super.key});

  @override
  State<WRequestSubmitFormWidget> createState() =>
      _WRequestSubmitFormWidgetState();
}

class _WRequestSubmitFormWidgetState extends State<WRequestSubmitFormWidget> {
  late WRequestSubmitFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WRequestSubmitFormModel());

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
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Lottie.asset(
          'assets/lottie_animations/registration_success_lottie.json',
          width: 180.0,
          height: 220.0,
          fit: BoxFit.contain,
          animate: true,
        ),
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
            child: Text(
              'Congrats!',
              style: GoogleFonts.getFont(
                'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
            child: Text(
              'Your request sent Successfully',
              style: GoogleFonts.getFont(
                'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
                fontWeight: FontWeight.normal,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
