import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'p_i_assign_success_form_model.dart';
export 'p_i_assign_success_form_model.dart';

class PIAssignSuccessFormWidget extends StatefulWidget {
  const PIAssignSuccessFormWidget({super.key});

  @override
  State<PIAssignSuccessFormWidget> createState() =>
      _PIAssignSuccessFormWidgetState();
}

class _PIAssignSuccessFormWidgetState extends State<PIAssignSuccessFormWidget> {
  late PIAssignSuccessFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PIAssignSuccessFormModel());

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
      padding: EdgeInsetsDirectional.fromSTEB(12.0, 16.0, 12.0, 16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Align(
            alignment: AlignmentDirectional(1.0, -1.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 20.0,
              borderWidth: 1.0,
              buttonSize: 40.0,
              fillColor: FlutterFlowTheme.of(context).secondaryBackground,
              icon: Icon(
                Icons.clear_sharp,
                color: FlutterFlowTheme.of(context).primary,
                size: 24.0,
              ),
              onPressed: () async {
                Navigator.pop(context);

                context.pushNamed(
                  'Admin_Dashboard',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                      duration: Duration(milliseconds: 0),
                    ),
                  },
                );
              },
            ),
          ),
          Lottie.asset(
            'assets/lottie_animations/registration_success_lottie.json',
            width: 300.0,
            height: 250.0,
            fit: BoxFit.cover,
            animate: true,
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 50.0),
              child: Text(
                'Property assigned to Property Inspector successfully.',
                textAlign: TextAlign.center,
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
      ),
    );
  }
}
