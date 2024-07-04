import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/common_components/phone_login_component/phone_login_component_widget.dart';
import '/luxary_homes/profile/change_password_components/change_password_component/change_password_component_widget.dart';
import '/luxary_homes/profile/help_components/contact_us_component/contact_us_component_widget.dart';
import '/luxary_homes/profile/personal_information_components/personal_information_component/personal_information_component_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menufor_mb_model.dart';
export 'menufor_mb_model.dart';

class MenuforMbWidget extends StatefulWidget {
  const MenuforMbWidget({super.key});

  @override
  State<MenuforMbWidget> createState() => _MenuforMbWidgetState();
}

class _MenuforMbWidgetState extends State<MenuforMbWidget> {
  late MenuforMbModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuforMbModel());

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

    return Align(
      alignment: AlignmentDirectional(1.0, 0.0),
      child: Container(
        width: 300.0,
        height: MediaQuery.sizeOf(context).height * 1.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(0.0),
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(0.0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 24.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                      child: Text(
                        'Menu',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          Navigator.pop(context);
                        },
                        child: FaIcon(
                          FontAwesomeIcons.windowClose,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (FFAppState().accessToken != null &&
                  FFAppState().accessToken != '')
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 14.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF616161),
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(2.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: CachedNetworkImage(
                              fadeInDuration: Duration(milliseconds: 500),
                              fadeOutDuration: Duration(milliseconds: 500),
                              imageUrl:
                                  'https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjJ8fHVzZXJzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
                              width: 44.0,
                              height: 44.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      FFAppState().userData.firstName,
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          4.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        FFAppState().userData.lastName,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                FFAppState().userData.emailAddress,
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
                    ],
                  ),
                ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              if (FFAppState().userData.isHost &&
                  (FFAppState().accessToken != null &&
                      FFAppState().accessToken != ''))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 19.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (FFAppState().SavedRoute == null ||
                          FFAppState().SavedRoute == '') {
                        context.pushNamed(
                          'StartHosting',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.fade,
                            ),
                          },
                        );
                      } else {
                        if (MediaQuery.sizeOf(context).width < 500.0) {
                          await actions.hosterRouteManagement(
                            context,
                            FFAppState().SavedRoute,
                          );
                        }
                      }
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/house-building.svg',
                                        width: 22.0,
                                        height: 22.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 12.0, 0.0),
                                    child: Text(
                                      'Host My Property',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 4.0, 0.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/host.svg',
                                        height: 10.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if (FFAppState().accessToken != null &&
                  FFAppState().accessToken != '')
                Builder(
                  builder: (context) => Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 19.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (MediaQuery.sizeOf(context).width < 991.0) {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            useSafeArea: true,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: PersonalInformationComponentWidget(),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
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
                                alignment: AlignmentDirectional(0.0, -1.0)
                                    .resolve(Directionality.of(context)),
                                child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.8,
                                  width: MediaQuery.sizeOf(context).width * 0.3,
                                  child: PersonalInformationComponentWidget(),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        }
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 20.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/user.svg',
                                          width: 22.0,
                                          height: 22.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Personal Information',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              if (FFAppState().accessToken != null &&
                  FFAppState().accessToken != '')
                Builder(
                  builder: (context) => Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 19.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (MediaQuery.sizeOf(context).width < 991.0) {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            useSafeArea: true,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: ChangePasswordComponentWidget(),
                              );
                            },
                          ).then((value) => safeSetState(() {}));
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
                                alignment: AlignmentDirectional(0.0, -1.0)
                                    .resolve(Directionality.of(context)),
                                child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.8,
                                  width: MediaQuery.sizeOf(context).width * 0.3,
                                  child: ChangePasswordComponentWidget(),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        }
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 12.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 20.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/shield-keyhole.svg',
                                          width: 22.0,
                                          height: 22.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Login & Security',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              height: 1.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 19.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().TermsAndConditions =
                          TermsAndConditionsStruct(
                        articleName: FFAppConstants.privacy,
                      );
                    });

                    context.pushNamed(
                      'TermsPrivacyCookiesPage',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                        ),
                      },
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: SvgPicture.asset(
                                      'assets/images/file-certificate.svg',
                                      width: 22.0,
                                      height: 22.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Privacy & Policy',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Builder(
                builder: (context) => Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 19.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      if (MediaQuery.sizeOf(context).width < 991.0) {
                        await showModalBottomSheet(
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          enableDrag: false,
                          useSafeArea: true,
                          context: context,
                          builder: (context) {
                            return Padding(
                              padding: MediaQuery.viewInsetsOf(context),
                              child: ContactUsComponentWidget(),
                            );
                          },
                        ).then((value) => safeSetState(() {}));
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
                              alignment: AlignmentDirectional(0.0, -1.0)
                                  .resolve(Directionality.of(context)),
                              child: Container(
                                height: MediaQuery.sizeOf(context).height * 0.8,
                                width: MediaQuery.sizeOf(context).width * 0.3,
                                child: ContactUsComponentWidget(),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));
                      }
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/help.svg',
                                        width: 22.0,
                                        height: 22.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Help',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 19.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().TermsAndConditions =
                          TermsAndConditionsStruct(
                        articleName: FFAppConstants.terms,
                      );
                    });

                    context.pushNamed(
                      'TermsPrivacyCookiesPage',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                        ),
                      },
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: SvgPicture.asset(
                                      'assets/images/file-signature.svg',
                                      width: 22.0,
                                      height: 22.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Terms & Conditions',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 19.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    setState(() {
                      FFAppState().TermsAndConditions =
                          TermsAndConditionsStruct(
                        articleName: FFAppConstants.cookie,
                      );
                    });

                    context.pushNamed(
                      'TermsPrivacyCookiesPage',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                        ),
                      },
                    );
                  },
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 12.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 20.0, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(0.0),
                                    child: SvgPicture.asset(
                                      'assets/images/file-signature.svg',
                                      width: 22.0,
                                      height: 22.0,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Text(
                                  'Cookies Policy',
                                  style: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                        child: Container(
                          width: double.infinity,
                          height: 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (FFAppState().accessToken != null &&
                  FFAppState().accessToken != '')
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 19.0, 0.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      var _shouldSetState = false;
                      _model.logoutRefreshTokenResp3 =
                          await RefreshTokenAPICall.call(
                        clientId: FFAppConstants.clientId,
                        clientSecret: FFAppConstants.clientSecret,
                        grantType: FFAppConstants.refreshGrantType,
                        refreshToken: FFAppState().refreshToken,
                      );
                      _shouldSetState = true;
                      if ((_model.logoutRefreshTokenResp3?.succeeded ?? true)) {
                        FFAppState().update(() {
                          FFAppState().accessToken = getJsonField(
                            (_model.logoutRefreshTokenResp3?.jsonBody ?? ''),
                            r'''$.access_token''',
                          ).toString();
                          FFAppState().refreshToken = getJsonField(
                            (_model.logoutRefreshTokenResp3?.jsonBody ?? ''),
                            r'''$.refresh_token''',
                          ).toString();
                        });
                        _model.logoutAPIRespMobile = await LogOutCall.call(
                          accessToken: FFAppState().accessToken,
                          refreshToken: FFAppState().refreshToken,
                        );
                        _shouldSetState = true;
                        if ((_model.logoutAPIRespMobile?.succeeded ?? true)) {
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
                            FFAppState().propertyBasicData =
                                BasicDetailsStruct();
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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 0.0, 12.0, 19.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 20.0, 0.0),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: SvgPicture.asset(
                                        'assets/images/logout.svg',
                                        width: 22.0,
                                        height: 22.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    'Log Out',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium
                                        .override(
                                          fontFamily: 'Poppins',
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: 1.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              if (FFAppState().accessToken == null ||
                  FFAppState().accessToken == '')
                Builder(
                  builder: (context) => Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 19.0, 0.0, 0.0),
                    child: InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        if (MediaQuery.sizeOf(context).width < 991.0) {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            isDismissible: false,
                            enableDrag: false,
                            useSafeArea: true,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.65,
                                  child: PhoneLoginComponentWidget(),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));

                          return;
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
                                alignment: AlignmentDirectional(0.0, -1.0)
                                    .resolve(Directionality.of(context)),
                                child: Container(
                                  height:
                                      MediaQuery.sizeOf(context).height * 0.9,
                                  width: MediaQuery.sizeOf(context).width * 0.3,
                                  child: PhoneLoginComponentWidget(),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));

                          return;
                        }
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 19.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 20.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(0.0),
                                        child: SvgPicture.asset(
                                          'assets/images/logout.svg',
                                          width: 22.0,
                                          height: 22.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'Log In',
                                      style: FlutterFlowTheme.of(context)
                                          .headlineMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 15.0),
                  child: Container(
                    width: 250.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Color(0xFFF6F6F6),
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).alternate,
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: 115.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: Color(0xFFE0E3E7),
                                  width: 1.0,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.sunny,
                                    color: Color(0xFF101213),
                                    size: 16.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Light Mode',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF101213),
                                            fontSize: 14.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              width: 115.0,
                              height: 100.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFF6F6F6),
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: Color(0xFFF6F6F6),
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.nightlight_round,
                                    color: Color(0xFF101213),
                                    size: 16.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        4.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Dark Mode',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Color(0xFF101213),
                                            fontSize: 14.0,
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
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
