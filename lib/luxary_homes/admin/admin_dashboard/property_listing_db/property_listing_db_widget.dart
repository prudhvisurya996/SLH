import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/admin/admin_property_listing/property_approve/property_approve_widget.dart';
import '/luxary_homes/admin/admin_property_listing/property_blocked/property_blocked_widget.dart';
import '/luxary_homes/admin/admin_property_listing/property_pending/property_pending_widget.dart';
import '/luxary_homes/admin/admin_property_listing/property_rejected/property_rejected_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'property_listing_db_model.dart';
export 'property_listing_db_model.dart';

class PropertyListingDbWidget extends StatefulWidget {
  const PropertyListingDbWidget({super.key});

  @override
  State<PropertyListingDbWidget> createState() =>
      _PropertyListingDbWidgetState();
}

class _PropertyListingDbWidgetState extends State<PropertyListingDbWidget> {
  late PropertyListingDbModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PropertyListingDbModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.propertyStatus = 2;
        _model.pageNo = 1;
        _model.pageSize = 17;
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
      future: MicroserviceAvailabilityAPIsGroup.adminListingCall.call(
        pageNo: _model.pageNo,
        pageSize: _model.pageSize,
        status: _model.propertyStatus,
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
        final columnAdminListingResponse = snapshot.data!;
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
                        _model.propertyStatus.toString() == '2' ? 1.0 : 0.7,
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
                            _model.propertyStatus = 2;
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
                                        5.0, 0.0, 0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: SvgPicture.asset(
                                        'assets/images/Vector.svg',
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
                                    '(${MicroserviceAvailabilityAPIsGroup.adminListingCall.pendingPropertiesCount(
                                          columnAdminListingResponse.jsonBody,
                                        )?.toString()})',
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
                                  color: _model.propertyStatus == 2
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
                  Padding(
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
                                if (_model.propertyStatus.toString() != '1')
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: SvgPicture.asset(
                                      'assets/images/Layer_2_(1).svg',
                                      width: 30.0,
                                      height: 30.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                if (_model.propertyStatus.toString() == '1')
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
                                    'Approved Properties',
                                    style: GoogleFonts.getFont(
                                      'Poppins',
                                      color: _model.propertyStatus == 1
                                          ? FlutterFlowTheme.of(context).primary
                                          : Color(0x805246ED),
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                ),
                                Text(
                                  '(${MicroserviceAvailabilityAPIsGroup.adminListingCall.approvedPropertiesCount(
                                        columnAdminListingResponse.jsonBody,
                                      )?.toString()})',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: _model.propertyStatus == 1
                                        ? FlutterFlowTheme.of(context).primary
                                        : Color(0x805246ED),
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
                  Padding(
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
                                if (_model.propertyStatus.toString() != '0')
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: SvgPicture.asset(
                                      'assets/images/Group_(1).svg',
                                      width: 30.0,
                                      height: 30.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                if (_model.propertyStatus.toString() == '0')
                                  FaIcon(
                                    FontAwesomeIcons.timesCircle,
                                    color: Color(0xA3D70000),
                                    size: 30.0,
                                  ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5.0, 0.0, 5.0, 0.0),
                                  child: Text(
                                    'Rejected Properties',
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
                                  '(${MicroserviceAvailabilityAPIsGroup.adminListingCall.rejectedPropertiesCount(
                                        columnAdminListingResponse.jsonBody,
                                      )?.toString()})',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: _model.propertyStatus == 0
                                        ? FlutterFlowTheme.of(context).primary
                                        : Color(0x805246ED),
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
                                if (_model.propertyStatus.toString() != '3')
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
                                if (_model.propertyStatus.toString() == '3')
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
                                    'Blocked Properties',
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
                                  '(${MicroserviceAvailabilityAPIsGroup.adminListingCall.blockedPropertiesCount(
                                        columnAdminListingResponse.jsonBody,
                                      )?.toString()})',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: _model.propertyStatus == 3
                                        ? FlutterFlowTheme.of(context).primary
                                        : Color(0x805246ED),
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
              child: Container(
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (_model.propertyStatus.toString() == '3')
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              60.0, 24.0, 60.0, 12.0),
                          child: wrapWithModel(
                            model: _model.propertyBlockedModel,
                            updateCallback: () => setState(() {}),
                            child: PropertyBlockedWidget(
                              propertyStaus: _model.propertyStatus!,
                              pageNo: _model.pageNo!,
                              pageSize: _model.pageSize!,
                            ),
                          ),
                        ),
                      ),
                    if (_model.propertyStatus.toString() == '0')
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              60.0, 24.0, 60.0, 12.0),
                          child: wrapWithModel(
                            model: _model.propertyRejectedModel,
                            updateCallback: () => setState(() {}),
                            child: PropertyRejectedWidget(
                              propertyStaus: _model.propertyStatus!,
                              pageNo: _model.pageNo!,
                              pageSize: _model.pageSize!,
                            ),
                          ),
                        ),
                      ),
                    if (_model.propertyStatus.toString() == '1')
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              60.0, 24.0, 60.0, 12.0),
                          child: wrapWithModel(
                            model: _model.propertyApproveModel,
                            updateCallback: () => setState(() {}),
                            child: PropertyApproveWidget(
                              propertyStatus: _model.propertyStatus!,
                              pageNo: _model.pageNo!,
                              pageSize: _model.pageSize!,
                            ),
                          ),
                        ),
                      ),
                    if (_model.propertyStatus.toString() == '2')
                      Flexible(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: wrapWithModel(
                            model: _model.propertyPendingModel,
                            updateCallback: () => setState(() {}),
                            child: PropertyPendingWidget(
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
            if (valueOrDefault<int>(
                  MicroserviceAvailabilityAPIsGroup.adminListingCall.totalCount(
                    columnAdminListingResponse.jsonBody,
                  ),
                  0,
                ) !=
                0)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 25.0),
                child: Container(
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(55.0, 0.0, 55.0, 0.0),
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
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextSpan(
                                text: ' - ',
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16.0,
                                ),
                              ),
                              TextSpan(
                                text: valueOrDefault<String>(
                                  MicroserviceAvailabilityAPIsGroup
                                      .adminListingCall
                                      .lastPage(
                                        columnAdminListingResponse.jsonBody,
                                      )
                                      ?.toString(),
                                  '0',
                                ),
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                                  MicroserviceAvailabilityAPIsGroup
                                      .adminListingCall
                                      .totalCount(
                                        columnAdminListingResponse.jsonBody,
                                      )
                                      ?.toString(),
                                  '0',
                                ),
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
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
                                      MicroserviceAvailabilityAPIsGroup
                                          .adminListingCall
                                          .lastPage(
                                        columnAdminListingResponse.jsonBody,
                                      )!) {
                                    setState(() {
                                      _model.pageNo = _model.pageNo! + 1;
                                    });
                                  }
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  color: _model.pageNo! <
                                          MicroserviceAvailabilityAPIsGroup
                                              .adminListingCall
                                              .lastPage(
                                            columnAdminListingResponse.jsonBody,
                                          )!
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
                                    MicroserviceAvailabilityAPIsGroup
                                        .adminListingCall
                                        .lastPage(
                                      columnAdminListingResponse.jsonBody,
                                    )!) {
                                  setState(() {
                                    _model.pageNo =
                                        MicroserviceAvailabilityAPIsGroup
                                            .adminListingCall
                                            .lastPage(
                                      columnAdminListingResponse.jsonBody,
                                    );
                                  });
                                }
                              },
                              child: FaIcon(
                                FontAwesomeIcons.stepForward,
                                color: _model.pageNo! <
                                        MicroserviceAvailabilityAPIsGroup
                                            .adminListingCall
                                            .lastPage(
                                          columnAdminListingResponse.jsonBody,
                                        )!
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
