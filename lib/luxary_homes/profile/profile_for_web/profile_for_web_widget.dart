import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/internal_host_journey/in_web_host_comp/in_web_host_comp_widget.dart';
import '/luxary_homes/profile/change_password/change_password_widget.dart';
import '/luxary_homes/profile/contact_us/contact_us_widget.dart';
import '/luxary_homes/profile/menu_for_web/menu_for_web_widget.dart';
import '/luxary_homes/profile/personal_info/personal_info_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'profile_for_web_model.dart';
export 'profile_for_web_model.dart';

class ProfileForWebWidget extends StatefulWidget {
  const ProfileForWebWidget({super.key});

  @override
  State<ProfileForWebWidget> createState() => _ProfileForWebWidgetState();
}

class _ProfileForWebWidgetState extends State<ProfileForWebWidget> {
  late ProfileForWebModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileForWebModel());

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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Builder(
                          builder: (context) => FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: 30.0,
                            fillColor:
                                FlutterFlowTheme.of(context).primaryBackground,
                            icon: Icon(
                              Icons.chevron_left,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              Navigator.pop(context);
                              await showDialog(
                                barrierColor: Color(0xCB000D3E),
                                barrierDismissible: false,
                                context: context,
                                builder: (dialogContext) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: EdgeInsets.zero,
                                    backgroundColor: Colors.transparent,
                                    alignment: AlignmentDirectional(1.0, -1.0)
                                        .resolve(Directionality.of(context)),
                                    child: MenuForWebWidget(),
                                  );
                                },
                              ).then((value) => setState(() {}));
                            },
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Profile',
                          style: GoogleFonts.getFont(
                            'Work Sans',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      ),
                    ],
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
                              style: FlutterFlowTheme.of(context)
                                  .bodyLarge
                                  .override(
                                    fontFamily: 'Work Sans',
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
            ),
            if (FFAppState().userData.isHost)
              Builder(
                builder: (context) => Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 8.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      await showDialog(
                        barrierColor: Color(0xCB000D3E),
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
                              height: MediaQuery.sizeOf(context).height * 0.75,
                              width: MediaQuery.sizeOf(context).width * 0.85,
                              child: InWebHostCompWidget(),
                            ),
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
                                'Host My Property',
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  9.0, 0.0, 0.0, 0.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(0.0),
                                child: SvgPicture.asset(
                                  'assets/images/host.svg',
                                  width: 32.0,
                                  height: 10.0,
                                  fit: BoxFit.cover,
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
            if (FFAppState().userData.isHost)
              Container(
                width: double.infinity,
                height: 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            if (FFAppState().userData.isHost)
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
                      'in_host_dashboard',
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
                              'assets/images/host_dashboard.svg',
                              width: 20.0,
                              height: 20.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                18.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'My Dashboard',
                              style: GoogleFonts.getFont(
                                'Work Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                9.0, 0.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(0.0),
                              child: SvgPicture.asset(
                                'assets/images/host.svg',
                                width: 32.0,
                                height: 10.0,
                                fit: BoxFit.cover,
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
            if (FFAppState().userData.isHost)
              Container(
                width: double.infinity,
                height: 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            if (FFAppState().userData.isAdmin &&
                responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ))
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
                      'pm_dashboard',
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
                              'assets/images/host_dashboard.svg',
                              width: 20.0,
                              height: 20.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                18.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'PM Dashboard',
                              style: GoogleFonts.getFont(
                                'Work Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
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
            if (FFAppState().userData.isAdmin)
              Container(
                width: double.infinity,
                height: 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
              ),
            if (FFAppState().userData.isAT &&
                responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ))
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(10.0, 8.0, 0.0, 8.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.pop(context);
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
                              'assets/images/host_dashboard.svg',
                              width: 20.0,
                              height: 20.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                18.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'AT Dashboard',
                              style: GoogleFonts.getFont(
                                'Work Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
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
            Container(
              width: double.infinity,
              height: 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
            if (FFAppState().userData.isPI &&
                responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ))
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
                      'web_pi_dashboard',
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
                              'assets/images/host_dashboard.svg',
                              width: 20.0,
                              height: 20.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                18.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'PI Dashboard',
                              style: GoogleFonts.getFont(
                                'Work Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
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
            if (FFAppState().userData.isPI)
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
                            child: PersonalInfoWidget(),
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
                              child: PersonalInfoWidget(),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
                    }
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
                              'Personal Information',
                              style: GoogleFonts.getFont(
                                'Work Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
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
            if ((!FFAppState().userData.isAdmin &&
                    !FFAppState().userData.isHost &&
                    !FFAppState().userData.isPI) &&
                responsiveVisibility(
                  context: context,
                  phone: false,
                  tablet: false,
                  tabletLandscape: false,
                ))
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
                      'ex_host_dashboard',
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
                              'assets/images/host_dashboard.svg',
                              width: 20.0,
                              height: 20.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                18.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'My Dashboard',
                              style: GoogleFonts.getFont(
                                'Work Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
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
                            child: ChangePasswordWidget(),
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
                              child: ChangePasswordWidget(),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
                    }
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
                              'assets/images/shield-keyhole.svg',
                              width: 20.0,
                              height: 20.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                18.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Login & Security',
                              style: GoogleFonts.getFont(
                                'Work Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
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
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 8.0, 0.0, 8.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);
                  FFAppState().TermsAndConditions = TermsAndConditionsStruct(
                    articleName: FFAppConstants.privacy,
                  );
                  setState(() {});

                  context.pushNamed(
                    'terms_and_conditions',
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
                            'assets/images/file-certificate.svg',
                            width: 20.0,
                            height: 20.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              18.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Privacy & Policy',
                            style: GoogleFonts.getFont(
                              'Work Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
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
                            child: ContactUsWidget(),
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
                              child: ContactUsWidget(),
                            ),
                          );
                        },
                      ).then((value) => setState(() {}));
                    }
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
                              'assets/images/book-blank.svg',
                              width: 20.0,
                              height: 20.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                18.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Help',
                              style: GoogleFonts.getFont(
                                'Work Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
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
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 8.0, 0.0, 8.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  Navigator.pop(context);
                  FFAppState().TermsAndConditions = TermsAndConditionsStruct(
                    articleName: FFAppConstants.terms,
                  );
                  setState(() {});

                  context.pushNamed(
                    'terms_and_conditions',
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
                            'assets/images/file-signature.svg',
                            width: 20.0,
                            height: 20.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              18.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Terms & Conditions',
                            style: GoogleFonts.getFont(
                              'Work Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
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
            Container(
              width: double.infinity,
              height: 1.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
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
                  FFAppState().TermsAndConditions = TermsAndConditionsStruct(
                    articleName: FFAppConstants.cookie,
                  );
                  setState(() {});

                  context.pushNamed(
                    'terms_and_conditions',
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
                            'assets/images/file-signature.svg',
                            width: 20.0,
                            height: 20.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              18.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Cookies Policy',
                            style: GoogleFonts.getFont(
                              'Work Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
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
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(10.0, 16.0, 0.0, 16.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  var _shouldSetState = false;
                  _model.logoutRefreshTokenResp2 =
                      await RefreshTokenAPICall.call(
                    clientId: FFAppConstants.clientId,
                    clientSecret: FFAppConstants.clientSecret,
                    grantType: FFAppConstants.refreshGrantType,
                    refreshToken: FFAppState().refreshToken,
                  );

                  _shouldSetState = true;
                  if ((_model.logoutRefreshTokenResp2?.succeeded ?? true)) {
                    FFAppState().accessToken = getJsonField(
                      (_model.logoutRefreshTokenResp2?.jsonBody ?? ''),
                      r'''$.access_token''',
                    ).toString();
                    FFAppState().refreshToken = getJsonField(
                      (_model.logoutRefreshTokenResp2?.jsonBody ?? ''),
                      r'''$.refresh_token''',
                    ).toString();
                    FFAppState().update(() {});
                    _model.logoutAPIRespWeb = await LogOutCall.call(
                      accessToken: FFAppState().accessToken,
                      refreshToken: FFAppState().refreshToken,
                    );

                    _shouldSetState = true;
                    if ((_model.logoutAPIRespWeb?.succeeded ?? true)) {
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
                      FFAppState().updateUserDataStruct(
                        (e) => e
                          ..firstName = null
                          ..lastName = null
                          ..dateOfBirth = null
                          ..phoneNumber = null
                          ..emailAddress = null
                          ..isAdmin = null
                          ..isHost = null
                          ..userId = null
                          ..isPI = null
                          ..isAT = null,
                      );
                      FFAppState().propertyBookingDetails =
                          PropertyBookingDetailsStruct();
                      setState(() {});

                      context.goNamed(
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
                    } else {
                      FFAppState().propertyType = jsonDecode(
                          '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                      FFAppState().selectedAMNames = [];
                      FFAppState().webHostStepIndex = 0;
                      FFAppState().SavedRoute = '';
                      FFAppState().SelectedAmenities = [];
                      FFAppState().webHostSaveRoute = 0;
                      FFAppState().accessToken = '';
                      FFAppState().refreshToken = '';
                      FFAppState().internalPropertyHostingDetails =
                          InternalPropertyHostingDataStruct();
                      FFAppState().update(() {});

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
                    FFAppState().propertyType = jsonDecode(
                        '{\"primaryType\":\"Property Type\",\"imageIcon\":\"/documents/20119/c9230fd0-5ca5-b59a-9e58-2d398338f17e\",\"name\":\"Room\",\"description\":\"\",\"subType\":\"None\",\"id\":\"35207\",\"categoryId\":35071}');
                    FFAppState().selectedAMNames = [];
                    FFAppState().webHostStepIndex = 0;
                    FFAppState().SavedRoute = '';
                    FFAppState().SelectedAmenities = [];
                    FFAppState().webHostSaveRoute = 0;
                    FFAppState().accessToken = '';
                    FFAppState().refreshToken = '';
                    FFAppState().internalPropertyHostingDetails =
                        InternalPropertyHostingDataStruct();
                    FFAppState().update(() {});

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
                            'assets/images/arrow-right-from-bracket.svg',
                            width: 20.0,
                            height: 20.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              18.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Log Out',
                            style: GoogleFonts.getFont(
                              'Work Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ],
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
