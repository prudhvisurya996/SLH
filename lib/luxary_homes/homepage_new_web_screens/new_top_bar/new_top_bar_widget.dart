import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/luxary_homes/profile/menu_for_web/menu_for_web_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_top_bar_model.dart';
export 'new_top_bar_model.dart';

class NewTopBarWidget extends StatefulWidget {
  const NewTopBarWidget({
    super.key,
    bool? showSearchFilter,
  }) : this.showSearchFilter = showSearchFilter ?? true;

  final bool showSearchFilter;

  @override
  State<NewTopBarWidget> createState() => _NewTopBarWidgetState();
}

class _NewTopBarWidgetState extends State<NewTopBarWidget> {
  late NewTopBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewTopBarModel());

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
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
            desktop: false,
          ))
            Padding(
              padding: EdgeInsets.all(12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
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

                      FFAppState().searchDates = [];
                      FFAppState().searchCity = '';
                      FFAppState().searchGuests = 0;
                      FFAppState().searchLocality = '';
                      FFAppState().priceMin = 500.0;
                      FFAppState().priceMax = 99999.0;
                      FFAppState().userFilterPropertyType = [];
                      setState(() {});
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: SvgPicture.asset(
                        'assets/images/sid_logo.svg',
                        width: 38.0,
                        height: 38.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          if (responsiveVisibility(
            context: context,
            phone: false,
            tablet: false,
            tabletLandscape: false,
          ))
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 12.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: () {
                      if (MediaQuery.sizeOf(context).width < 1536.0) {
                        return 49.0;
                      } else if (MediaQuery.sizeOf(context).width < 1750.0) {
                        return 90.0;
                      } else if (MediaQuery.sizeOf(context).width > 1536.0) {
                        return 110.0;
                      } else {
                        return 0.0;
                      }
                    }(),
                    decoration: BoxDecoration(),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
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

                      FFAppState().searchDates = [];
                      FFAppState().searchCity = '';
                      FFAppState().searchGuests = 0;
                      FFAppState().searchLocality = '';
                      FFAppState().priceMin = 500.0;
                      FFAppState().priceMax = 99999.0;
                      FFAppState().userFilterPropertyType = [];
                      setState(() {});
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: SvgPicture.asset(
                        'assets/images/web_sid_lh_logo.svg',
                        width: 200.0,
                        height: 50.0,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/phoen_1.png',
                                        width: 25.0,
                                        height: 25.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: SelectionArea(
                                          child: Text(
                                        '+91 9090909090',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: Color(0xFF878787),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                        ),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    30.0, 0.0, 0.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/email_1.png',
                                        width: 25.0,
                                        height: 25.0,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: SelectionArea(
                                          child: Text(
                                        'info@sidluxuryhomes.com',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          color: Color(0xFF878787),
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                        ),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            if ((FFAppState().accessToken != null &&
                                    FFAppState().accessToken != '') &&
                                responsiveVisibility(
                                  context: context,
                                  phone: false,
                                  tablet: false,
                                  tabletLandscape: false,
                                ))
                              Builder(
                                builder: (context) => InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    await showDialog(
                                      barrierColor: Color(0xCC000D3E),
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (dialogContext) {
                                        return Dialog(
                                          elevation: 0,
                                          insetPadding: EdgeInsets.zero,
                                          backgroundColor: Colors.transparent,
                                          alignment: AlignmentDirectional(
                                                  1.0, -1.0)
                                              .resolve(
                                                  Directionality.of(context)),
                                          child: MenuForWebWidget(),
                                        );
                                      },
                                    ).then((value) => setState(() {}));
                                  },
                                  child: Container(
                                    width: 88.0,
                                    height: 36.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
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
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          11.0, 8.0, 7.0, 8.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Menu',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                          Container(
                                            width: 20.0,
                                            height: 20.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: FaIcon(
                                                FontAwesomeIcons.solidUser,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                size: 10.0,
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
                      ],
                    ),
                  ),
                  Container(
                    width: () {
                      if (MediaQuery.sizeOf(context).width < 1536.0) {
                        return 45.0;
                      } else if (MediaQuery.sizeOf(context).width < 1750.0) {
                        return 90.0;
                      } else if (MediaQuery.sizeOf(context).width > 1536.0) {
                        return 120.0;
                      } else {
                        return 0.0;
                      }
                    }(),
                    decoration: BoxDecoration(),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
