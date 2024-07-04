import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'm_ex_status_bar_model.dart';
export 'm_ex_status_bar_model.dart';

class MExStatusBarWidget extends StatefulWidget {
  const MExStatusBarWidget({super.key});

  @override
  State<MExStatusBarWidget> createState() => _MExStatusBarWidgetState();
}

class _MExStatusBarWidgetState extends State<MExStatusBarWidget> {
  late MExStatusBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MExStatusBarModel());

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
      children: [
        Container(
          width: 40.0,
          height: 40.0,
          decoration: BoxDecoration(
            color: Color(0xFF80BB01),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.check_outlined,
            color: FlutterFlowTheme.of(context).primaryBackground,
            size: 18.0,
          ),
        ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
          desktop: false,
        ))
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Color(0xFFFFCD3D),
              shape: BoxShape.circle,
            ),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: FaIcon(
                FontAwesomeIcons.hourglassHalf,
                color: FlutterFlowTheme.of(context).primaryBackground,
                size: 18.0,
              ),
            ),
          ),
        if (responsiveVisibility(
          context: context,
          phone: false,
          tablet: false,
          tabletLandscape: false,
          desktop: false,
        ))
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).accent4,
              shape: BoxShape.circle,
            ),
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Text(
              '1',
              style: GoogleFonts.getFont(
                'Poppins',
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
          ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
          child: Container(
            width: 4.0,
            height: 78.0,
            decoration: BoxDecoration(
              color: Color(0xFF80BB01),
            ),
          ),
        ),
      ],
    );
  }
}
