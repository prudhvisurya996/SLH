import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/external_host_journey/dashboard/web_comp/ex_ltd_ppt/ex_ltd_ppt_widget.dart';
import '/luxary_homes/external_host_journey/dashboard/web_comp/ex_on_going_ppts/ex_on_going_ppts_widget.dart';
import '/luxary_homes/external_host_journey/dashboard/web_comp/ex_rjtd_ppts/ex_rjtd_ppts_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ex_lse_rqt_db_model.dart';
export 'ex_lse_rqt_db_model.dart';

class ExLseRqtDbWidget extends StatefulWidget {
  const ExLseRqtDbWidget({super.key});

  @override
  State<ExLseRqtDbWidget> createState() => _ExLseRqtDbWidgetState();
}

class _ExLseRqtDbWidgetState extends State<ExLseRqtDbWidget> {
  late ExLseRqtDbModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExLseRqtDbModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.propertyStatus = 0;
        _model.pageNo = 1;
      });
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
      future: MicroserviceExternalHostGroup.exHostDashboardCall.call(
        status: _model.propertyStatus,
        userId: FFAppState().userData.userId,
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
        final columnExHostDashboardResponse = snapshot.data!;
        return Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        _model.propertyStatus = 0;
                      });
                      setState(() {
                        FFAppState().updateExHostDetailViewStruct(
                          (e) => e..status = _model.propertyStatus,
                        );
                      });
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
                              if (_model.propertyStatus != 0)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: SvgPicture.asset(
                                      'assets/images/pending-icon_1_(1).svg',
                                      width: 30.0,
                                      height: 30.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              if (_model.propertyStatus == 0)
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
                                  'Ongoing Properties',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: _model.propertyStatus == 0
                                        ? FlutterFlowTheme.of(context).primary
                                        : Color(0x805246ED),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                              Text(
                                '(${MicroserviceExternalHostGroup.exHostDashboardCall.inProgressPropertiesCount(
                                      columnExHostDashboardResponse.jsonBody,
                                    )?.toString()})',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 245.0,
                            child: Divider(
                              height: 3.0,
                              thickness: 3.0,
                              color: _model.propertyStatus == 0
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
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        _model.propertyStatus = 3;
                      });
                      setState(() {
                        FFAppState().updateExHostDetailViewStruct(
                          (e) => e..status = _model.propertyStatus,
                        );
                      });
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
                              if (_model.propertyStatus != 3)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 0.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: SvgPicture.asset(
                                      'assets/images/block_1.svg',
                                      width: 30.0,
                                      height: 30.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              if (_model.propertyStatus == 3)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 5.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: SvgPicture.asset(
                                      'assets/images/block_1_(1).svg',
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
                                  'Rejected  Properties',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: _model.propertyStatus == 3
                                        ? FlutterFlowTheme.of(context).primary
                                        : Color(0x805246ED),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                              Text(
                                '(${MicroserviceExternalHostGroup.exHostDashboardCall.rejectedPropertiesCount(
                                      columnExHostDashboardResponse.jsonBody,
                                    )?.toString()})',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 245.0,
                            child: Divider(
                              height: 3.0,
                              thickness: 3.0,
                              color: _model.propertyStatus == 3
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
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      _model.propertyStatus = 4;
                    });
                    setState(() {
                      FFAppState().updateExHostDetailViewStruct(
                        (e) => e..status = _model.propertyStatus,
                      );
                    });
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
                            if (_model.propertyStatus != 4)
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: SvgPicture.asset(
                                  'assets/images/Layer_2_(1).svg',
                                  width: 30.0,
                                  height: 30.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            if (_model.propertyStatus == 4)
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 5.0, 0.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8.0),
                                  child: SvgPicture.asset(
                                    'assets/images/active_property_icon.svg',
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
                                'Listed Properties',
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color: _model.propertyStatus == 4
                                      ? FlutterFlowTheme.of(context).primary
                                      : Color(0x805246ED),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                            Text(
                              '(${MicroserviceExternalHostGroup.exHostDashboardCall.approvedPropertiesCount(
                                    columnExHostDashboardResponse.jsonBody,
                                  )?.toString()})',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primary,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 215.0,
                          child: Divider(
                            height: 3.0,
                            thickness: 3.0,
                            color: _model.propertyStatus == 4
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context)
                                    .primaryBackground,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              height: 1.0,
              thickness: 1.0,
              indent: 5.0,
              color: Color(0xFF979797),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (_model.propertyStatus == 0)
                        Flexible(
                          child: wrapWithModel(
                            model: _model.exOnGoingPptsModel,
                            updateCallback: () => setState(() {}),
                            child: ExOnGoingPptsWidget(
                              propertyStatus: _model.propertyStatus!,
                              pageNo: _model.pageNo!,
                              pageSize: _model.pageSize!,
                              userId: FFAppState().userData.userId,
                              totalCount: MicroserviceExternalHostGroup
                                  .exHostDashboardCall
                                  .inProgressPropertiesCount(
                                columnExHostDashboardResponse.jsonBody,
                              )!,
                            ),
                          ),
                        ),
                      if (_model.propertyStatus == 3)
                        Expanded(
                          child: wrapWithModel(
                            model: _model.exRjtdPptsModel,
                            updateCallback: () => setState(() {}),
                            child: ExRjtdPptsWidget(
                              propertyStatus: _model.propertyStatus!,
                              pageNo: _model.pageNo!,
                              pageSize: _model.pageSize!,
                              userId: FFAppState().userData.userId,
                              totalCount: MicroserviceExternalHostGroup
                                  .exHostDashboardCall
                                  .rejectedPropertiesCount(
                                columnExHostDashboardResponse.jsonBody,
                              )!,
                            ),
                          ),
                        ),
                      if (_model.propertyStatus == 4)
                        Flexible(
                          child: wrapWithModel(
                            model: _model.exLtdPptModel,
                            updateCallback: () => setState(() {}),
                            child: ExLtdPptWidget(
                              propertyStatus: _model.propertyStatus!,
                              pageNo: _model.pageNo!,
                              pageSize: _model.pageSize!,
                              userId: FFAppState().userData.userId,
                              totalCount: MicroserviceExternalHostGroup
                                  .exHostDashboardCall
                                  .approvedPropertiesCount(
                                columnExHostDashboardResponse.jsonBody,
                              )!,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
