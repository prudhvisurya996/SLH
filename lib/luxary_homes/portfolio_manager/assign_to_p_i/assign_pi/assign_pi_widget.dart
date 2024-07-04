import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/luxary_homes/portfolio_manager/assign_to_p_i/pi_assigned_success/pi_assigned_success_widget.dart';
import '/luxary_homes/portfolio_manager/assign_to_p_i/pi_found/pi_found_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'assign_pi_model.dart';
export 'assign_pi_model.dart';

class AssignPiWidget extends StatefulWidget {
  const AssignPiWidget({
    super.key,
    required this.piLocation,
    required this.propertyId,
    required this.articleId,
  });

  final String? piLocation;
  final int? propertyId;
  final String? articleId;

  @override
  State<AssignPiWidget> createState() => _AssignPiWidgetState();
}

class _AssignPiWidgetState extends State<AssignPiWidget> {
  late AssignPiModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AssignPiModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.cityPI = widget.piLocation;
      _model.piFound = false;
      _model.priorityInteger = 0;
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

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        borderRadius: BorderRadius.circular(22.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Assign Property',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
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
                      Navigator.pop(context);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: SvgPicture.asset(
                        'assets/images/close.svg',
                        width: 40.0,
                        height: 40.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            height: 1.0,
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, -1.0),
                child: Container(
                  width: 390.0,
                  height: MediaQuery.sizeOf(context).height * 0.65,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 33.0, 0.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Assign Property ',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '*',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: Color(0xFFD70000),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                )
                              ],
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Location',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: Color(0x80000D3E),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                )
                              ],
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  if (_model.cityPI != 'All') {
                                    _model.piFound = true;
                                    setState(() {});
                                  } else {
                                    _model.piFound = false;
                                    setState(() {});
                                  }
                                },
                                child: Container(
                                  height: 45.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        15.0, 0.0, 15.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          valueOrDefault<String>(
                                            _model.cityPI,
                                            'NA',
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyLarge
                                              .override(
                                                fontFamily: 'Poppins',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                        if (_model.iconVisible == true)
                                          Icon(
                                            Icons.keyboard_arrow_down_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            size: 24.0,
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              if (_model.piFound == true)
                                InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    _model.cityPI = 'All';
                                    _model.piFound = false;
                                    _model.iconVisible = false;
                                    setState(() {});
                                    FFAppState().assignedPI =
                                        FFAppState().assignedPILocationNF;
                                    setState(() {});
                                  },
                                  child: Container(
                                    height: 45.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 15.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'All',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
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
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Assigning to',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                  ),
                                ),
                                TextSpan(
                                  text: '',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: Color(0x80000D3E),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12.0,
                                  ),
                                )
                              ],
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 45.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              border: Border.all(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Property Inspector',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 14.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 0.0),
                          child: RichText(
                            textScaler: MediaQuery.of(context).textScaler,
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Priority',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16.0,
                                  ),
                                )
                              ],
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w600,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController ??=
                                FormFieldController<String>(
                              _model.dropDownValue ??= 'Low',
                            ),
                            options: ['High', 'Medium', 'Low'],
                            onChanged: (val) async {
                              setState(() => _model.dropDownValue = val);
                              _model.priorityLevel = _model.dropDownValue;
                              setState(() {});
                              if (_model.priorityLevel == 'High') {
                                _model.priorityInteger = 2;
                                setState(() {});
                                return;
                              } else {
                                if (_model.priorityLevel == 'Medium') {
                                  _model.priorityInteger = 1;
                                  setState(() {});
                                  return;
                                } else {
                                  if (_model.priorityLevel == 'Low') {
                                    _model.priorityInteger = 0;
                                    setState(() {});
                                    return;
                                  } else {
                                    return;
                                  }
                                }
                              }
                            },
                            height: 45.0,
                            textStyle: GoogleFonts.getFont(
                              'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14.0,
                            ),
                            hintText: 'Please Select One',
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            elevation: 0.0,
                            borderColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderWidth: 0.0,
                            borderRadius: 12.0,
                            margin: EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isOverButton: false,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Container(
                    height: MediaQuery.sizeOf(context).height * 0.65,
                    decoration: BoxDecoration(
                      color: Color(0x4DBBD1EA),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          40.0, 33.0, 40.0, 30.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 20.0, 0.0),
                                child: Text(
                                  'List of Property Inspectors',
                                  style: GoogleFonts.getFont(
                                    'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: wrapWithModel(
                              model: _model.piFoundModel,
                              updateCallback: () => setState(() {}),
                              child: PiFoundWidget(
                                location: _model.cityPI!,
                                roleName: 'Property Inspector',
                              ),
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
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x33000000),
                      offset: Offset(
                        0.0,
                        -4.0,
                      ),
                      spreadRadius: 0.0,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30.0, 16.0, 30.0, 30.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                          text: 'Cancel',
                          options: FFButtonOptions(
                            width: 345.0,
                            height: 36.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                    ),
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Builder(
                        builder: (context) => Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              var _shouldSetState = false;
                              if (getJsonField(
                                    FFAppState().assignedPI,
                                    r'''$.userId''',
                                  ) !=
                                  null) {
                                _model.refreshTokenRespPI =
                                    await RefreshTokenAPICall.call(
                                  clientId: FFAppConstants.clientId,
                                  clientSecret: FFAppConstants.clientSecret,
                                  grantType: FFAppConstants.refreshGrantType,
                                  refreshToken: FFAppState().refreshToken,
                                );

                                _shouldSetState = true;
                                if ((_model.refreshTokenRespPI?.succeeded ??
                                    true)) {
                                  FFAppState().accessToken = getJsonField(
                                    (_model.refreshTokenRespPI?.jsonBody ?? ''),
                                    r'''$.access_token''',
                                  ).toString();
                                  FFAppState().refreshToken = getJsonField(
                                    (_model.refreshTokenRespPI?.jsonBody ?? ''),
                                    r'''$.refresh_token''',
                                  ).toString();
                                  setState(() {});
                                  _model.apiResultPIDashboard =
                                      await LiferayBaseUrlGroup
                                          .assigningToPICall
                                          .call(
                                    accessToken: FFAppState().accessToken,
                                    articleId: widget.articleId,
                                    assignedPhase: 1,
                                    assignedToUserId: int.parse(getJsonField(
                                      FFAppState().assignedPI,
                                      r'''$.userId''',
                                    ).toString()),
                                    externalPropertyId: widget.propertyId,
                                    priority: _model.priorityInteger,
                                  );

                                  _shouldSetState = true;
                                  if ((_model.apiResultPIDashboard?.succeeded ??
                                      true)) {
                                    Navigator.pop(context);
                                    await showDialog(
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  0.0, -1.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.3,
                                            child: PiAssignedSuccessWidget(),
                                          ),
                                        );
                                      },
                                    ).then((value) => setState(() {}));

                                    if (_shouldSetState) setState(() {});
                                    return;
                                  } else {
                                    await showDialog(
                                      context: context,
                                      builder: (alertDialogContext) {
                                        return AlertDialog(
                                          title: Text('Error !'),
                                          content: Text(
                                              'Something went wrong. Please try again after some time!'),
                                          actions: [
                                            TextButton(
                                              onPressed: () => Navigator.pop(
                                                  alertDialogContext),
                                              child: Text('Ok'),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                    if (_shouldSetState) setState(() {});
                                    return;
                                  }
                                } else {
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

                                  if (_shouldSetState) setState(() {});
                                  return;
                                }
                              } else {
                                await showDialog(
                                  context: context,
                                  builder: (alertDialogContext) {
                                    return AlertDialog(
                                      title: Text('Alert !'),
                                      content: Text(
                                          'Please Select Property Inspector.'),
                                      actions: [
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(alertDialogContext),
                                          child: Text('Ok'),
                                        ),
                                      ],
                                    );
                                  },
                                );
                                if (_shouldSetState) setState(() {});
                                return;
                              }

                              if (_shouldSetState) setState(() {});
                            },
                            text: 'Assign',
                            options: FFButtonOptions(
                              width: 345.0,
                              height: 36.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context).primary,
                              textStyle: FlutterFlowTheme.of(context)
                                  .labelSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(12.0),
                            ),
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
    );
  }
}
