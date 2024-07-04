import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/users/user_pages/trips/trips_components/modify_booking/submit_m_b/submit_m_b_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'confirm_manage_booking_form_m_model.dart';
export 'confirm_manage_booking_form_m_model.dart';

class ConfirmManageBookingFormMWidget extends StatefulWidget {
  const ConfirmManageBookingFormMWidget({super.key});

  @override
  State<ConfirmManageBookingFormMWidget> createState() =>
      _ConfirmManageBookingFormMWidgetState();
}

class _ConfirmManageBookingFormMWidgetState
    extends State<ConfirmManageBookingFormMWidget> {
  late ConfirmManageBookingFormMModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfirmManageBookingFormMModel());

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
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12.0, 12.0, 12.0, 5.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Modify Booking',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Poppins',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
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
          padding: EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: RichText(
                  textScaler: MediaQuery.of(context).textScaler,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Are you sure you want to continue your booking.',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.w500,
                          fontSize: 18.0,
                        ),
                      )
                    ],
                    style: GoogleFonts.getFont(
                      'Poppins',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 6.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      child: RichText(
                        textScaler: MediaQuery.of(context).textScaler,
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'Note: Booking modification available only one time for the booked property.',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                              ),
                            )
                          ],
                          style: GoogleFonts.getFont(
                            'Poppins',
                            color: FlutterFlowTheme.of(context).primaryText,
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
        Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 24.0),
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
                if ((_model.modifyBookingRefreshTokenResp?.succeeded ?? true)) {
                  FFAppState().update(() {
                    FFAppState().accessToken = getJsonField(
                      (_model.modifyBookingRefreshTokenResp?.jsonBody ?? ''),
                      r'''$.access_token''',
                    ).toString();
                    FFAppState().refreshToken = getJsonField(
                      (_model.modifyBookingRefreshTokenResp?.jsonBody ?? ''),
                      r'''$.refresh_token''',
                    ).toString();
                  });
                  _model.modifyBookingApiResp =
                      await LiferayBaseUrlGroup.modifyBookingDetailsCall.call(
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
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      isDismissible: false,
                      enableDrag: false,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: SubmitMBWidget(),
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
                  FFAppState().update(() {
                    FFAppState().hostAddressDetail =
                        HostAddressDetailsStruct.fromSerializableMap(
                            jsonDecode('{\"availability\":\"[]\"}'));
                    FFAppState().propertyType = jsonDecode(
                        '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                    FFAppState().basicDetailsBeds = 1;
                    FFAppState().basicDetailsGuests = 1;
                    FFAppState().basicDetailsBathrooms = 1;
                    FFAppState().propertyBasicData = BasicDetailsStruct();
                    FFAppState().selectedAMNames = [];
                    FFAppState().tellAboutYourProperty =
                        TellYourPropertyStruct();
                    FFAppState().webHostStepIndex = 0;
                    FFAppState().SavedRoute = '';
                    FFAppState().propertyPrice = 0;
                    FFAppState().basicDetailsBedrooms = 1;
                    FFAppState().SelectedAmenities = [];
                    FFAppState().webHostSaveRoute = 0;
                    FFAppState().accessToken = '';
                    FFAppState().refreshToken = '';
                  });

                  context.pushNamed(
                    'HomePage',
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
                width: 180.0,
                height: 36.0,
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
      ],
    );
  }
}
