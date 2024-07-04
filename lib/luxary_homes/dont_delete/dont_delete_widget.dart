import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/common_top_bar/common_top_bar_widget.dart';
import '/luxary_homes/users/user_components/property_components/property_card/property_card_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'dont_delete_model.dart';
export 'dont_delete_model.dart';

class DontDeleteWidget extends StatefulWidget {
  const DontDeleteWidget({super.key});

  @override
  State<DontDeleteWidget> createState() => _DontDeleteWidgetState();
}

class _DontDeleteWidgetState extends State<DontDeleteWidget> {
  late DontDeleteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DontDeleteModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().updateBookingDetailsPageStruct(
          (e) => e
            ..priceValue = null
            ..taxPercent = null
            ..title = null
            ..locality = null
            ..city = null
            ..guestCount = null
            ..availableFromDate = null
            ..bookedDates = null
            ..propTypes = null
            ..bedCount = null
            ..bedRoomCount = null
            ..propId = null
            ..bathRoomCount = null
            ..articleId = null,
        );
        FFAppState().updateAdminLeasePropertyDetailViewStruct(
          (e) => e
            ..status = null
            ..propertyId = null
            ..city = null
            ..articleId = null,
        );
        FFAppState().updateManageBookingDetailsStruct(
          (e) => e..bookingId = null,
        );
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          key: scaffoldKey,
          body: Stack(
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                wrapWithModel(
                  model: _model.commonTopBarModel,
                  updateCallback: () => setState(() {}),
                  child: CommonTopBarWidget(
                    showSearchFilter: true,
                  ),
                ),
              if (_model.launch &&
                  responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                Stack(
                  children: [
                    if (_model.pageViewCurrentIndex == 0)
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0.0),
                          bottomRight: Radius.circular(0.0),
                          topLeft: Radius.circular(0.0),
                          topRight: Radius.circular(0.0),
                        ),
                        child: Image.asset(
                          'assets/images/contemporary_421632-6601.png',
                          width: double.infinity,
                          height: double.infinity,
                          fit: BoxFit.fill,
                        ),
                      ),
                    Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.transparent, Color(0xFF5246ED)],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(0.69, -1.0),
                          end: AlignmentDirectional(-0.69, 1.0),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              height: 500.0,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 40.0),
                                    child: PageView(
                                      controller: _model.pageViewController ??=
                                          PageController(initialPage: 0),
                                      onPageChanged: (_) => setState(() {}),
                                      scrollDirection: Axis.horizontal,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        40.0, 50.0, 0.0, 0.0),
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: SvgPicture.asset(
                                                    'assets/images/Group_1000005996.svg',
                                                    width: 80.0,
                                                    height: 80.0,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  200.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Perfect choice',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      43.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontStyle:
                                                                      FontStyle
                                                                          .italic,
                                                                ),
                                                      ),
                                                    ),
                                                    Text(
                                                      'for your',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Work Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            fontSize: 43.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                    ),
                                                    Text(
                                                      'property',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Work Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            fontSize: 43.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  53.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Our vision is to revolutionize the way people find and secure accommodation, providing a user-centric platform that simplifies the booking process. ',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 80.0, 0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/Group_13_Copy.svg',
                                                  width: double.infinity,
                                                  height: 244.0,
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Private homes, villas, and apartments',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Work Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            fontSize: 43.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  53.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'We prioritize safety, transparency,\nand flexibility in both booking and leasing, ensuring that our platform serves the diverse needs of travelers and property owners alike.',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 80.0, 0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/Character_1_.svg',
                                                  width: 385.0,
                                                  height: 244.0,
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Begin your hosting journey with us',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Work Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            fontSize: 43.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  53.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'We prioritize safety, transparency,\nand flexibility in both booking and leasing, ensuring that our platform serves the diverse needs of travelers and property owners alike.',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 80.0, 0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/Character.svg',
                                                  width: 385.0,
                                                  height: 244.0,
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Find the\nperfect place\nto stay',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Work Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            fontSize: 43.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  53.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'We prioritize safety, transparency,\nand flexibility in both booking and leasing, ensuring that our platform serves the diverse needs of travelers and property owners alike.',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/29119327_Person_buying_house_1.png',
                                                  width: double.infinity,
                                                  height: 324.0,
                                                  fit: BoxFit.fitWidth,
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        20.0, 0.0, 0.0, 0.0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Find the \nperfect place \nto stay',
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Work Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBackground,
                                                            fontSize: 43.0,
                                                            letterSpacing: 0.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontStyle: FontStyle
                                                                .italic,
                                                          ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  53.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'We prioritize safety, transparency, \nand flexibility in both booking and leasing, ensuring that our platform serves the diverse needs of travelers and property owners alike.',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      20.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(0.0, 1.0),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 16.0),
                                      child: smooth_page_indicator
                                          .SmoothPageIndicator(
                                        controller:
                                            _model.pageViewController ??=
                                                PageController(initialPage: 0),
                                        count: 5,
                                        axisDirection: Axis.horizontal,
                                        onDotClicked: (i) async {
                                          await _model.pageViewController!
                                              .animateToPage(
                                            i,
                                            duration:
                                                Duration(milliseconds: 500),
                                            curve: Curves.ease,
                                          );
                                        },
                                        effect: smooth_page_indicator
                                            .ExpandingDotsEffect(
                                          expansionFactor: 3.0,
                                          spacing: 5.0,
                                          radius: 15.0,
                                          dotWidth: 30.0,
                                          dotHeight: 4.0,
                                          dotColor: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          activeDotColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          paintStyle: PaintingStyle.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 40.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      30.0, 0.0, 0.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      setState(() {
                                        _model.home = true;
                                        _model.launch = false;
                                      });
                                    },
                                    child: Text(
                                      'Skip',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Work Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 30.0, 0.0),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Button pressed ...');
                                    },
                                    text: 'Sign Up  →',
                                    options: FFButtonOptions(
                                      height: 40.0,
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      iconPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 16.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      elevation: 3.0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              if ((_model.home == true) &&
                  responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 101.0, 0.0, 0.0),
                  child: Stack(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 145.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFE3C9FF),
                                      Color(0xFF7FD2D8)
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(0.69, -1.0),
                                    end: AlignmentDirectional(-0.69, 1.0),
                                  ),
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Flexible(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            32.0, 17.0, 0.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Get the perfect  ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 5.0, 0.0, 0.0),
                                              child: Text(
                                                'Home',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Work Sans',
                                                      color: Color(0xFF5246ED),
                                                      fontSize: 18.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: Text(
                                                '25% Off',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Work Sans',
                                                      color: Color(0xFFAC341A),
                                                      fontSize: 26.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: SvgPicture.asset(
                                          'assets/images/Group_13_Copy.svg',
                                          width: 135.0,
                                          height: 135.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 16.0, 0.0, 0.0),
                                child: Text(
                                  'What are you',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Work Sans',
                                        fontSize: 35.0,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16.0, 5.0, 0.0, 0.0),
                                child: RichText(
                                  textScaler: MediaQuery.of(context).textScaler,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: 'Looking ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: Color(0xFF072A3E),
                                              fontSize: 35.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                      TextSpan(
                                        text: 'for ?',
                                        style: GoogleFonts.getFont(
                                          'Work Sans',
                                          fontWeight: FontWeight.w300,
                                          fontSize: 35.0,
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
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 12.0, 16.0, 0.0),
                              child: FutureBuilder<ApiCallResponse>(
                                future: LiferayBaseUrlGroup.getPropertyTypesCall
                                    .call(),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: SizedBox(
                                        width: 40.0,
                                        height: 40.0,
                                        child: SpinKitPulse(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          size: 40.0,
                                        ),
                                      ),
                                    );
                                  }
                                  final rowGetPropertyTypesResponse =
                                      snapshot.data!;
                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 50.0,
                                          height: 50.0,
                                          decoration: BoxDecoration(
                                            color: Color(0xFFE1E7FE),
                                            borderRadius:
                                                BorderRadius.circular(50.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              child: SvgPicture.asset(
                                                'assets/images/house.svg',
                                                width: 2.0,
                                                height: 2.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            getJsonField(
                                              rowGetPropertyTypesResponse
                                                  .jsonBody,
                                              r'''$[0].name''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  27.0, 0.0, 0.0, 0.0),
                                          child: Container(
                                            width: 50.0,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFF6E6F6),
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(8.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/villa.svg',
                                                  width: 2.0,
                                                  height: 2.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            getJsonField(
                                              rowGetPropertyTypesResponse
                                                  .jsonBody,
                                              r'''$[1].name''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  27.0, 0.0, 0.0, 0.0),
                                          child: Container(
                                            width: 50.0,
                                            height: 50.0,
                                            decoration: BoxDecoration(
                                              color: Color(0xFFCDEDF1),
                                              borderRadius:
                                                  BorderRadius.circular(50.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(10.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                child: SvgPicture.asset(
                                                  'assets/images/Group.svg',
                                                  width: 2.0,
                                                  height: 2.0,
                                                  fit: BoxFit.contain,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            getJsonField(
                                              rowGetPropertyTypesResponse
                                                  .jsonBody,
                                              r'''$[2].name''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Work Sans',
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 25.0, 16.0, 0.0),
                              child: Container(
                                width: double.infinity,
                                height: 84.0,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF4980D3),
                                      Color(0xFF111D49)
                                    ],
                                    stops: [0.0, 1.0],
                                    begin: AlignmentDirectional(1.0, -0.98),
                                    end: AlignmentDirectional(-1.0, 0.98),
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        child: Image.asset(
                                          'assets/images/aviso_1.png',
                                          width: 57.0,
                                          height: 57.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          15.0, 0.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 2.0),
                                            child: Text(
                                              '15% discount',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 2.0, 0.0, 0.0),
                                            child: Text(
                                              'on all our packages',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Work Sans',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            11.0, 0.0, 0.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/image_2.png',
                                            width: 119.0,
                                            height: 119.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 25.0, 16.0, 0.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          5.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Recent Properties',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Work Sans',
                                              fontSize: 24.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ),
                                  ),
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          context.pushNamed('listings');
                                        },
                                        child: Text(
                                          'See All',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Work Sans',
                                                color: Color(0xFF375FE3),
                                                fontSize: 15.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            5.0, 0.0, 0.0, 0.0),
                                        child: Icon(
                                          Icons.navigate_next,
                                          color: Color(0xFF325EF1),
                                          size: 24.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: MediaQuery.sizeOf(context).height * 0.62,
                              decoration: BoxDecoration(),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10.0, 10.0, 10.0, 0.0),
                                child: RefreshIndicator(
                                  onRefresh: () async {
                                    setState(() => _model
                                        .listViewPagingController
                                        ?.refresh());
                                    await _model.waitForOnePageForListView();
                                  },
                                  child: PagedListView<ApiPagingParams,
                                      dynamic>.separated(
                                    pagingController:
                                        _model.setListViewController(
                                      (nextPageMarker) =>
                                          MicroserviceAvailabilityAPIsGroup
                                              .propertyListingsCall
                                              .call(
                                        pageLoadItemsCount:
                                            MediaQuery.sizeOf(context).width <=
                                                    500.0
                                                ? 4
                                                : 8,
                                        pageNoCount: functions.incrementOne(
                                                    nextPageMarker
                                                        .nextPageNumber) >=
                                                0
                                            ? (nextPageMarker.nextPageNumber +
                                                1)
                                            : -1,
                                      ),
                                    ),
                                    padding: EdgeInsets.zero,
                                    shrinkWrap: true,
                                    reverse: false,
                                    scrollDirection: Axis.vertical,
                                    separatorBuilder: (_, __) =>
                                        SizedBox(height: 3.0),
                                    builderDelegate:
                                        PagedChildBuilderDelegate<dynamic>(
                                      // Customize what your widget looks like when it's loading the first page.
                                      firstPageProgressIndicatorBuilder: (_) =>
                                          Center(
                                        child: SizedBox(
                                          width: 40.0,
                                          height: 40.0,
                                          child: SpinKitPulse(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 40.0,
                                          ),
                                        ),
                                      ),
                                      // Customize what your widget looks like when it's loading another page.
                                      newPageProgressIndicatorBuilder: (_) =>
                                          Center(
                                        child: SizedBox(
                                          width: 40.0,
                                          height: 40.0,
                                          child: SpinKitPulse(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 40.0,
                                          ),
                                        ),
                                      ),

                                      itemBuilder: (context, _,
                                          propertyListingDataIndex) {
                                        final propertyListingDataItem = _model
                                                .listViewPagingController!
                                                .itemList![
                                            propertyListingDataIndex];
                                        return Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  5.0, 0.0, 5.0, 10.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              setState(() {
                                                FFAppState()
                                                        .PropertyDetailsPage =
                                                    PropertyDetailsPageStruct(
                                                  articleId: getJsonField(
                                                    propertyListingDataItem,
                                                    r'''$.articleId''',
                                                  ).toString(),
                                                );
                                              });

                                              context.pushNamed(
                                                  'PropertyDetailsPage');
                                            },
                                            child: Container(
                                              decoration: BoxDecoration(),
                                              child: Hero(
                                                tag: 'propertyDetailsPage',
                                                transitionOnUserGestures: true,
                                                child: Material(
                                                  color: Colors.transparent,
                                                  child: PropertyCardWidget(
                                                    key: Key(
                                                        'Keydvt_${propertyListingDataIndex}_of_${_model.listViewPagingController!.itemList!.length}'),
                                                    pageName: 'home',
                                                    title:
                                                        valueOrDefault<String>(
                                                      getJsonField(
                                                        propertyListingDataItem,
                                                        r'''$.title''',
                                                      )?.toString(),
                                                      'NA',
                                                    ),
                                                    price:
                                                        valueOrDefault<double>(
                                                      getJsonField(
                                                        propertyListingDataItem,
                                                        r'''$.basePrice''',
                                                      ),
                                                      0.0,
                                                    ),
                                                    propertyType:
                                                        valueOrDefault<String>(
                                                      getJsonField(
                                                        propertyListingDataItem,
                                                        r'''$.propertyType''',
                                                      )?.toString(),
                                                      'NA',
                                                    ),
                                                    imageList: functions
                                                        .listDataConversion(
                                                            getJsonField(
                                                      propertyListingDataItem,
                                                      r'''$.imageURLs''',
                                                    ).toString()),
                                                    propertyArticleid:
                                                        valueOrDefault<String>(
                                                      getJsonField(
                                                        propertyListingDataItem,
                                                        r'''$.articleId''',
                                                      )?.toString(),
                                                      'NA',
                                                    ),
                                                    locality: getJsonField(
                                                      propertyListingDataItem,
                                                      r'''$.locality''',
                                                    ).toString(),
                                                    city: getJsonField(
                                                      propertyListingDataItem,
                                                      r'''$.city''',
                                                    ).toString(),
                                                    averageRating: getJsonField(
                                                      propertyListingDataItem,
                                                      r'''$.averageRating''',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
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
                ),
              if ((_model.home == true) &&
                  responsiveVisibility(
                    context: context,
                    desktop: false,
                  ))
                Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: wrapWithModel(
                    model: _model.navBarModel,
                    updateCallback: () => setState(() {}),
                    child: NavBarWidget(
                      index: 0,
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
