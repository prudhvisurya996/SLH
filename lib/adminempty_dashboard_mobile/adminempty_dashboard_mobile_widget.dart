import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'adminempty_dashboard_mobile_model.dart';
export 'adminempty_dashboard_mobile_model.dart';

class AdminemptyDashboardMobileWidget extends StatefulWidget {
  const AdminemptyDashboardMobileWidget({super.key});

  @override
  State<AdminemptyDashboardMobileWidget> createState() =>
      _AdminemptyDashboardMobileWidgetState();
}

class _AdminemptyDashboardMobileWidgetState
    extends State<AdminemptyDashboardMobileWidget> {
  late AdminemptyDashboardMobileModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdminemptyDashboardMobileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Visibility(
          visible: responsiveVisibility(
            context: context,
            desktop: false,
          ),
          child: Stack(
            children: [
              if (FFAppState().accessToken != null &&
                  FFAppState().accessToken != '')
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFFCCAAEE), Color(0x0039D2C0)],
                      stops: [0.0, 1.0],
                      begin: AlignmentDirectional(0.0, -1.0),
                      end: AlignmentDirectional(0, 1.0),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: SvgPicture.asset(
                          'assets/images/login-img.svg',
                          width: 300.0,
                          height: 200.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: Icon(
                                        Icons.not_interested_sharp,
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        size: 30.0,
                                      ),
                                    ),
                                    Text(
                                      'Page Not Found',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0.0, 0.0),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 10.0, 0.0, 0.0),
                                    child: Text(
                                      'Sorry, this page can\'t be opened on other devices. Please access it from a web/desktop browser instead.',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Work Sans',
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              Align(
                alignment: AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.navBarModel,
                  updateCallback: () => setState(() {}),
                  child: NavBarWidget(
                    index: 7,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
