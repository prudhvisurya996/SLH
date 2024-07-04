import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pm_error_comp_model.dart';
export 'pm_error_comp_model.dart';

class PmErrorCompWidget extends StatefulWidget {
  const PmErrorCompWidget({super.key});

  @override
  State<PmErrorCompWidget> createState() => _PmErrorCompWidgetState();
}

class _PmErrorCompWidgetState extends State<PmErrorCompWidget> {
  late PmErrorCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PmErrorCompModel());

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
                'The list is currently empty.',
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
