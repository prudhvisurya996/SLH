import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'trips_error_message_model.dart';
export 'trips_error_message_model.dart';

class TripsErrorMessageWidget extends StatefulWidget {
  const TripsErrorMessageWidget({super.key});

  @override
  State<TripsErrorMessageWidget> createState() =>
      _TripsErrorMessageWidgetState();
}

class _TripsErrorMessageWidgetState extends State<TripsErrorMessageWidget> {
  late TripsErrorMessageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TripsErrorMessageModel());

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

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lottie_animations/Animation_-_1697613148527.json',
              width: 150.0,
              height: 130.0,
              fit: BoxFit.cover,
              animate: true,
            ),
            Text(
              () {
                if (FFAppState().tripsStatus.upComing == true) {
                  return 'No Upcoming Trips';
                } else if (FFAppState().tripsStatus.cancelled == true) {
                  return 'No Cancelled Trips';
                } else {
                  return 'No Completed Trips';
                }
              }(),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Poppins',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 30.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
