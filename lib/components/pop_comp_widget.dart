import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/users/cancellation_reason/cancellation_reason_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pop_comp_model.dart';
export 'pop_comp_model.dart';

class PopCompWidget extends StatefulWidget {
  const PopCompWidget({
    super.key,
    required this.bookingId,
    required this.amountPaid,
  });

  final String? bookingId;
  final double? amountPaid;

  @override
  State<PopCompWidget> createState() => _PopCompWidgetState();
}

class _PopCompWidgetState extends State<PopCompWidget> {
  late PopCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopCompModel());

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

    return Material(
      color: Colors.transparent,
      elevation: 2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        width: 200.0,
        height: 120.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 200.0,
              height: 50.0,
              decoration: BoxDecoration(),
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Modify Booking',
                  style: GoogleFonts.getFont(
                    'Work Sans',
                    color: FlutterFlowTheme.of(context).primaryText,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1.0,
              color: Color(0xFFE0E3FF),
            ),
            Builder(
              builder: (context) => InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  var _shouldSetState = false;
                  _model.refreshTokenRespCRWeb = await RefreshTokenAPICall.call(
                    clientId: FFAppConstants.clientId,
                    clientSecret: FFAppConstants.clientSecret,
                    grantType: FFAppConstants.refreshGrantType,
                    refreshToken: FFAppState().refreshToken,
                  );

                  _shouldSetState = true;
                  if ((_model.refreshTokenRespCRWeb?.succeeded ?? true)) {
                    FFAppState().accessToken = getJsonField(
                      (_model.refreshTokenRespCRWeb?.jsonBody ?? ''),
                      r'''$.access_token''',
                    ).toString();
                    FFAppState().refreshToken = getJsonField(
                      (_model.refreshTokenRespCRWeb?.jsonBody ?? ''),
                      r'''$.refresh_token''',
                    ).toString();
                    setState(() {});
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
                            height: MediaQuery.sizeOf(context).height * 0.8,
                            width: MediaQuery.sizeOf(context).width * 0.3,
                            child: CancellationReasonWidget(
                              bookingId: widget.bookingId!,
                              amountPaid: widget.amountPaid!,
                            ),
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
                          title: Text('Error'),
                          content:
                              Text('Your session is expired, please re-login.'),
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
                    _model.cancelBookingRequestResponse =
                        await RefreshTokenAPICall.call(
                      clientId: FFAppConstants.clientId,
                      clientSecret: FFAppConstants.clientSecret,
                      grantType: FFAppConstants.refreshGrantType,
                      refreshToken: FFAppState().refreshToken,
                    );

                    _shouldSetState = true;
                    if ((_model.cancelBookingRequestResponse?.succeeded ??
                        true)) {
                      FFAppState().accessToken = getJsonField(
                        (_model.cancelBookingRequestResponse?.jsonBody ?? ''),
                        r'''$.access_token''',
                      ).toString();
                      FFAppState().refreshToken = getJsonField(
                        (_model.cancelBookingRequestResponse?.jsonBody ?? ''),
                        r'''$.refresh_token''',
                      ).toString();
                      FFAppState().update(() {});
                      _model.logoutAPIRespCancelBooking = await LogOutCall.call(
                        accessToken: FFAppState().accessToken,
                        refreshToken: FFAppState().refreshToken,
                      );

                      _shouldSetState = true;
                      if ((_model.logoutAPIRespCancelBooking?.succeeded ??
                          true)) {
                        Navigator.pop(context);
                        FFAppState().accessToken = '';
                        FFAppState().refreshToken = '';
                        FFAppState().searchDates = [];
                        FFAppState().searchCity = '';
                        FFAppState().searchGuests = 0;
                        FFAppState().searchLocality = '';
                        FFAppState().priceMin = 500.0;
                        FFAppState().priceMax = 99999.0;
                        FFAppState().userFilterPropertyType = [];
                        FFAppState().searchResultCount = 0;
                        setState(() {});
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Info'),
                              content:
                                  Text('Please login to cancel your booking.'),
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
                      } else {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Info'),
                              content:
                                  Text('Please login to cancel your booking'),
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
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('Info'),
                            content:
                                Text('Please login to cancel your booking'),
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
                  }

                  if (_shouldSetState) setState(() {});
                },
                child: Container(
                  width: 200.0,
                  height: 50.0,
                  decoration: BoxDecoration(),
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Cancel Booking',
                      style: GoogleFonts.getFont(
                        'Work Sans',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
