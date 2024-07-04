import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/admin_property_lease_request/lease_approve/lease_approve_widget.dart';
import '/luxary_homes/admin/admin_property_lease_request/lease_assign/lease_assign_widget.dart';
import '/luxary_homes/admin/admin_property_lease_request/lease_pending/lease_pending_widget.dart';
import '/luxary_homes/admin/admin_property_lease_request/lease_reject/lease_reject_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lease_rqt_db_model.dart';
export 'lease_rqt_db_model.dart';

class LeaseRqtDbWidget extends StatefulWidget {
  const LeaseRqtDbWidget({super.key});

  @override
  State<LeaseRqtDbWidget> createState() => _LeaseRqtDbWidgetState();
}

class _LeaseRqtDbWidgetState extends State<LeaseRqtDbWidget> {
  late LeaseRqtDbModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LeaseRqtDbModel());

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
    return FutureBuilder<ApiCallResponse>(
      future: MicroserviceExternalHostGroup.adminLeaseRequestDashboardCall.call(
        status: _model.propertyStatus,
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
        final columnAdminLeaseRequestDashboardResponse = snapshot.data!;
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
                  Opacity(
                    opacity:
                        _model.propertyStatus.toString() == '0' ? 1.0 : 0.7,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            _model.propertyStatus = 0;
                            _model.pageNo = 1;
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
                                      'Pending Properties',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '(${getJsonField(
                                      columnAdminLeaseRequestDashboardResponse
                                          .jsonBody,
                                      r'''$.pendingPropertiesCount''',
                                    ).toString()})',
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
                                  color: _model.propertyStatus.toString() == '0'
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
                    opacity:
                        _model.propertyStatus.toString() == '1' ? 1.0 : 0.7,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            _model.propertyStatus = 1;
                            _model.pageNo = 1;
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: SvgPicture.asset(
                                        'assets/images/_icon__assign_user_line__(1).svg',
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
                                      'Assigned Properties',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '(${getJsonField(
                                      columnAdminLeaseRequestDashboardResponse
                                          .jsonBody,
                                      r'''$.assignedPropertiesCount''',
                                    ).toString()})',
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
                                  color: _model.propertyStatus == 1
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
                    opacity:
                        _model.propertyStatus.toString() == '4' ? 1.0 : 0.7,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            _model.propertyStatus = 4;
                            _model.pageNo = 1;
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: SvgPicture.asset(
                                        'assets/images/active_property_icon.svg',
                                        width: 30.0,
                                        height: 20.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 5.0, 0.0),
                                    child: Text(
                                      'Approved Properties',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '(${getJsonField(
                                      columnAdminLeaseRequestDashboardResponse
                                          .jsonBody,
                                      r'''$.approvedPropertiesCount''',
                                    ).toString()})',
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
                    ),
                  ),
                  Opacity(
                    opacity:
                        _model.propertyStatus.toString() == '3' ? 1.0 : 0.7,
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            _model.propertyStatus = 3;
                            _model.pageNo = 1;
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
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 5.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Group_(1).svg',
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
                                      'Rejected Properties',
                                      style: GoogleFonts.getFont(
                                        'Poppins',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '(${getJsonField(
                                      columnAdminLeaseRequestDashboardResponse
                                          .jsonBody,
                                      r'''$.rejectedPropertiesCount''',
                                    ).toString()})',
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
                                  height: 1.0,
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
            Flexible(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (_model.propertyStatus == 1)
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 12.0),
                            child: wrapWithModel(
                              model: _model.leaseAssignModel,
                              updateCallback: () => setState(() {}),
                              child: LeaseAssignWidget(
                                propertyStatus: _model.propertyStatus!,
                                pageNo: _model.pageNo!,
                                pageSize: _model.pageSize!,
                              ),
                            ),
                          ),
                        ),
                      if (_model.propertyStatus == 0)
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 25.0, 0.0, 12.0),
                            child: wrapWithModel(
                              model: _model.leasePendingModel,
                              updateCallback: () => setState(() {}),
                              child: LeasePendingWidget(
                                propertyStatus: _model.propertyStatus!,
                                pageNo: _model.pageNo!,
                                pageSize: _model.pageSize!,
                              ),
                            ),
                          ),
                        ),
                      if (_model.propertyStatus == 4)
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                60.0, 25.0, 60.0, 12.0),
                            child: wrapWithModel(
                              model: _model.leaseApproveModel,
                              updateCallback: () => setState(() {}),
                              child: LeaseApproveWidget(
                                propertyStatus: _model.propertyStatus!,
                                pageNo: _model.pageNo!,
                                pageSize: _model.pageSize!,
                              ),
                            ),
                          ),
                        ),
                      if (_model.propertyStatus == 3)
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                60.0, 25.0, 60.0, 12.0),
                            child: wrapWithModel(
                              model: _model.leaseRejectModel,
                              updateCallback: () => setState(() {}),
                              child: LeaseRejectWidget(
                                propertyStatus: _model.propertyStatus!,
                                pageNo: _model.pageNo!,
                                pageSize: _model.pageSize!,
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
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
                              text: _model.pageNo.toString(),
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
                              text: valueOrDefault<String>(
                                getJsonField(
                                  columnAdminLeaseRequestDashboardResponse
                                      .jsonBody,
                                  r'''$.lastPage''',
                                )?.toString(),
                                '0',
                              ),
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
                              text: valueOrDefault<String>(
                                MicroserviceExternalHostGroup
                                    .adminLeaseRequestDashboardCall
                                    .totalCount(
                                      columnAdminLeaseRequestDashboardResponse
                                          .jsonBody,
                                    )
                                    ?.toString(),
                                '0',
                              ),
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
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 40.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                setState(() {
                                  _model.pageNo = 1;
                                });
                              },
                              child: FaIcon(
                                FontAwesomeIcons.stepBackward,
                                color: _model.pageNo! > 1
                                    ? FlutterFlowTheme.of(context).primary
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
                                  setState(() {
                                    _model.pageNo = _model.pageNo! + -1;
                                  });
                                }
                              },
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: _model.pageNo! > 1
                                    ? FlutterFlowTheme.of(context).primary
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
                                    getJsonField(
                                      columnAdminLeaseRequestDashboardResponse
                                          .jsonBody,
                                      r'''$.lastPage''',
                                    )) {
                                  setState(() {
                                    _model.pageNo = _model.pageNo! + 1;
                                  });
                                }
                              },
                              child: Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: _model.pageNo! <
                                        getJsonField(
                                          columnAdminLeaseRequestDashboardResponse
                                              .jsonBody,
                                          r'''$.lastPage''',
                                        )
                                    ? FlutterFlowTheme.of(context).primary
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
                                  getJsonField(
                                    columnAdminLeaseRequestDashboardResponse
                                        .jsonBody,
                                    r'''$.lastPage''',
                                  )) {
                                setState(() {
                                  _model.pageNo = getJsonField(
                                    columnAdminLeaseRequestDashboardResponse
                                        .jsonBody,
                                    r'''$.lastPage''',
                                  );
                                });
                              }
                            },
                            child: FaIcon(
                              FontAwesomeIcons.stepForward,
                              color: _model.pageNo! <
                                      getJsonField(
                                        columnAdminLeaseRequestDashboardResponse
                                            .jsonBody,
                                        r'''$.lastPage''',
                                      )
                                  ? FlutterFlowTheme.of(context).primary
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
        );
      },
    );
  }
}
