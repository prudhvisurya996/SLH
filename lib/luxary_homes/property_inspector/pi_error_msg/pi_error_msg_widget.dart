import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pi_error_msg_model.dart';
export 'pi_error_msg_model.dart';

class PiErrorMsgWidget extends StatefulWidget {
  const PiErrorMsgWidget({
    super.key,
    required this.propertyStatus,
  });

  final int? propertyStatus;

  @override
  State<PiErrorMsgWidget> createState() => _PiErrorMsgWidgetState();
}

class _PiErrorMsgWidgetState extends State<PiErrorMsgWidget> {
  late PiErrorMsgModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PiErrorMsgModel());

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
            Text(
              'No Items Found',
              style: GoogleFonts.getFont(
                'Work Sans',
                color: FlutterFlowTheme.of(context).primaryText,
                fontWeight: FontWeight.w500,
                fontSize: 26.0,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Text(
                'The list is currenmtly empty.',
                style: GoogleFonts.getFont(
                  'Work Sans',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 18.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
