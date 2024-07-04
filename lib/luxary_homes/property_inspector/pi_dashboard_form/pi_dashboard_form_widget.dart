import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/property_inspector/pi_accepted_tasks/pi_accepted_tasks_widget.dart';
import '/luxary_homes/property_inspector/pi_assigned_tasks/pi_assigned_tasks_widget.dart';
import '/luxary_homes/property_inspector/pi_completed_tasks/pi_completed_tasks_widget.dart';
import '/luxary_homes/property_inspector/pi_rejected_tasks/pi_rejected_tasks_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pi_dashboard_form_model.dart';
export 'pi_dashboard_form_model.dart';

class PiDashboardFormWidget extends StatefulWidget {
  const PiDashboardFormWidget({super.key});

  @override
  State<PiDashboardFormWidget> createState() => _PiDashboardFormWidgetState();
}

class _PiDashboardFormWidgetState extends State<PiDashboardFormWidget> {
  late PiDashboardFormModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PiDashboardFormModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.status = 0;
      _model.pageNo = 1;
      _model.pageSize = 17;
      setState(() {});
    });

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

    return FutureBuilder<ApiCallResponse>(
      future: MicroserviceExternalHostGroup.pIDashboardCall.call(
        userId: FFAppState().userData.userId,
        taskPhase: 1,
        status: _model.status,
        pageNo: _model.pageNo,
        pageSize: _model.pageSize,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 40.0,
              height: 40.0,
              child: SpinKitPulse(
                color: FlutterFlowTheme.of(context).primary,
                size: 40.0,
              ),
            ),
          );
        }
        final columnPIDashboardResponse = snapshot.data!;
        return Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Opacity(
                    opacity: _model.status == 1 ? 1.0 : 0.7,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.status = 0;
                          _model.pageNo = 1;
                          setState(() {});
                        },
                        child: Container(
                          height: 40.0,
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
                                        width: 30.0,
                                        height: 30.0,
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
                                    '(${valueOrDefault<String>(
                                      MicroserviceExternalHostGroup
                                          .pIDashboardCall
                                          .assignedTasksCount(
                                            columnPIDashboardResponse.jsonBody,
                                          )
                                          ?.toString(),
                                      '--',
                                    )})',
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
                                  color: _model.status == 0
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: _model.status == 2 ? 1.0 : 0.7,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.status = 1;
                          _model.pageNo = 1;
                          setState(() {});
                        },
                        child: Container(
                          height: 40.0,
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
                                        'assets/images/thumbs-up_1.svg',
                                        width: 30.0,
                                        height: 30.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 5.0, 0.0),
                                    child: Text(
                                      'Accepted tasks',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '(${valueOrDefault<String>(
                                      MicroserviceExternalHostGroup
                                          .pIDashboardCall
                                          .acceptedTasksCount(
                                            columnPIDashboardResponse.jsonBody,
                                          )
                                          ?.toString(),
                                      '--',
                                    )})',
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
                                  color: _model.status == 1
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: _model.status == 3 ? 1.0 : 0.8,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.status = 3;
                          _model.pageNo = 1;
                          setState(() {});
                        },
                        child: Container(
                          height: 40.0,
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
                                      width: 30.0,
                                      height: 30.0,
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
                                    '(${valueOrDefault<String>(
                                      MicroserviceExternalHostGroup
                                          .pIDashboardCall
                                          .completedTasksCount(
                                            columnPIDashboardResponse.jsonBody,
                                          )
                                          ?.toString(),
                                      '--',
                                    )})',
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
                                  color: _model.status == 3
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: _model.status == 4 ? 1.0 : 0.7,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          _model.status = 4;
                          _model.pageNo = 1;
                          setState(() {});
                        },
                        child: Container(
                          height: 40.0,
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
                                      width: 30.0,
                                      height: 30.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 5.0, 0.0),
                                    child: Text(
                                      'Rejected tasks',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '(${valueOrDefault<String>(
                                      MicroserviceExternalHostGroup
                                          .pIDashboardCall
                                          .rejectedTasksCount(
                                            columnPIDashboardResponse.jsonBody,
                                          )
                                          ?.toString(),
                                      '--',
                                    )})',
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
                                  color: _model.status == 4
                                      ? FlutterFlowTheme.of(context).primary
                                      : FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Align(
                      alignment: AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 20.0, 3.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Filter',
                          icon: Icon(
                            Icons.filter_list,
                            color: FlutterFlowTheme.of(context).primary,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                25.0, 0.0, 25.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFEFEAFC),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.0,
              thickness: 1.0,
              color: Color(0xFF979797),
            ),
            Flexible(
              child: Container(
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (_model.status == 0)
                      Flexible(
                        child: wrapWithModel(
                          model: _model.piAssignedTasksModel,
                          updateCallback: () => setState(() {}),
                          child: PiAssignedTasksWidget(
                            status: _model.status!,
                            pageNo: _model.pageNo!,
                            pageSize: _model.pageSize!,
                            totalCount: MicroserviceExternalHostGroup
                                .pIDashboardCall
                                .totalCount(
                              columnPIDashboardResponse.jsonBody,
                            )!,
                          ),
                        ),
                      ),
                    if (_model.status == 1)
                      Expanded(
                        child: wrapWithModel(
                          model: _model.piAcceptedTasksModel,
                          updateCallback: () => setState(() {}),
                          child: PiAcceptedTasksWidget(
                            status: _model.status!,
                            pageNo: _model.pageNo!,
                            pageSize: _model.pageSize!,
                            totalCount: MicroserviceExternalHostGroup
                                .pIDashboardCall
                                .totalCount(
                              columnPIDashboardResponse.jsonBody,
                            )!,
                          ),
                        ),
                      ),
                    if (_model.status == 3)
                      Flexible(
                        child: wrapWithModel(
                          model: _model.piCompletedTasksModel,
                          updateCallback: () => setState(() {}),
                          child: PiCompletedTasksWidget(
                            status: _model.status!,
                            pageNo: _model.pageNo!,
                            pageSize: _model.pageSize!,
                            totalCount: MicroserviceExternalHostGroup
                                .pIDashboardCall
                                .totalCount(
                              columnPIDashboardResponse.jsonBody,
                            )!,
                          ),
                        ),
                      ),
                    if (_model.status == 4)
                      Expanded(
                        child: wrapWithModel(
                          model: _model.piRejectedTasksModel,
                          updateCallback: () => setState(() {}),
                          child: PiRejectedTasksWidget(
                            status: _model.status!,
                            pageNo: _model.pageNo!,
                            pageSize: _model.pageSize!,
                            totalCount: MicroserviceExternalHostGroup
                                .pIDashboardCall
                                .totalCount(
                              columnPIDashboardResponse.jsonBody,
                            )!,
                          ),
                        ),
                      ),
                    if (MicroserviceExternalHostGroup.pIDashboardCall
                            .totalCount(
                          columnPIDashboardResponse.jsonBody,
                        ) !=
                        0)
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 20.0, 0.0, 25.0),
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                55.0, 0.0, 55.0, 0.0),
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
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: MicroserviceExternalHostGroup
                                            .pIDashboardCall
                                            .currentPage(
                                              columnPIDashboardResponse
                                                  .jsonBody,
                                            )
                                            .toString(),
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' - ',
                                        style: TextStyle(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: MicroserviceExternalHostGroup
                                            .pIDashboardCall
                                            .lastPage(
                                              columnPIDashboardResponse
                                                  .jsonBody,
                                            )
                                            .toString(),
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '  from  ',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: valueOrDefault<String>(
                                          MicroserviceExternalHostGroup
                                              .pIDashboardCall
                                              .totalCount(
                                                columnPIDashboardResponse
                                                    .jsonBody,
                                              )
                                              ?.toString(),
                                          '0',
                                        ),
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      TextSpan(
                                        text: '  data ',
                                        style: GoogleFonts.getFont(
                                          'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                        ),
                                      )
                                    ],
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 23.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 40.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          _model.pageNo = 1;
                                          setState(() {});
                                        },
                                        child: FaIcon(
                                          FontAwesomeIcons.stepBackward,
                                          color: _model.pageNo! > 1
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : Color(0x84BBD1EA),
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 70.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (_model.pageNo! > 1) {
                                            _model.pageNo = _model.pageNo! + -1;
                                            setState(() {});
                                          }
                                        },
                                        child: Icon(
                                          Icons.arrow_back_ios,
                                          color: _model.pageNo! > 1
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : Color(0x84BBD1EA),
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 40.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          if (_model.pageNo! <
                                              MicroserviceExternalHostGroup
                                                  .pIDashboardCall
                                                  .lastPage(
                                                columnPIDashboardResponse
                                                    .jsonBody,
                                              )!) {
                                            _model.pageNo = _model.pageNo! + 1;
                                            setState(() {});
                                          }
                                        },
                                        child: Icon(
                                          Icons.arrow_forward_ios_rounded,
                                          color: _model.pageNo! <
                                                  MicroserviceExternalHostGroup
                                                      .pIDashboardCall
                                                      .lastPage(
                                                    columnPIDashboardResponse
                                                        .jsonBody,
                                                  )!
                                              ? FlutterFlowTheme.of(context)
                                                  .primary
                                              : Color(0x84BBD1EA),
                                          size: 20.0,
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        if (_model.pageNo! <
                                            MicroserviceExternalHostGroup
                                                .pIDashboardCall
                                                .lastPage(
                                              columnPIDashboardResponse
                                                  .jsonBody,
                                            )!) {
                                          _model.pageNo =
                                              MicroserviceExternalHostGroup
                                                  .pIDashboardCall
                                                  .lastPage(
                                            columnPIDashboardResponse.jsonBody,
                                          );
                                          setState(() {});
                                        }
                                      },
                                      child: FaIcon(
                                        FontAwesomeIcons.stepForward,
                                        color: _model.pageNo! <
                                                MicroserviceExternalHostGroup
                                                    .pIDashboardCall
                                                    .lastPage(
                                                  columnPIDashboardResponse
                                                      .jsonBody,
                                                )!
                                            ? FlutterFlowTheme.of(context)
                                                .primary
                                            : Color(0x84BBD1EA),
                                        size: 20.0,
                                      ),
                                    ),
                                  ],
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
      },
    );
  }
}
