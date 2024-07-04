import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'hosted_properties_status_component_model.dart';
export 'hosted_properties_status_component_model.dart';

class HostedPropertiesStatusComponentWidget extends StatefulWidget {
  const HostedPropertiesStatusComponentWidget({super.key});

  @override
  State<HostedPropertiesStatusComponentWidget> createState() =>
      _HostedPropertiesStatusComponentWidgetState();
}

class _HostedPropertiesStatusComponentWidgetState
    extends State<HostedPropertiesStatusComponentWidget> {
  late HostedPropertiesStatusComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HostedPropertiesStatusComponentModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Opacity(
                  opacity: FFAppState().onTapHostDbOptions.activeTab == true
                      ? 1.0
                      : 0.6,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        0.0,
                        0.0,
                        valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width >= 600.0
                              ? 25.0
                              : 1.0,
                          0.0,
                        ),
                        0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.updatePage(() {
                          FFAppState().updateOnTapHostDbOptionsStruct(
                            (e) => e
                              ..activeTab = true
                              ..pendingTab = null
                              ..rejectedTab = null
                              ..blockedTab = null,
                          );
                        });
                        _model.updatePage(() {
                          _model.hostPropStatus = 1;
                        });
                      },
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
                                      5.0, 0.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: SvgPicture.asset(
                                      'assets/images/active_property_icon.svg',
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
                                    'Active Properties',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w500,
                                      fontSize:
                                          MediaQuery.sizeOf(context).width >=
                                                  600.0
                                              ? 16.0
                                              : 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            if (FFAppState().onTapHostDbOptions.activeTab ==
                                true)
                              SizedBox(
                                width: 196.0,
                                child: Divider(
                                  height: 2.0,
                                  thickness: 2.0,
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: FFAppState().onTapHostDbOptions.pendingTab == true
                      ? 1.0
                      : 0.6,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        0.0,
                        0.0,
                        valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width >= 600.0
                              ? 25.0
                              : 1.0,
                          0.0,
                        ),
                        0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.updatePage(() {
                          FFAppState().updateOnTapHostDbOptionsStruct(
                            (e) => e
                              ..activeTab = null
                              ..pendingTab = true
                              ..rejectedTab = null
                              ..blockedTab = null,
                          );
                        });
                        _model.updatePage(() {
                          _model.hostPropStatus = 2;
                        });
                      },
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
                                    'assets/images/pending-icon_1_(1).svg',
                                    width: 20.0,
                                    height: 20.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 5.0, 0.0),
                                  child: Text(
                                    'Pending Properties',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w500,
                                      fontSize:
                                          MediaQuery.sizeOf(context).width >=
                                                  600.0
                                              ? 16.0
                                              : 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            if (FFAppState().onTapHostDbOptions.pendingTab ==
                                true)
                              SizedBox(
                                width: 196.0,
                                child: Divider(
                                  height: 2.0,
                                  thickness: 2.0,
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: FFAppState().onTapHostDbOptions.rejectedTab == true
                      ? 1.0
                      : 0.6,
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        0.0,
                        0.0,
                        valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width >= 600.0
                              ? 25.0
                              : 1.0,
                          0.0,
                        ),
                        0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        _model.updatePage(() {
                          FFAppState().updateOnTapHostDbOptionsStruct(
                            (e) => e
                              ..activeTab = null
                              ..pendingTab = null
                              ..rejectedTab = true
                              ..blockedTab = null,
                          );
                        });
                        _model.updatePage(() {
                          _model.hostPropStatus = 0;
                        });
                      },
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
                                    'assets/images/Group_(1).svg',
                                    width: 20.0,
                                    height: 20.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 5.0, 0.0),
                                  child: Text(
                                    'Rejected Properties',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w500,
                                      fontSize:
                                          MediaQuery.sizeOf(context).width >=
                                                  600.0
                                              ? 16.0
                                              : 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            if (FFAppState().onTapHostDbOptions.rejectedTab ==
                                true)
                              SizedBox(
                                width: 196.0,
                                child: Divider(
                                  height: 2.0,
                                  thickness: 2.0,
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Opacity(
                  opacity: FFAppState().onTapHostDbOptions.blockedTab == true
                      ? 1.0
                      : 0.6,
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      _model.updatePage(() {
                        FFAppState().updateOnTapHostDbOptionsStruct(
                          (e) => e
                            ..activeTab = null
                            ..pendingTab = null
                            ..rejectedTab = null
                            ..blockedTab = true,
                        );
                      });
                      _model.updatePage(() {
                        _model.hostPropStatus = 3;
                      });
                    },
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
                                  'assets/images/blocked_icon.svg',
                                  width: 20.0,
                                  height: 20.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    5.0, 0.0, 5.0, 0.0),
                                child: Text(
                                  'Blocked Properties',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontWeight: FontWeight.w500,
                                    fontSize:
                                        MediaQuery.sizeOf(context).width >=
                                                600.0
                                            ? 16.0
                                            : 14.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          if (FFAppState().onTapHostDbOptions.blockedTab ==
                              true)
                            SizedBox(
                              width: 196.0,
                              child: Divider(
                                height: 2.0,
                                thickness: 2.0,
                                color: FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
