import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pi_dashboard_model.dart';
export 'pi_dashboard_model.dart';

class PiDashboardWidget extends StatefulWidget {
  const PiDashboardWidget({super.key});

  @override
  State<PiDashboardWidget> createState() => _PiDashboardWidgetState();
}

class _PiDashboardWidgetState extends State<PiDashboardWidget> {
  late PiDashboardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PiDashboardModel());

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                child: Container(
                  height: 30.0,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 5.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: SvgPicture.asset(
                                'assets/images/pending-icon_1.svg',
                                width: 20.0,
                                height: 20.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Text(
                              'Assigned tasks ',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Text(
                            '',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 225.0,
                        child: Divider(
                          height: 3.0,
                          thickness: 3.0,
                          color: FlutterFlowTheme.of(context).accent4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                child: Container(
                  height: 30.0,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 5.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: SvgPicture.asset(
                                'assets/images/Vector.svg',
                                width: 20.0,
                                height: 20.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Text(
                              'Ongoing tasks',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Text(
                            '',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 235.0,
                        child: Divider(
                          height: 3.0,
                          thickness: 3.0,
                          color: FlutterFlowTheme.of(context).accent4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                child: Container(
                  height: 30.0,
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: SvgPicture.asset(
                              'assets/images/checkmark-circle.svg',
                              width: 20.0,
                              height: 20.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: Text(
                              'Completed tasks',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Text(
                            '',
                            style: GoogleFonts.getFont(
                              'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 230.0,
                        child: Divider(
                          height: 3.0,
                          thickness: 3.0,
                          color: FlutterFlowTheme.of(context).accent4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 1.0,
          thickness: 1.0,
          indent: 5.0,
          color: Color(0xFF979797),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 25.0),
          child: Container(
            decoration: BoxDecoration(),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(55.0, 0.0, 55.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Showing  ',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: FlutterFlowTheme.of(context).primary,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: '1',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: ' - ',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: '3 ',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: '  from  ',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: FlutterFlowTheme.of(context).primary,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: '50 ',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                          ),
                        ),
                        TextSpan(
                          text: '  data ',
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: FlutterFlowTheme.of(context).primary,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.0,
                          ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            fontSize: 23.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 40.0, 0.0),
                        child: FaIcon(
                          FontAwesomeIcons.stepBackward,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 70.0, 0.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 40.0, 0.0),
                        child: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                      ),
                      FaIcon(
                        FontAwesomeIcons.stepForward,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 20.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
