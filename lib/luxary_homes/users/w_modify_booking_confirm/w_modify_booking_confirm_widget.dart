import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/users/modify_booking_submit/modify_booking_submit_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'w_modify_booking_confirm_model.dart';
export 'w_modify_booking_confirm_model.dart';

class WModifyBookingConfirmWidget extends StatefulWidget {
  const WModifyBookingConfirmWidget({super.key});

  @override
  State<WModifyBookingConfirmWidget> createState() =>
      _WModifyBookingConfirmWidgetState();
}

class _WModifyBookingConfirmWidgetState
    extends State<WModifyBookingConfirmWidget> {
  late WModifyBookingConfirmModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WModifyBookingConfirmModel());

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

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
        tabletLandscape: false,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 5.0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Modify Booking Dates',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.getFont(
                        'Work Sans',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
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
                    if (MediaQuery.sizeOf(context).width < 991.0) {
                      Navigator.pop(context);
                    } else {
                      Navigator.pop(context);
                    }
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
          Divider(
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(50.0, 18.0, 50.0, 15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0x4CBBD1EA),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(40.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'Are you sure you want to continue your booking.',
                              style: GoogleFonts.getFont(
                                'Work Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                              ),
                            )
                          ],
                          style: GoogleFonts.getFont(
                            'Work Sans',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.w600,
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 6.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Flexible(
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Note: ',
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        '\nBooking modification available only one time for the booked property.',
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontSize: 16.0,
                                    ),
                                  )
                                ],
                                style: GoogleFonts.getFont(
                                  'Poppins',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Builder(
              builder: (context) => Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 18.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    var _shouldSetState = false;
                    _model.modifyBookingRefreshTokenResp =
                        await RefreshTokenAPICall.call(
                      clientId: FFAppConstants.clientId,
                      clientSecret: FFAppConstants.clientSecret,
                      grantType: FFAppConstants.refreshGrantType,
                      refreshToken: FFAppState().refreshToken,
                    );

                    _shouldSetState = true;
                    if ((_model.modifyBookingRefreshTokenResp?.succeeded ??
                        true)) {
                      FFAppState().accessToken = getJsonField(
                        (_model.modifyBookingRefreshTokenResp?.jsonBody ?? ''),
                        r'''$.access_token''',
                      ).toString();
                      FFAppState().refreshToken = getJsonField(
                        (_model.modifyBookingRefreshTokenResp?.jsonBody ?? ''),
                        r'''$.refresh_token''',
                      ).toString();
                      FFAppState().update(() {});
                      _model.modifyBookingApiResp = await LiferayBaseUrlGroup
                          .modifyBookingDetailsCall
                          .call(
                        accessToken: FFAppState().accessToken,
                        bookingId: FFAppState().ModifyBookingPage.bookingId,
                        propertyId: FFAppState().ModifyBookingPage.propertyId,
                        articleId: FFAppState().ModifyBookingPage.articleId,
                        checkOut: dateTimeFormat(
                            'yyyy-MM-dd', FFAppState().selectedDateRange.last),
                        checkIn: dateTimeFormat(
                            'yyyy-MM-dd', FFAppState().selectedDateRange.first),
                        totalGuests: FFAppState().ModifyBookingPage.guestCount,
                      );

                      _shouldSetState = true;
                      if ((_model.modifyBookingApiResp?.succeeded ?? true)) {
                        if (MediaQuery.sizeOf(context).width < 660.0) {
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
                                child: ModifyBookingSubmitWidget(),
                              );
                            },
                          ).then((value) => safeSetState(() {}));

                          if (_shouldSetState) setState(() {});
                          return;
                        } else {
                          Navigator.pop(context);
                          await showDialog(
                            barrierDismissible: false,
                            context: context,
                            builder: (dialogContext) {
                              return Dialog(
                                elevation: 0,
                                insetPadding: EdgeInsets.zero,
                                backgroundColor: Colors.transparent,
                                alignment: AlignmentDirectional(0.0, -1.0)
                                    .resolve(Directionality.of(context)),
                                child: ModifyBookingSubmitWidget(),
                              );
                            },
                          ).then((value) => setState(() {}));

                          if (_shouldSetState) setState(() {});
                          return;
                        }
                      } else {
                        await showDialog(
                          context: context,
                          builder: (alertDialogContext) {
                            return AlertDialog(
                              title: Text('Alert'),
                              content: Text(
                                  'Something Went Wrong. please try again after sometime.'),
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

                    if (_shouldSetState) setState(() {});
                  },
                  text: 'Confirm Booking',
                  options: FFButtonOptions(
                    width: 350.0,
                    height: 36.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Poppins',
                          letterSpacing: 0.0,
                        ),
                    elevation: 4.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
