import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sample_toast_model.dart';
export 'sample_toast_model.dart';

class SampleToastWidget extends StatefulWidget {
  const SampleToastWidget({super.key});

  @override
  State<SampleToastWidget> createState() => _SampleToastWidgetState();
}

class _SampleToastWidgetState extends State<SampleToastWidget> {
  late SampleToastModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SampleToastModel());

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
      width: double.infinity,
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).success,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              4.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
        child: Container(
          width: double.infinity,
          height: 70.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryBackground,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(2.0),
              bottomRight: Radius.circular(10.0),
              topLeft: Radius.circular(2.0),
              topRight: Radius.circular(10.0),
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Icon(
                        Icons.check_circle,
                        color: FlutterFlowTheme.of(context).success,
                        size: 24.0,
                      ),
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 5.0, 0.0),
                          child: Text(
                            'Your request submitted successfully. ',
                            maxLines: 3,
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                FlutterFlowIconButton(
                  borderWidth: 1.0,
                  buttonSize: 40.0,
                  icon: Icon(
                    Icons.clear,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
