import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'at_error_msg_model.dart';
export 'at_error_msg_model.dart';

class AtErrorMsgWidget extends StatefulWidget {
  const AtErrorMsgWidget({
    super.key,
    required this.propertyStatus,
  });

  final int? propertyStatus;

  @override
  State<AtErrorMsgWidget> createState() => _AtErrorMsgWidgetState();
}

class _AtErrorMsgWidgetState extends State<AtErrorMsgWidget> {
  late AtErrorMsgModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AtErrorMsgModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/lottie_animations/Animation_-_1697613148527.json',
              width: 120.0,
              height: 120.0,
              fit: BoxFit.cover,
              animate: true,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
              child: Text(
                'No ${() {
                  if (widget.propertyStatus == 0) {
                    return 'Assigned Tasks';
                  } else if (widget.propertyStatus == 1) {
                    return 'Accepted Tasks';
                  } else if (widget.propertyStatus == 3) {
                    return 'Completed Tasks';
                  } else {
                    return 'Rejected Tasks';
                  }
                }()}',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 26.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
