import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/profile/web_menu_components/profile_for_web/profile_for_web_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_for_web_model.dart';
export 'menu_for_web_model.dart';

class MenuForWebWidget extends StatefulWidget {
  const MenuForWebWidget({super.key});

  @override
  State<MenuForWebWidget> createState() => _MenuForWebWidgetState();
}

class _MenuForWebWidgetState extends State<MenuForWebWidget> {
  late MenuForWebModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuForWebModel());

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
      width: 415.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).primaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x33000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Menu',
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Poppins',
                        letterSpacing: 0.0,
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
                  child: Container(
                    width: 88.0,
                    height: 36.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 4.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(11.0, 8.0, 7.0, 8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Close',
                            style:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Poppins',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                          Container(
                            width: 20.0,
                            height: 20.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              shape: BoxShape.circle,
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(0.0, 0.0),
                              child: FaIcon(
                                FontAwesomeIcons.solidUser,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 10.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 24.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);

                  context.pushNamed(
                    'ExplorePage',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                      ),
                    },
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: SvgPicture.asset(
                            'assets/images/house-building.svg',
                            width: 20.0,
                            height: 20.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              18.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Home',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: Container(
                width: double.infinity,
                height: 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 8.0, 0.0, 8.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);

                  context.pushNamed(
                    'TripsPage',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(0.0),
                          child: SvgPicture.asset(
                            'assets/images/map-location.svg',
                            width: 20.0,
                            height: 20.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              18.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Trips',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Poppins',
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 36.0,
                      height: 36.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBgOpacity,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.chevron_right_rounded,
                        color: FlutterFlowTheme.of(context).primary,
                        size: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
            Builder(
              builder: (context) => Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 8.0, 0.0, 8.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.pop(context);
                    await showDialog(
                      barrierColor: Color(0xCC000D3E),
                      barrierDismissible: false,
                      context: context,
                      builder: (dialogContext) {
                        return Dialog(
                          elevation: 0,
                          insetPadding: EdgeInsets.zero,
                          backgroundColor: Colors.transparent,
                          alignment: AlignmentDirectional(1.0, -1.0)
                              .resolve(Directionality.of(context)),
                          child: ProfileForWebWidget(),
                        );
                      },
                    ).then((value) => setState(() {}));
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(0.0),
                            child: SvgPicture.asset(
                              'assets/images/user.svg',
                              width: 20.0,
                              height: 20.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                18.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Profile',
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 36.0,
                        height: 36.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBgOpacity,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.chevron_right_rounded,
                          color: FlutterFlowTheme.of(context).primary,
                          size: 30.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 16.0, 0.0, 16.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  var _shouldSetState = false;
                  _model.logoutRefreshTokenResp1 =
                      await RefreshTokenAPICall.call(
                    clientId: FFAppConstants.clientId,
                    clientSecret: FFAppConstants.clientSecret,
                    grantType: FFAppConstants.refreshGrantType,
                    refreshToken: FFAppState().refreshToken,
                  );
                  _shouldSetState = true;
                  if ((_model.logoutRefreshTokenResp1?.succeeded ?? true)) {
                    FFAppState().update(() {
                      FFAppState().accessToken = getJsonField(
                        (_model.logoutRefreshTokenResp1?.jsonBody ?? ''),
                        r'''$.access_token''',
                      ).toString();
                      FFAppState().refreshToken = getJsonField(
                        (_model.logoutRefreshTokenResp1?.jsonBody ?? ''),
                        r'''$.refresh_token''',
                      ).toString();
                    });
                    _model.logoutAPIRespMenu = await LogOutCall.call(
                      accessToken: FFAppState().accessToken,
                      refreshToken: FFAppState().refreshToken,
                    );
                    _shouldSetState = true;
                    if ((_model.logoutAPIRespMenu?.succeeded ?? true)) {
                      Navigator.pop(context);
                      setState(() {
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
                      });

                      context.goNamed(
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
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: SvgPicture.asset(
                        'assets/images/arrow-right-from-bracket.svg',
                        width: 20.0,
                        height: 20.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Log Out',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Poppins',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
