import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/androidand_ios/menu_for_mobile/menu_for_mobile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_bar_model.dart';
export 'nav_bar_model.dart';

class NavBarWidget extends StatefulWidget {
  const NavBarWidget({
    super.key,
    required this.index,
  });

  final int? index;

  @override
  State<NavBarWidget> createState() => _NavBarWidgetState();
}

class _NavBarWidgetState extends State<NavBarWidget> {
  late NavBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavBarModel());

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
      decoration: BoxDecoration(),
      child: Container(
        width: double.infinity,
        height: isWeb ? 65.0 : 75.0,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFE9F50CF), FlutterFlowTheme.of(context).primary],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(0.94, -1.0),
            end: AlignmentDirectional(-0.94, 1.0),
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(0.0),
            topRight: Radius.circular(0.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'home_page',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Opacity(
                          opacity: widget.index == 1 ? 1.0 : 0.5,
                          child: Icon(
                            Icons.home,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 27.0,
                          ),
                        ),
                        Opacity(
                          opacity: widget.index == 1 ? 1.0 : 0.5,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'Home',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.goNamed(
                        'new_trips_page',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 0),
                          ),
                        },
                      );
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Opacity(
                          opacity: widget.index == 2 ? 1.0 : 0.5,
                          child: Icon(
                            Icons.location_on_rounded,
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            size: 27.0,
                          ),
                        ),
                        Opacity(
                          opacity: widget.index == 2 ? 1.0 : 0.5,
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Text(
                              'Trips',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Work Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Stack(
                    children: [
                      if (!FFAppState().userData.isAdmin &&
                          !FFAppState().userData.isHost &&
                          (FFAppState().accessToken != null &&
                              FFAppState().accessToken != '') &&
                          !FFAppState().userData.isPI &&
                          !FFAppState().userData.isAT)
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'ex_host_dashboard',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Opacity(
                                opacity: widget.index == 3 ? 1.0 : 0.5,
                                child: Icon(
                                  Icons.dashboard_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 27.0,
                                ),
                              ),
                              Opacity(
                                opacity: widget.index == 3 ? 1.0 : 0.5,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    'Dashboard',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (FFAppState().userData.isHost)
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'in_host_dashboard',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Opacity(
                                opacity: widget.index == 4 ? 1.0 : 0.5,
                                child: Icon(
                                  Icons.dashboard_customize_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 27.0,
                                ),
                              ),
                              Opacity(
                                opacity: widget.index == 4 ? 1.0 : 0.5,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    'Dashboard',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (!FFAppState().userData.isAdmin &&
                          !FFAppState().userData.isHost &&
                          (FFAppState().accessToken == null ||
                              FFAppState().accessToken == '') &&
                          !FFAppState().userData.isPI &&
                          !FFAppState().userData.isAT)
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.goNamed(
                              'empty_dashboard',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Opacity(
                                opacity: widget.index == 5 ? 1.0 : 0.5,
                                child: Icon(
                                  Icons.dashboard_outlined,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 27.0,
                                ),
                              ),
                              Opacity(
                                opacity: widget.index == 5 ? 1.0 : 0.5,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    'Dashboard',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Work Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (FFAppState().userData.isAdmin)
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'dashboard_for_pm',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Opacity(
                                opacity: widget.index == 7 ? 1.0 : 0.5,
                                child: Icon(
                                  Icons.dashboard,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 27.0,
                                ),
                              ),
                              Opacity(
                                opacity: widget.index == 7 ? 1.0 : 0.5,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    'Dashboard',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (FFAppState().userData.isPI)
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'm_pi_dashboard',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Opacity(
                                opacity: widget.index == 8 ? 1.0 : 0.5,
                                child: Icon(
                                  Icons.dashboard,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 27.0,
                                ),
                              ),
                              Opacity(
                                opacity: widget.index == 8 ? 1.0 : 0.5,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    'Dashboard',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (FFAppState().userData.isAT)
                        InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.goNamed(
                              'm_at_dashboard',
                              extra: <String, dynamic>{
                                kTransitionInfoKey: TransitionInfo(
                                  hasTransition: true,
                                  transitionType: PageTransitionType.fade,
                                  duration: Duration(milliseconds: 0),
                                ),
                              },
                            );
                          },
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Opacity(
                                opacity: widget.index == 9 ? 1.0 : 0.5,
                                child: Icon(
                                  Icons.dashboard,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 27.0,
                                ),
                              ),
                              Opacity(
                                opacity: widget.index == 9 ? 1.0 : 0.5,
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 5.0, 0.0, 0.0),
                                  child: Text(
                                    'Dashboard',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
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
                  Builder(
                    builder: (context) => InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        await showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: Container(
                                height: MediaQuery.sizeOf(context).height * 1.0,
                                child: MenuForMobileWidget(),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Opacity(
                            opacity: widget.index == 6 ? 1.0 : 0.5,
                            child: FaIcon(
                              FontAwesomeIcons.bars,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              size: 27.0,
                            ),
                          ),
                          Opacity(
                            opacity: widget.index == 6 ? 1.0 : 0.5,
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 5.0, 0.0, 0.0),
                              child: Text(
                                'Menu',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Work Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
