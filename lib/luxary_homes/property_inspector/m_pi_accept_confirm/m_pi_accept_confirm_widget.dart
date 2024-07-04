import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/phone_num_login/phone_num_login_widget.dart';
import '/luxary_homes/property_inspector/pi_property_success/pi_property_success_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'm_pi_accept_confirm_model.dart';
export 'm_pi_accept_confirm_model.dart';

class MPiAcceptConfirmWidget extends StatefulWidget {
  const MPiAcceptConfirmWidget({
    super.key,
    required this.reviewId,
    required this.reviewComments,
  });

  final int? reviewId;
  final String? reviewComments;

  @override
  State<MPiAcceptConfirmWidget> createState() => _MPiAcceptConfirmWidgetState();
}

class _MPiAcceptConfirmWidgetState extends State<MPiAcceptConfirmWidget> {
  late MPiAcceptConfirmModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MPiAcceptConfirmModel());

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
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Alert!',
              style: GoogleFonts.getFont(
                'Work Sans',
                color: Color(0xFFD70000),
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 16.0),
              child: Text(
                'Are you good to Accept the property\nInspection?',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Work Sans',
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'Cancel',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    textStyle: GoogleFonts.getFont(
                      'Work Sans',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 14.0,
                    ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                Builder(
                  builder: (context) => FFButtonWidget(
                    onPressed: () async {
                      var _shouldSetState = false;
                      _model.refreshRespPIdetailView =
                          await RefreshTokenAPICall.call(
                        clientId: FFAppConstants.clientId,
                        clientSecret: FFAppConstants.clientSecret,
                        grantType: FFAppConstants.refreshGrantType,
                        refreshToken: FFAppState().refreshToken,
                      );

                      _shouldSetState = true;
                      if ((_model.refreshRespPIdetailView?.succeeded ?? true)) {
                        FFAppState().accessToken = getJsonField(
                          (_model.refreshRespPIdetailView?.jsonBody ?? ''),
                          r'''$.access_token''',
                        ).toString();
                        FFAppState().refreshToken = getJsonField(
                          (_model.refreshRespPIdetailView?.jsonBody ?? ''),
                          r'''$.refresh_token''',
                        ).toString();
                        setState(() {});
                        _model.piStatusUpdateRespMobile =
                            await LiferayBaseUrlGroup.pIStatusUpdateCall.call(
                          accessToken: FFAppState().accessToken,
                          reviewId: widget.reviewId,
                          status: 1,
                          comments: widget.reviewComments,
                        );

                        _shouldSetState = true;
                        if ((_model.piStatusUpdateRespMobile?.succeeded ??
                            true)) {
                          Navigator.pop(context);
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            isDismissible: false,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.47,
                                  child: PiPropertySuccessWidget(
                                    message: 'Property Accepted successfully!',
                                  ),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));

                          if (_shouldSetState) setState(() {});
                          return;
                        } else {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('Information'),
                                content: Text('Something went wrong'),
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
                      } else {
                        await showDialog(
                          barrierColor: Color(0xCC000D3E),
                          barrierDismissible: false,
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: Container(
                                height: MediaQuery.sizeOf(context).height * 0.9,
                                width: MediaQuery.sizeOf(context).width * 0.3,
                                child: PhoneNumLoginWidget(),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));

                        if (_shouldSetState) setState(() {});
                        return;
                      }

                      if (_shouldSetState) setState(() {});
                    },
                    text: 'Accept',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle: GoogleFonts.getFont(
                        'Work Sans',
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 14.0,
                      ),
                      elevation: 3.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
