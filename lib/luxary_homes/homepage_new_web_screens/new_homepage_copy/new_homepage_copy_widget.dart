import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/common_components/web_copy_write/web_copy_write_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_property_card/new_property_card_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/users/filter/filter_widget.dart';
import '/luxary_homes/users/search/search_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'new_homepage_copy_model.dart';
export 'new_homepage_copy_model.dart';

class NewHomepageCopyWidget extends StatefulWidget {
  const NewHomepageCopyWidget({super.key});

  @override
  State<NewHomepageCopyWidget> createState() => _NewHomepageCopyWidgetState();
}

class _NewHomepageCopyWidgetState extends State<NewHomepageCopyWidget> {
  late NewHomepageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewHomepageCopyModel());

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
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF2F2F2),
        endDrawer: Container(
          width: MediaQuery.sizeOf(context).width * 0.85,
          child: Drawer(
            elevation: 16.0,
            child: Visibility(
              visible: responsiveVisibility(
                context: context,
                phone: false,
              ),
              child: Align(
                alignment: AlignmentDirectional(-1.0, 0.0),
                child: wrapWithModel(
                  model: _model.loginFormModel,
                  updateCallback: () => setState(() {}),
                  child: LoginFormWidget(),
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Visibility(
            visible: responsiveVisibility(
              context: context,
              phone: false,
              tablet: false,
              tabletLandscape: false,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  children: [
                    wrapWithModel(
                      model: _model.newTopBarModel,
                      updateCallback: () => setState(() {}),
                      child: NewTopBarWidget(
                        showSearchFilter: false,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          scaffoldKey.currentState!.openDrawer();
                        },
                        child: Icon(
                          Icons.settings_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Flexible(
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 24.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 91.0,
                                decoration: BoxDecoration(),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 80.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Flexible(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(),
                                                  child: Container(
                                                    width: 700.0,
                                                    height: 245.0,
                                                    child: Stack(
                                                      children: [
                                                        PageView(
                                                          controller: _model
                                                                  .pageViewController1 ??=
                                                              PageController(
                                                                  initialPage:
                                                                      0),
                                                          onPageChanged: (_) =>
                                                              setState(() {}),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          children: [
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    GradientText(
                                                                      'We are India’s Most Celebrated Rental Spaces',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        fontSize:
                                                                            36.0,
                                                                      ),
                                                                      colors: [
                                                                        FlutterFlowTheme.of(context)
                                                                            .primary,
                                                                        Color(
                                                                            0xFFA51FF6)
                                                                      ],
                                                                      gradientDirection:
                                                                          GradientDirection
                                                                              .ltr,
                                                                      gradientType:
                                                                          GradientType
                                                                              .linear,
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          18.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Text(
                                                                        'Our vision is to revolutionize the way people find and secure accommodation, providing a user-centric platform that simplifies the booking process. ',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              Color(0xFF475569),
                                                                          fontSize:
                                                                              18.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            12.0),
                                                                border:
                                                                    Border.all(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 1.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        25.0),
                                                            child: smooth_page_indicator
                                                                .SmoothPageIndicator(
                                                              controller: _model
                                                                      .pageViewController1 ??=
                                                                  PageController(
                                                                      initialPage:
                                                                          0),
                                                              count: 3,
                                                              axisDirection: Axis
                                                                  .horizontal,
                                                              onDotClicked:
                                                                  (i) async {
                                                                await _model
                                                                    .pageViewController1!
                                                                    .animateToPage(
                                                                  i,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          500),
                                                                  curve: Curves
                                                                      .ease,
                                                                );
                                                                setState(() {});
                                                              },
                                                              effect: smooth_page_indicator
                                                                  .ExpandingDotsEffect(
                                                                expansionFactor:
                                                                    3.0,
                                                                spacing: 8.0,
                                                                radius: 16.0,
                                                                dotWidth: 16.0,
                                                                dotHeight: 8.0,
                                                                dotColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent1,
                                                                activeDotColor:
                                                                    FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                paintStyle:
                                                                    PaintingStyle
                                                                        .fill,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 162.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Color(0xFFA51FF6),
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                      ],
                                                      stops: [0.0, 0.3, 1.0],
                                                      begin:
                                                          AlignmentDirectional(
                                                              1.0, 0.0),
                                                      end: AlignmentDirectional(
                                                          -1.0, 0),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100.0),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'Download App',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Work Sans',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 16.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 83.0, 0.0, 0.0),
                                                  child: Container(
                                                    width: 351.0,
                                                    height: 145.0,
                                                    decoration: BoxDecoration(
                                                      gradient: LinearGradient(
                                                        colors: [
                                                          Color(0xFFE3C9FF),
                                                          Color(0xFF7FD2D8)
                                                        ],
                                                        stops: [0.0, 1.0],
                                                        begin:
                                                            AlignmentDirectional(
                                                                0.69, -1.0),
                                                        end:
                                                            AlignmentDirectional(
                                                                -0.69, 1.0),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20.0),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        32.0,
                                                                        17.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Get the perfect  ',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    'Home',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Work Sans',
                                                                          color:
                                                                              Color(0xFF5246ED),
                                                                          fontSize:
                                                                              18.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '25% Off',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Work Sans',
                                                                          color:
                                                                              Color(0xFFAC341A),
                                                                          fontSize:
                                                                              26.0,
                                                                          letterSpacing:
                                                                              0.0,
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
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: SvgPicture
                                                                .asset(
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
                                              ],
                                            ),
                                          ),
                                          Flexible(
                                            child: Container(
                                              width: 700.0,
                                              height: 480.0,
                                              child: PageView(
                                                controller: _model
                                                        .pageViewController2 ??=
                                                    PageController(
                                                        initialPage: 0),
                                                onPageChanged: (_) =>
                                                    setState(() {}),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              0.0),
                                                    ),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .end,
                                                            children: [
                                                              Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 1.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  width: 210.0,
                                                                  height: 81.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            12.0),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            12.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.network(
                                                                            'https://picsum.photos/seed/88/600',
                                                                            width:
                                                                                65.0,
                                                                            height:
                                                                                65.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Holiday Rentals',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                              ),
                                                                              RatingBar.builder(
                                                                                onRatingUpdate: (newValue) => setState(() => _model.ratingBarValue = newValue),
                                                                                itemBuilder: (context, index) => Icon(
                                                                                  Icons.star_rounded,
                                                                                  color: FlutterFlowTheme.of(context).tertiary,
                                                                                ),
                                                                                direction: Axis.horizontal,
                                                                                initialRating: _model.ratingBarValue ??= 3.0,
                                                                                unratedColor: FlutterFlowTheme.of(context).accent3,
                                                                                itemCount: 5,
                                                                                itemSize: 15.0,
                                                                                glowColor: FlutterFlowTheme.of(context).tertiary,
                                                                              ),
                                                                              RichText(
                                                                                textScaler: MediaQuery.of(context).textScaler,
                                                                                text: TextSpan(
                                                                                  children: [
                                                                                    TextSpan(
                                                                                      text: '3,000',
                                                                                      style: GoogleFonts.getFont(
                                                                                        'Work Sans',
                                                                                        color: Color(0xFFE93740),
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontSize: 16.0,
                                                                                      ),
                                                                                    ),
                                                                                    TextSpan(
                                                                                      text: ' ',
                                                                                      style: TextStyle(),
                                                                                    ),
                                                                                    TextSpan(
                                                                                      text: 'INR',
                                                                                      style: GoogleFonts.getFont(
                                                                                        'Work Sans',
                                                                                        color: Color(0xFFE93740),
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontSize: 16.0,
                                                                                      ),
                                                                                    )
                                                                                  ],
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        letterSpacing: 0.0,
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
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            16.0,
                                                                            0.0),
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 84.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    gradient:
                                                                        LinearGradient(
                                                                      colors: [
                                                                        Color(
                                                                            0xFF4980D3),
                                                                        Color(
                                                                            0xFF111D49)
                                                                      ],
                                                                      stops: [
                                                                        0.0,
                                                                        1.0
                                                                      ],
                                                                      begin: AlignmentDirectional(
                                                                          1.0,
                                                                          -0.98),
                                                                      end: AlignmentDirectional(
                                                                          -1.0,
                                                                          0.98),
                                                                    ),
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            10.0),
                                                                  ),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/aviso_1.png',
                                                                            width:
                                                                                57.0,
                                                                            height:
                                                                                57.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.center,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                                                                              child: Text(
                                                                                '15% discount',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Work Sans',
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      fontSize: 16.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                                                                              child: Text(
                                                                                'on all our packages',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Work Sans',
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      fontSize: 12.0,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Expanded(
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.asset(
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
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            5.0),
                                                                child: Material(
                                                                  color: Colors
                                                                      .transparent,
                                                                  elevation:
                                                                      1.0,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            100.0),
                                                                  ),
                                                                  child:
                                                                      Container(
                                                                    width:
                                                                        210.0,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              100.0),
                                                                    ),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                SvgPicture.asset(
                                                                              'assets/images/ya.svg',
                                                                              width: 38.0,
                                                                              height: 38.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              8.0,
                                                                              10.0,
                                                                              0.0,
                                                                              8.0),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Text(
                                                                                'Our Happy Customer',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontSize: 14.0,
                                                                                ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  FaIcon(
                                                                                    FontAwesomeIcons.solidStar,
                                                                                    color: Color(0xFFFFAC37),
                                                                                    size: 10.0,
                                                                                  ),
                                                                                  RichText(
                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: '4.9',
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Work Sans',
                                                                                            color: Color(0xFF575757),
                                                                                            fontWeight: FontWeight.w500,
                                                                                            fontSize: 12.0,
                                                                                          ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: ' ',
                                                                                          style: TextStyle(),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: '(',
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Work Sans',
                                                                                            color: Color(0xFF575757),
                                                                                            fontWeight: FontWeight.w500,
                                                                                            fontSize: 12.0,
                                                                                          ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: '1989',
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Work Sans',
                                                                                            color: Color(0xFF575757),
                                                                                            fontSize: 12.0,
                                                                                          ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: ' Reviews',
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Work Sans',
                                                                                            color: Color(0xFF575757),
                                                                                            fontSize: 12.0,
                                                                                          ),
                                                                                        ),
                                                                                        TextSpan(
                                                                                          text: ')',
                                                                                          style: TextStyle(),
                                                                                        )
                                                                                      ],
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Flexible(
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        15.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          18.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/mother-father-with-daughter-luggage-ready-travel_23-2149205282_1_(2).png',
                                                                fit: BoxFit
                                                                    .fitHeight,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
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
                                    Divider(
                                      thickness: 1.0,
                                      indent: 200.0,
                                      endIndent: 200.0,
                                      color: Color(0xFFE8E8E8),
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0.0, 0.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 48.0, 0.0, 0.0),
                                        child: RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'What are you ',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: Color(0xFF072A3E),
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 33.0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Looking ',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: Color(0xFF072A3E),
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 35.0,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'for ?',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: Color(0xFF072A3E),
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 33.0,
                                                ),
                                              )
                                            ],
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 25.0, 0.0, 0.0),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(22.0),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 12.0, 0.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Builder(
                                                builder: (context) => InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    if (MediaQuery.sizeOf(
                                                                context)
                                                            .width <
                                                        991.0) {
                                                      await showModalBottomSheet(
                                                        isScrollControlled:
                                                            true,
                                                        backgroundColor:
                                                            Colors.transparent,
                                                        isDismissible: false,
                                                        enableDrag: false,
                                                        useSafeArea: true,
                                                        context: context,
                                                        builder: (context) {
                                                          return GestureDetector(
                                                            onTap: () => _model
                                                                    .unfocusNode
                                                                    .canRequestFocus
                                                                ? FocusScope.of(
                                                                        context)
                                                                    .requestFocus(
                                                                        _model
                                                                            .unfocusNode)
                                                                : FocusScope.of(
                                                                        context)
                                                                    .unfocus(),
                                                            child: Padding(
                                                              padding: MediaQuery
                                                                  .viewInsetsOf(
                                                                      context),
                                                              child: Container(
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    0.9,
                                                                child:
                                                                    SearchWidget(),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          safeSetState(() {}));
                                                    } else {
                                                      await showDialog(
                                                        barrierColor:
                                                            Color(0xCC000D3E),
                                                        barrierDismissible:
                                                            false,
                                                        context: context,
                                                        builder:
                                                            (dialogContext) {
                                                          return Dialog(
                                                            elevation: 0,
                                                            insetPadding:
                                                                EdgeInsets.zero,
                                                            backgroundColor:
                                                                Colors
                                                                    .transparent,
                                                            alignment: AlignmentDirectional(
                                                                    0.0, 0.0)
                                                                .resolve(
                                                                    Directionality.of(
                                                                        context)),
                                                            child:
                                                                GestureDetector(
                                                              onTap: () => _model
                                                                      .unfocusNode
                                                                      .canRequestFocus
                                                                  ? FocusScope.of(
                                                                          context)
                                                                      .requestFocus(
                                                                          _model
                                                                              .unfocusNode)
                                                                  : FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child: Container(
                                                                height: MediaQuery.sizeOf(
                                                                            context)
                                                                        .height *
                                                                    1.0,
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.3,
                                                                child:
                                                                    SearchWidget(),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      ).then((value) =>
                                                          setState(() {}));
                                                    }
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Container(
                                                        width: 45.0,
                                                        height: 45.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    12.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    0.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    12.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    0.0),
                                                          ),
                                                        ),
                                                        alignment:
                                                            AlignmentDirectional(
                                                                0.0, 0.0),
                                                        child: FaIcon(
                                                          FontAwesomeIcons
                                                              .search,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          size: 20.0,
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 460.0,
                                                        height: 45.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          borderRadius:
                                                              BorderRadius.only(
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            bottomRight:
                                                                Radius.circular(
                                                                    12.0),
                                                            topLeft:
                                                                Radius.circular(
                                                                    0.0),
                                                            topRight:
                                                                Radius.circular(
                                                                    12.0),
                                                          ),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            width: 1.0,
                                                          ),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          children: [
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          5.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                FFAppState().searchCity !=
                                                                            null &&
                                                                        FFAppState().searchCity !=
                                                                            ''
                                                                    ? FFAppState()
                                                                        .searchCity
                                                                    : 'Any Place',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Work Sans',
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          3.0,
                                                                          0.0,
                                                                          3.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 4.0,
                                                                height: 4.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            2.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  FFAppState()
                                                                              .searchDates
                                                                              .length >
                                                                          0
                                                                      ? '${dateTimeFormat('MMMd', FFAppState().searchDates.first)} - ${dateTimeFormat('MMMd', FFAppState().searchDates.last)}'
                                                                      : 'Any Date',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          3.0,
                                                                          0.0,
                                                                          3.0,
                                                                          0.0),
                                                              child: Container(
                                                                width: 4.0,
                                                                height: 4.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  shape: BoxShape
                                                                      .circle,
                                                                ),
                                                              ),
                                                            ),
                                                            Flexible(
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            2.0,
                                                                            0.0,
                                                                            5.0,
                                                                            0.0),
                                                                child: Text(
                                                                  FFAppState().searchGuests >
                                                                          0
                                                                      ? '${FFAppState().searchGuests.toString()} Guests'
                                                                      : 'Guests',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyLarge
                                                                      .override(
                                                                        fontFamily:
                                                                            'Work Sans',
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
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
                                              SizedBox(
                                                height: 70.0,
                                                child: VerticalDivider(
                                                  thickness: 1.0,
                                                  indent: 10.0,
                                                  endIndent: 10.0,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        16.0, 0.0, 16.0, 0.0),
                                                child: FutureBuilder<
                                                    ApiCallResponse>(
                                                  future: LiferayBaseUrlGroup
                                                      .getPropertyTypesCall
                                                      .call(),
                                                  builder: (context, snapshot) {
                                                    // Customize what your widget looks like when it's loading.
                                                    if (!snapshot.hasData) {
                                                      return Center(
                                                        child: SizedBox(
                                                          width: 40.0,
                                                          height: 40.0,
                                                          child: SpinKitPulse(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            size: 40.0,
                                                          ),
                                                        ),
                                                      );
                                                    }
                                                    final rowGetPropertyTypesResponse =
                                                        snapshot.data!;
                                                    return SingleChildScrollView(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              setState(() {
                                                                FFAppState()
                                                                    .addToUserFilterPropertyType(
                                                                        getJsonField(
                                                                  rowGetPropertyTypesResponse
                                                                      .jsonBody,
                                                                  r'''$[0].categoryId''',
                                                                ));
                                                              });
                                                              if (FFAppState()
                                                                  .isEnableSearch) {
                                                                context.goNamed(
                                                                  'helper_page',
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              0),
                                                                    ),
                                                                  },
                                                                );
                                                              }

                                                              context.pushNamed(
                                                                'search_page',
                                                                extra: <String,
                                                                    dynamic>{
                                                                  kTransitionInfoKey:
                                                                      TransitionInfo(
                                                                    hasTransition:
                                                                        true,
                                                                    transitionType:
                                                                        PageTransitionType
                                                                            .fade,
                                                                    duration: Duration(
                                                                        milliseconds:
                                                                            0),
                                                                  ),
                                                                },
                                                              );

                                                              _model.filterOutputCopy1 =
                                                                  await MicroserviceAvailabilityAPIsGroup
                                                                      .searchFilterAPICall
                                                                      .call(
                                                                priceLowerLimit:
                                                                    FFAppState()
                                                                        .priceMin,
                                                                priceUpperLimit:
                                                                    FFAppState()
                                                                        .priceMax,
                                                                pageNumber: 1,
                                                                loaditemsCount:
                                                                    MediaQuery.sizeOf(context).width <=
                                                                            500.0
                                                                        ? 4
                                                                        : 8,
                                                                propertyTypeIds:
                                                                    functions.listTostrConversion(FFAppState()
                                                                        .userFilterPropertyType
                                                                        .toList()),
                                                                locality:
                                                                    FFAppState()
                                                                        .searchLocality,
                                                                city: FFAppState()
                                                                    .searchCity,
                                                                totalGuests:
                                                                    FFAppState()
                                                                        .searchGuests,
                                                                checkInDate: FFAppState()
                                                                            .searchDates
                                                                            .length >
                                                                        0
                                                                    ? dateTimeFormat(
                                                                        'yyyy-MM-dd',
                                                                        FFAppState()
                                                                            .searchDates
                                                                            .first)
                                                                    : null,
                                                                checkOutDate: FFAppState()
                                                                            .searchDates
                                                                            .length >
                                                                        0
                                                                    ? dateTimeFormat(
                                                                        'yyyy-MM-dd',
                                                                        FFAppState()
                                                                            .searchDates
                                                                            .last)
                                                                    : null,
                                                              );
                                                              if ((_model
                                                                      .filterOutputCopy1
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                          .searchResultCount =
                                                                      getJsonField(
                                                                    rowGetPropertyTypesResponse
                                                                        .jsonBody,
                                                                    r'''$.totalCount''',
                                                                  );
                                                                });
                                                              } else {
                                                                FFAppState()
                                                                    .update(() {
                                                                  FFAppState()
                                                                      .searchResultCount = 0;
                                                                });
                                                              }

                                                              setState(() {});
                                                            },
                                                            child: Container(
                                                              width: 50.0,
                                                              height: 50.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFE1E7FE),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            50.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(
                                                                            10.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              0.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/house.svg',
                                                                    width: 2.0,
                                                                    height: 2.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                setState(() {
                                                                  FFAppState()
                                                                      .addToUserFilterPropertyType(
                                                                          getJsonField(
                                                                    rowGetPropertyTypesResponse
                                                                        .jsonBody,
                                                                    r'''$[0].categoryId''',
                                                                  ));
                                                                });
                                                                if (FFAppState()
                                                                    .isEnableSearch) {
                                                                  context
                                                                      .goNamed(
                                                                    'helper_page',
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.fade,
                                                                        duration:
                                                                            Duration(milliseconds: 0),
                                                                      ),
                                                                    },
                                                                  );
                                                                }

                                                                context
                                                                    .pushNamed(
                                                                  'search_page',
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              0),
                                                                    ),
                                                                  },
                                                                );

                                                                _model.filterOutput =
                                                                    await MicroserviceAvailabilityAPIsGroup
                                                                        .searchFilterAPICall
                                                                        .call(
                                                                  priceLowerLimit:
                                                                      FFAppState()
                                                                          .priceMin,
                                                                  priceUpperLimit:
                                                                      FFAppState()
                                                                          .priceMax,
                                                                  pageNumber: 1,
                                                                  loaditemsCount:
                                                                      MediaQuery.sizeOf(context).width <=
                                                                              500.0
                                                                          ? 4
                                                                          : 8,
                                                                  propertyTypeIds:
                                                                      functions.listTostrConversion(FFAppState()
                                                                          .userFilterPropertyType
                                                                          .toList()),
                                                                  locality:
                                                                      FFAppState()
                                                                          .searchLocality,
                                                                  city: FFAppState()
                                                                      .searchCity,
                                                                  totalGuests:
                                                                      FFAppState()
                                                                          .searchGuests,
                                                                  checkInDate: FFAppState()
                                                                              .searchDates
                                                                              .length >
                                                                          0
                                                                      ? dateTimeFormat(
                                                                          'yyyy-MM-dd',
                                                                          FFAppState()
                                                                              .searchDates
                                                                              .first)
                                                                      : null,
                                                                  checkOutDate: FFAppState()
                                                                              .searchDates
                                                                              .length >
                                                                          0
                                                                      ? dateTimeFormat(
                                                                          'yyyy-MM-dd',
                                                                          FFAppState()
                                                                              .searchDates
                                                                              .last)
                                                                      : null,
                                                                );
                                                                if ((_model
                                                                        .filterOutput
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .searchResultCount =
                                                                        getJsonField(
                                                                      rowGetPropertyTypesResponse
                                                                          .jsonBody,
                                                                      r'''$.totalCount''',
                                                                    );
                                                                  });
                                                                } else {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                        .searchResultCount = 0;
                                                                  });
                                                                }

                                                                setState(() {});
                                                              },
                                                              child: Text(
                                                                getJsonField(
                                                                  rowGetPropertyTypesResponse
                                                                      .jsonBody,
                                                                  r'''$[0].name''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Work Sans',
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        27.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                setState(() {
                                                                  FFAppState()
                                                                      .addToUserFilterPropertyType(
                                                                          getJsonField(
                                                                    rowGetPropertyTypesResponse
                                                                        .jsonBody,
                                                                    r'''$[1].categoryId''',
                                                                  ));
                                                                });
                                                                if (FFAppState()
                                                                    .isEnableSearch) {
                                                                  context
                                                                      .goNamed(
                                                                    'helper_page',
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.fade,
                                                                        duration:
                                                                            Duration(milliseconds: 0),
                                                                      ),
                                                                    },
                                                                  );
                                                                }

                                                                context
                                                                    .pushNamed(
                                                                  'search_page',
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              0),
                                                                    ),
                                                                  },
                                                                );

                                                                _model.filter1Copy1 =
                                                                    await MicroserviceAvailabilityAPIsGroup
                                                                        .searchFilterAPICall
                                                                        .call(
                                                                  priceLowerLimit:
                                                                      FFAppState()
                                                                          .priceMin,
                                                                  priceUpperLimit:
                                                                      FFAppState()
                                                                          .priceMax,
                                                                  pageNumber: 1,
                                                                  loaditemsCount:
                                                                      MediaQuery.sizeOf(context).width <=
                                                                              500.0
                                                                          ? 4
                                                                          : 8,
                                                                  propertyTypeIds:
                                                                      functions.listTostrConversion(FFAppState()
                                                                          .userFilterPropertyType
                                                                          .toList()),
                                                                  locality:
                                                                      FFAppState()
                                                                          .searchLocality,
                                                                  city: FFAppState()
                                                                      .searchCity,
                                                                  totalGuests:
                                                                      FFAppState()
                                                                          .searchGuests,
                                                                  checkInDate: FFAppState()
                                                                              .searchDates
                                                                              .length >
                                                                          0
                                                                      ? dateTimeFormat(
                                                                          'yyyy-MM-dd',
                                                                          FFAppState()
                                                                              .searchDates
                                                                              .first)
                                                                      : null,
                                                                  checkOutDate: FFAppState()
                                                                              .searchDates
                                                                              .length >
                                                                          0
                                                                      ? dateTimeFormat(
                                                                          'yyyy-MM-dd',
                                                                          FFAppState()
                                                                              .searchDates
                                                                              .last)
                                                                      : null,
                                                                );
                                                                if ((_model
                                                                        .filter1Copy1
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .searchResultCount =
                                                                        getJsonField(
                                                                      rowGetPropertyTypesResponse
                                                                          .jsonBody,
                                                                      r'''$.totalCount''',
                                                                    );
                                                                  });
                                                                } else {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                        .searchResultCount = 0;
                                                                  });
                                                                }

                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFF6E6F6),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              50.0),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              6.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            0.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/villa.svg',
                                                                      width:
                                                                          3.0,
                                                                      height:
                                                                          3.0,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                setState(() {
                                                                  FFAppState()
                                                                      .addToUserFilterPropertyType(
                                                                          getJsonField(
                                                                    rowGetPropertyTypesResponse
                                                                        .jsonBody,
                                                                    r'''$[1].categoryId''',
                                                                  ));
                                                                });
                                                                if (FFAppState()
                                                                    .isEnableSearch) {
                                                                  context
                                                                      .goNamed(
                                                                    'helper_page',
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.fade,
                                                                        duration:
                                                                            Duration(milliseconds: 0),
                                                                      ),
                                                                    },
                                                                  );
                                                                }

                                                                context
                                                                    .pushNamed(
                                                                  'search_page',
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              0),
                                                                    ),
                                                                  },
                                                                );

                                                                _model.filter1 =
                                                                    await MicroserviceAvailabilityAPIsGroup
                                                                        .searchFilterAPICall
                                                                        .call(
                                                                  priceLowerLimit:
                                                                      FFAppState()
                                                                          .priceMin,
                                                                  priceUpperLimit:
                                                                      FFAppState()
                                                                          .priceMax,
                                                                  pageNumber: 1,
                                                                  loaditemsCount:
                                                                      MediaQuery.sizeOf(context).width <=
                                                                              500.0
                                                                          ? 4
                                                                          : 8,
                                                                  propertyTypeIds:
                                                                      functions.listTostrConversion(FFAppState()
                                                                          .userFilterPropertyType
                                                                          .toList()),
                                                                  locality:
                                                                      FFAppState()
                                                                          .searchLocality,
                                                                  city: FFAppState()
                                                                      .searchCity,
                                                                  totalGuests:
                                                                      FFAppState()
                                                                          .searchGuests,
                                                                  checkInDate: FFAppState()
                                                                              .searchDates
                                                                              .length >
                                                                          0
                                                                      ? dateTimeFormat(
                                                                          'yyyy-MM-dd',
                                                                          FFAppState()
                                                                              .searchDates
                                                                              .first)
                                                                      : null,
                                                                  checkOutDate: FFAppState()
                                                                              .searchDates
                                                                              .length >
                                                                          0
                                                                      ? dateTimeFormat(
                                                                          'yyyy-MM-dd',
                                                                          FFAppState()
                                                                              .searchDates
                                                                              .last)
                                                                      : null,
                                                                );
                                                                if ((_model
                                                                        .filter1
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .searchResultCount =
                                                                        getJsonField(
                                                                      rowGetPropertyTypesResponse
                                                                          .jsonBody,
                                                                      r'''$.totalCount''',
                                                                    );
                                                                  });
                                                                } else {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                        .searchResultCount = 0;
                                                                  });
                                                                }

                                                                setState(() {});
                                                              },
                                                              child: Text(
                                                                getJsonField(
                                                                  rowGetPropertyTypesResponse
                                                                      .jsonBody,
                                                                  r'''$[1].name''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Work Sans',
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        27.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                setState(() {
                                                                  FFAppState()
                                                                      .addToUserFilterPropertyType(
                                                                          getJsonField(
                                                                    rowGetPropertyTypesResponse
                                                                        .jsonBody,
                                                                    r'''$[2].categoryId''',
                                                                  ));
                                                                });
                                                                if (FFAppState()
                                                                    .isEnableSearch) {
                                                                  context
                                                                      .goNamed(
                                                                    'helper_page',
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.fade,
                                                                        duration:
                                                                            Duration(milliseconds: 0),
                                                                      ),
                                                                    },
                                                                  );
                                                                }

                                                                context
                                                                    .pushNamed(
                                                                  'search_page',
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              0),
                                                                    ),
                                                                  },
                                                                );

                                                                _model.filter2Copy1 =
                                                                    await MicroserviceAvailabilityAPIsGroup
                                                                        .searchFilterAPICall
                                                                        .call(
                                                                  priceLowerLimit:
                                                                      FFAppState()
                                                                          .priceMin,
                                                                  priceUpperLimit:
                                                                      FFAppState()
                                                                          .priceMax,
                                                                  pageNumber: 1,
                                                                  loaditemsCount:
                                                                      MediaQuery.sizeOf(context).width <=
                                                                              500.0
                                                                          ? 4
                                                                          : 8,
                                                                  propertyTypeIds:
                                                                      functions.listTostrConversion(FFAppState()
                                                                          .userFilterPropertyType
                                                                          .toList()),
                                                                  locality:
                                                                      FFAppState()
                                                                          .searchLocality,
                                                                  city: FFAppState()
                                                                      .searchCity,
                                                                  totalGuests:
                                                                      FFAppState()
                                                                          .searchGuests,
                                                                  checkInDate: FFAppState()
                                                                              .searchDates
                                                                              .length >
                                                                          0
                                                                      ? dateTimeFormat(
                                                                          'yyyy-MM-dd',
                                                                          FFAppState()
                                                                              .searchDates
                                                                              .first)
                                                                      : null,
                                                                  checkOutDate: FFAppState()
                                                                              .searchDates
                                                                              .length >
                                                                          0
                                                                      ? dateTimeFormat(
                                                                          'yyyy-MM-dd',
                                                                          FFAppState()
                                                                              .searchDates
                                                                              .last)
                                                                      : null,
                                                                );
                                                                if ((_model
                                                                        .filter2Copy1
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .searchResultCount =
                                                                        getJsonField(
                                                                      rowGetPropertyTypesResponse
                                                                          .jsonBody,
                                                                      r'''$.totalCount''',
                                                                    );
                                                                  });
                                                                } else {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                        .searchResultCount = 0;
                                                                  });
                                                                }

                                                                setState(() {});
                                                              },
                                                              child: Container(
                                                                width: 50.0,
                                                                height: 50.0,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: Color(
                                                                      0xFFCDEDF1),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              50.0),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              8.0),
                                                                  child:
                                                                      ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            6.0),
                                                                    child: Image
                                                                        .asset(
                                                                      'assets/images/Group_18499.png',
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        10.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                setState(() {
                                                                  FFAppState()
                                                                      .addToUserFilterPropertyType(
                                                                          getJsonField(
                                                                    rowGetPropertyTypesResponse
                                                                        .jsonBody,
                                                                    r'''$[2].categoryId''',
                                                                  ));
                                                                });
                                                                if (FFAppState()
                                                                    .isEnableSearch) {
                                                                  context
                                                                      .goNamed(
                                                                    'helper_page',
                                                                    extra: <String,
                                                                        dynamic>{
                                                                      kTransitionInfoKey:
                                                                          TransitionInfo(
                                                                        hasTransition:
                                                                            true,
                                                                        transitionType:
                                                                            PageTransitionType.fade,
                                                                        duration:
                                                                            Duration(milliseconds: 0),
                                                                      ),
                                                                    },
                                                                  );
                                                                }

                                                                context
                                                                    .pushNamed(
                                                                  'search_page',
                                                                  extra: <String,
                                                                      dynamic>{
                                                                    kTransitionInfoKey:
                                                                        TransitionInfo(
                                                                      hasTransition:
                                                                          true,
                                                                      transitionType:
                                                                          PageTransitionType
                                                                              .fade,
                                                                      duration: Duration(
                                                                          milliseconds:
                                                                              0),
                                                                    ),
                                                                  },
                                                                );

                                                                _model.filter2 =
                                                                    await MicroserviceAvailabilityAPIsGroup
                                                                        .searchFilterAPICall
                                                                        .call(
                                                                  priceLowerLimit:
                                                                      FFAppState()
                                                                          .priceMin,
                                                                  priceUpperLimit:
                                                                      FFAppState()
                                                                          .priceMax,
                                                                  pageNumber: 1,
                                                                  loaditemsCount:
                                                                      MediaQuery.sizeOf(context).width <=
                                                                              500.0
                                                                          ? 4
                                                                          : 8,
                                                                  propertyTypeIds:
                                                                      functions.listTostrConversion(FFAppState()
                                                                          .userFilterPropertyType
                                                                          .toList()),
                                                                  locality:
                                                                      FFAppState()
                                                                          .searchLocality,
                                                                  city: FFAppState()
                                                                      .searchCity,
                                                                  totalGuests:
                                                                      FFAppState()
                                                                          .searchGuests,
                                                                  checkInDate: FFAppState()
                                                                              .searchDates
                                                                              .length >
                                                                          0
                                                                      ? dateTimeFormat(
                                                                          'yyyy-MM-dd',
                                                                          FFAppState()
                                                                              .searchDates
                                                                              .first)
                                                                      : null,
                                                                  checkOutDate: FFAppState()
                                                                              .searchDates
                                                                              .length >
                                                                          0
                                                                      ? dateTimeFormat(
                                                                          'yyyy-MM-dd',
                                                                          FFAppState()
                                                                              .searchDates
                                                                              .last)
                                                                      : null,
                                                                );
                                                                if ((_model
                                                                        .filter2
                                                                        ?.succeeded ??
                                                                    true)) {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                            .searchResultCount =
                                                                        getJsonField(
                                                                      rowGetPropertyTypesResponse
                                                                          .jsonBody,
                                                                      r'''$.totalCount''',
                                                                    );
                                                                  });
                                                                } else {
                                                                  FFAppState()
                                                                      .update(
                                                                          () {
                                                                    FFAppState()
                                                                        .searchResultCount = 0;
                                                                  });
                                                                }

                                                                setState(() {});
                                                              },
                                                              child: Text(
                                                                getJsonField(
                                                                  rowGetPropertyTypesResponse
                                                                      .jsonBody,
                                                                  r'''$[2].name''',
                                                                ).toString(),
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Work Sans',
                                                                      fontSize:
                                                                          16.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                              Builder(
                                                builder: (context) => Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 0.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      if (MediaQuery.sizeOf(
                                                                  context)
                                                              .width <
                                                          991.0) {
                                                        await showModalBottomSheet(
                                                          isScrollControlled:
                                                              true,
                                                          backgroundColor:
                                                              Colors
                                                                  .transparent,
                                                          isDismissible: false,
                                                          enableDrag: false,
                                                          useSafeArea: true,
                                                          context: context,
                                                          builder: (context) {
                                                            return GestureDetector(
                                                              onTap: () => _model
                                                                      .unfocusNode
                                                                      .canRequestFocus
                                                                  ? FocusScope.of(
                                                                          context)
                                                                      .requestFocus(
                                                                          _model
                                                                              .unfocusNode)
                                                                  : FocusScope.of(
                                                                          context)
                                                                      .unfocus(),
                                                              child: Padding(
                                                                padding: MediaQuery
                                                                    .viewInsetsOf(
                                                                        context),
                                                                child:
                                                                    FilterWidget(),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            safeSetState(
                                                                () {}));
                                                      } else {
                                                        await showDialog(
                                                          barrierColor:
                                                              Color(0xCC000D3E),
                                                          barrierDismissible:
                                                              false,
                                                          context: context,
                                                          builder:
                                                              (dialogContext) {
                                                            return Dialog(
                                                              elevation: 0,
                                                              insetPadding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              backgroundColor:
                                                                  Colors
                                                                      .transparent,
                                                              alignment: AlignmentDirectional(
                                                                      0.0, 0.0)
                                                                  .resolve(
                                                                      Directionality.of(
                                                                          context)),
                                                              child:
                                                                  GestureDetector(
                                                                onTap: () => _model
                                                                        .unfocusNode
                                                                        .canRequestFocus
                                                                    ? FocusScope.of(
                                                                            context)
                                                                        .requestFocus(_model
                                                                            .unfocusNode)
                                                                    : FocusScope.of(
                                                                            context)
                                                                        .unfocus(),
                                                                child:
                                                                    Container(
                                                                  width: MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.3,
                                                                  child:
                                                                      FilterWidget(),
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                        ).then((value) =>
                                                            setState(() {}));
                                                      }
                                                    },
                                                    child: Container(
                                                      width: 40.0,
                                                      height: 40.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBgOpacity,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(6.0),
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(0.0),
                                                        child: Image.asset(
                                                          'assets/images/filter_gif.gif',
                                                          width: 30.0,
                                                          height: 30.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.8,
                                      decoration: BoxDecoration(),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 50.0, 0.0, 0.0),
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            'SID Luxury Homes',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 32.0,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: ' From ',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 32.0,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: 'Hyderabad',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color:
                                                              Color(0xFFD70000),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 32.0,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: ' - ',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 32.0,
                                                        ),
                                                      ),
                                                      TextSpan(
                                                        text: 'Gachibowli',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 32.0,
                                                        ),
                                                      )
                                                    ],
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  -1.0, 0.0),
                                              child: Text(
                                                'Discover the Most Popular Stays in our Collection',
                                                style: GoogleFonts.getFont(
                                                  'Work Sans',
                                                  color: Color(0xFF475569),
                                                  fontWeight: FontWeight.normal,
                                                  fontSize: 20.0,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 12.0, 0.0),
                                              child: FutureBuilder<
                                                  ApiCallResponse>(
                                                future:
                                                    MicroserviceAvailabilityAPIsGroup
                                                        .propertyListingsCall
                                                        .call(
                                                  pageLoadItemsCount: 4,
                                                  pageNoCount: 1,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 40.0,
                                                        height: 40.0,
                                                        child: SpinKitPulse(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          size: 40.0,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  final rowPropertyListingsResponse =
                                                      snapshot.data!;
                                                  return Builder(
                                                    builder: (context) {
                                                      final propertyListingData =
                                                          getJsonField(
                                                        rowPropertyListingsResponse
                                                            .jsonBody,
                                                        r'''$.propertyBriefs''',
                                                      ).toList();
                                                      return Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: List.generate(
                                                            propertyListingData
                                                                .length,
                                                            (propertyListingDataIndex) {
                                                          final propertyListingDataItem =
                                                              propertyListingData[
                                                                  propertyListingDataIndex];
                                                          return Expanded(
                                                            child:
                                                                NewPropertyCardWidget(
                                                              key: Key(
                                                                  'Key7ds_${propertyListingDataIndex}_of_${propertyListingData.length}'),
                                                              price:
                                                                  getJsonField(
                                                                propertyListingDataItem,
                                                                r'''$.basePrice''',
                                                              ),
                                                              propertyType:
                                                                  getJsonField(
                                                                propertyListingDataItem,
                                                                r'''$.propertyType''',
                                                              ).toString(),
                                                              locality:
                                                                  getJsonField(
                                                                propertyListingDataItem,
                                                                r'''$.locality''',
                                                              ).toString(),
                                                              city:
                                                                  getJsonField(
                                                                propertyListingDataItem,
                                                                r'''$.city''',
                                                              ).toString(),
                                                              averageRating:
                                                                  getJsonField(
                                                                propertyListingDataItem,
                                                                r'''$.averageRating''',
                                                              ),
                                                              imageList: functions
                                                                  .listDataConversion(
                                                                      getJsonField(
                                                                propertyListingDataItem,
                                                                r'''$.imageURLs''',
                                                              ).toString()),
                                                              bedRooms: 2,
                                                              bathRooms: 2,
                                                              articleId:
                                                                  getJsonField(
                                                                propertyListingDataItem,
                                                                r'''$.articleId''',
                                                              ).toString(),
                                                            ),
                                                          );
                                                        }).divide(SizedBox(
                                                            width: 20.0)),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 27.0, 0.0, 0.0),
                                                child: Container(
                                                  width: 135.0,
                                                  height: 40.0,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Color(0xFFA51FF6),
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary
                                                      ],
                                                      stops: [0.0, 0.3, 1.0],
                                                      begin:
                                                          AlignmentDirectional(
                                                              1.0, 0.0),
                                                      end: AlignmentDirectional(
                                                          -1.0, 0),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            100.0),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Text(
                                                      'View More',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Work Sans',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        fontSize: 16.0,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 100.0, 0.0, 24.0),
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            'Browse From Top Categories',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color:
                                                              Color(0xFF1C1C1C),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 32.0,
                                                        ),
                                                      )
                                                    ],
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1.5,
                                              indent: 200.0,
                                              endIndent: 200.0,
                                              color: Color(0xFFDDDDDD),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 25.0, 0.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Container(
                                                      width: 272.0,
                                                      height: 72.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    100.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(7.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 59.0,
                                                              height: 59.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFFDEBEC),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            59.0),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              59.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/thumbs-up.svg',
                                                                    width: 32.0,
                                                                    height:
                                                                        32.0,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Holiday Rentals',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Color(
                                                                        0xFF1C1C1C),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Container(
                                                      width: 306.0,
                                                      height: 72.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    100.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(7.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 59.0,
                                                              height: 59.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFF1F8ED),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            59.0),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              59.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/home_(1).svg',
                                                                    width: 32.0,
                                                                    height:
                                                                        32.0,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Residential Spaces',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Color(
                                                                        0xFF1C1C1C),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Container(
                                                      width: 256.0,
                                                      height: 72.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    100.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(7.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 59.0,
                                                              height: 59.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFF6EDF4),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            59.0),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              59.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/compass.svg',
                                                                    width: 32.0,
                                                                    height:
                                                                        32.0,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Event Spaces',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Color(
                                                                        0xFF1C1C1C),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, 0.0),
                                                    child: Container(
                                                      width: 348.0,
                                                      height: 72.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    100.0),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsets.all(7.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 59.0,
                                                              height: 59.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFEAF2F9),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            59.0),
                                                              ),
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              59.0),
                                                                  child:
                                                                      SvgPicture
                                                                          .asset(
                                                                    'assets/images/dollar-sign.svg',
                                                                    width: 32.0,
                                                                    height:
                                                                        32.0,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Commercial Properties',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Color(
                                                                        0xFF1C1C1C),
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
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
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 100.0, 0.0, 24.0),
                                                child: RichText(
                                                  textScaler:
                                                      MediaQuery.of(context)
                                                          .textScaler,
                                                  text: TextSpan(
                                                    children: [
                                                      TextSpan(
                                                        text:
                                                            'Featured Locations',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color:
                                                              Color(0xFF1C1C1C),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 32.0,
                                                        ),
                                                      )
                                                    ],
                                                    style: GoogleFonts.getFont(
                                                      'Work Sans',
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Divider(
                                              thickness: 1.0,
                                              indent: 200.0,
                                              endIndent: 200.0,
                                              color: Color(0xFFDDDDDD),
                                            ),
                                            Flexible(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        12.0, 45.0, 15.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Flexible(
                                                      child: MasonryGridView
                                                          .builder(
                                                        gridDelegate:
                                                            SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisCount: 4,
                                                        ),
                                                        crossAxisSpacing: 30.0,
                                                        mainAxisSpacing: 30.0,
                                                        itemCount: 6,
                                                        shrinkWrap: true,
                                                        itemBuilder:
                                                            (context, index) {
                                                          return [
                                                            () => ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .network(
                                                                    'https://picsum.photos/seed/239/600',
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.3,
                                                                    height:
                                                                        430.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                            () => ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .network(
                                                                    'https://picsum.photos/seed/239/600',
                                                                    width: MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.3,
                                                                    height:
                                                                        200.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                            () => ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .network(
                                                                    'https://picsum.photos/seed/239/600',
                                                                    width:
                                                                        300.0,
                                                                    height:
                                                                        200.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                            () => ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .network(
                                                                    'https://picsum.photos/seed/239/600',
                                                                    width:
                                                                        300.0,
                                                                    height:
                                                                        430.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                            () => ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .network(
                                                                    'https://picsum.photos/seed/239/600',
                                                                    width:
                                                                        300.0,
                                                                    height:
                                                                        200.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                            () => ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                  child: Image
                                                                      .network(
                                                                    'https://picsum.photos/seed/239/600',
                                                                    width:
                                                                        300.0,
                                                                    height:
                                                                        200.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                          ][index]();
                                                        },
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 80.0, 0.0, 20.0),
                                              child: Container(
                                                decoration: BoxDecoration(),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          95.0, 0.0, 95.0, 0.0),
                                                  child:
                                                      MasonryGridView.builder(
                                                    gridDelegate:
                                                        SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 3,
                                                    ),
                                                    crossAxisSpacing: 30.0,
                                                    mainAxisSpacing: 30.0,
                                                    itemCount: 6,
                                                    shrinkWrap: true,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return [
                                                        () => Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        30.0,
                                                                        30.0),
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          8.0),
                                                                      child:
                                                                          RichText(
                                                                        textScaler:
                                                                            MediaQuery.of(context).textScaler,
                                                                        text:
                                                                            TextSpan(
                                                                          children: [
                                                                            TextSpan(
                                                                              text: 'Why Choose ',
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: Color(0xFF1C1C1C),
                                                                                fontWeight: FontWeight.w500,
                                                                                fontSize: 42.0,
                                                                              ),
                                                                            )
                                                                          ],
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    RichText(
                                                                      textScaler:
                                                                          MediaQuery.of(context)
                                                                              .textScaler,
                                                                      text:
                                                                          TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                            text:
                                                                                'SLH?',
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              fontWeight: FontWeight.w500,
                                                                              fontSize: 42.0,
                                                                            ),
                                                                          )
                                                                        ],
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          10.0),
                                                                      child:
                                                                          Text(
                                                                        'Lorem ipsum dolor sit amet consectetur. Ornare turpis leo sit viverra augue. Ornare faucibus morbi elementum ',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              Color(0xFF3E3E3E),
                                                                          fontSize:
                                                                              18.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                        () => MouseRegion(
                                                              opaque: false,
                                                              cursor: MouseCursor
                                                                      .defer ??
                                                                  MouseCursor
                                                                      .defer,
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: _model
                                                                              .onHover1 ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              30.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            18.0),
                                                                        child:
                                                                            RichText(
                                                                          textScaler:
                                                                              MediaQuery.of(context).textScaler,
                                                                          text:
                                                                              TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                text: '01',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  color: _model.onHover1 == true ? FlutterFlowTheme.of(context).primaryBackground : FlutterFlowTheme.of(context).primary,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontSize: 36.0,
                                                                                ),
                                                                              )
                                                                            ],
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        'Fully Furnished Homes',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color: _model.onHover1 == true
                                                                              ? FlutterFlowTheme.of(context).primaryBackground
                                                                              : Color(0xFF5C5C5C),
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Lorem ipsum dolor sit amet consectetur. Ornare turpis leo sit viverra augue. Ornare faucibus morbi elementum ',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color: _model.onHover1 == true
                                                                                ? FlutterFlowTheme.of(context).primaryBackground
                                                                                : Color(0xFF3E3E3E),
                                                                            fontSize:
                                                                                18.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              onEnter:
                                                                  ((event) async {
                                                                setState(() =>
                                                                    _model.mouseRegionHovered1 =
                                                                        true);
                                                                setState(() {
                                                                  _model.onHover1 =
                                                                      true;
                                                                  _model.onHover2 =
                                                                      false;
                                                                  _model.onHover3 =
                                                                      false;
                                                                  _model.onHover4 =
                                                                      false;
                                                                  _model.onHover5 =
                                                                      false;
                                                                });
                                                              }),
                                                              onExit:
                                                                  ((event) async {
                                                                setState(() =>
                                                                    _model.mouseRegionHovered1 =
                                                                        false);
                                                              }),
                                                            ),
                                                        () => MouseRegion(
                                                              opaque: false,
                                                              cursor: MouseCursor
                                                                      .defer ??
                                                                  MouseCursor
                                                                      .defer,
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: _model
                                                                              .onHover2 ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              30.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            18.0),
                                                                        child:
                                                                            RichText(
                                                                          textScaler:
                                                                              MediaQuery.of(context).textScaler,
                                                                          text:
                                                                              TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                text: '02',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  color: _model.onHover2 == true ? FlutterFlowTheme.of(context).primaryBackground : FlutterFlowTheme.of(context).primary,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontSize: 36.0,
                                                                                ),
                                                                              )
                                                                            ],
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        'Loaded Amenities',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color: _model.onHover2 == true
                                                                              ? FlutterFlowTheme.of(context).primaryBackground
                                                                              : Color(0xFF5C5C5C),
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Lorem ipsum dolor sit amet consectetur. Ornare turpis leo sit viverra augue. Ornare faucibus morbi elementum ',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color: _model.onHover2 == true
                                                                                ? FlutterFlowTheme.of(context).primaryBackground
                                                                                : Color(0xFF3E3E3E),
                                                                            fontSize:
                                                                                18.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              onEnter:
                                                                  ((event) async {
                                                                setState(() =>
                                                                    _model.mouseRegionHovered2 =
                                                                        true);
                                                                setState(() {
                                                                  _model.onHover1 =
                                                                      false;
                                                                  _model.onHover2 =
                                                                      true;
                                                                  _model.onHover3 =
                                                                      false;
                                                                  _model.onHover4 =
                                                                      false;
                                                                  _model.onHover5 =
                                                                      false;
                                                                });
                                                              }),
                                                              onExit:
                                                                  ((event) async {
                                                                setState(() =>
                                                                    _model.mouseRegionHovered2 =
                                                                        false);
                                                              }),
                                                            ),
                                                        () => MouseRegion(
                                                              opaque: false,
                                                              cursor: MouseCursor
                                                                      .defer ??
                                                                  MouseCursor
                                                                      .defer,
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: _model
                                                                              .onHover3 ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              30.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            18.0),
                                                                        child:
                                                                            RichText(
                                                                          textScaler:
                                                                              MediaQuery.of(context).textScaler,
                                                                          text:
                                                                              TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                text: '03',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  color: _model.onHover3 == true ? FlutterFlowTheme.of(context).primaryBackground : FlutterFlowTheme.of(context).primary,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontSize: 36.0,
                                                                                ),
                                                                              )
                                                                            ],
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        'Perfect for working',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color: _model.onHover3 == true
                                                                              ? FlutterFlowTheme.of(context).primaryBackground
                                                                              : Color(0xFF5C5C5C),
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Lorem ipsum dolor sit amet consectetur. Ornare turpis leo sit viverra augue. Ornare faucibus morbi elementum ',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color: _model.onHover3 == true
                                                                                ? FlutterFlowTheme.of(context).primaryBackground
                                                                                : Color(0xFF3E3E3E),
                                                                            fontSize:
                                                                                18.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              onEnter:
                                                                  ((event) async {
                                                                setState(() =>
                                                                    _model.mouseRegionHovered3 =
                                                                        true);
                                                                setState(() {
                                                                  _model.onHover1 =
                                                                      false;
                                                                  _model.onHover2 =
                                                                      false;
                                                                  _model.onHover3 =
                                                                      true;
                                                                  _model.onHover4 =
                                                                      false;
                                                                  _model.onHover5 =
                                                                      false;
                                                                });
                                                              }),
                                                              onExit:
                                                                  ((event) async {
                                                                setState(() =>
                                                                    _model.mouseRegionHovered3 =
                                                                        false);
                                                              }),
                                                            ),
                                                        () => MouseRegion(
                                                              opaque: false,
                                                              cursor: MouseCursor
                                                                      .defer ??
                                                                  MouseCursor
                                                                      .defer,
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: _model
                                                                              .onHover4 ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              30.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            18.0),
                                                                        child:
                                                                            RichText(
                                                                          textScaler:
                                                                              MediaQuery.of(context).textScaler,
                                                                          text:
                                                                              TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                text: '04',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  color: _model.onHover4 == true ? FlutterFlowTheme.of(context).primaryBackground : FlutterFlowTheme.of(context).primary,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontSize: 36.0,
                                                                                ),
                                                                              )
                                                                            ],
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        '24x7 Assistnce',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color: _model.onHover4 == true
                                                                              ? FlutterFlowTheme.of(context).primaryBackground
                                                                              : Color(0xFF5C5C5C),
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Lorem ipsum dolor sit amet consectetur. Ornare turpis leo sit viverra augue. Ornare faucibus morbi elementum ',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color: _model.onHover4 == true
                                                                                ? FlutterFlowTheme.of(context).primaryBackground
                                                                                : Color(0xFF3E3E3E),
                                                                            fontSize:
                                                                                18.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              onEnter:
                                                                  ((event) async {
                                                                setState(() =>
                                                                    _model.mouseRegionHovered4 =
                                                                        true);
                                                                setState(() {
                                                                  _model.onHover1 =
                                                                      false;
                                                                  _model.onHover2 =
                                                                      false;
                                                                  _model.onHover3 =
                                                                      false;
                                                                  _model.onHover4 =
                                                                      true;
                                                                  _model.onHover5 =
                                                                      false;
                                                                });
                                                              }),
                                                              onExit:
                                                                  ((event) async {
                                                                setState(() =>
                                                                    _model.mouseRegionHovered4 =
                                                                        false);
                                                              }),
                                                            ),
                                                        () => MouseRegion(
                                                              opaque: false,
                                                              cursor: MouseCursor
                                                                      .defer ??
                                                                  MouseCursor
                                                                      .defer,
                                                              child: Container(
                                                                decoration:
                                                                    BoxDecoration(
                                                                  color: _model
                                                                              .onHover5 ==
                                                                          true
                                                                      ? FlutterFlowTheme.of(
                                                                              context)
                                                                          .primary
                                                                      : FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              10.0),
                                                                ),
                                                                child: Padding(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              30.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            18.0),
                                                                        child:
                                                                            RichText(
                                                                          textScaler:
                                                                              MediaQuery.of(context).textScaler,
                                                                          text:
                                                                              TextSpan(
                                                                            children: [
                                                                              TextSpan(
                                                                                text: '05',
                                                                                style: GoogleFonts.getFont(
                                                                                  'Work Sans',
                                                                                  color: _model.onHover5 == true ? FlutterFlowTheme.of(context).primaryBackground : FlutterFlowTheme.of(context).primary,
                                                                                  fontWeight: FontWeight.w500,
                                                                                  fontSize: 36.0,
                                                                                ),
                                                                              )
                                                                            ],
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        'Thoughtful Facilities',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color: _model.onHover5 == true
                                                                              ? FlutterFlowTheme.of(context).primaryBackground
                                                                              : Color(0xFF5C5C5C),
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                          fontSize:
                                                                              24.0,
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Lorem ipsum dolor sit amet consectetur. Ornare turpis leo sit viverra augue. Ornare faucibus morbi elementum ',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color: _model.onHover5 == true
                                                                                ? FlutterFlowTheme.of(context).primaryBackground
                                                                                : Color(0xFF3E3E3E),
                                                                            fontSize:
                                                                                18.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                              onEnter:
                                                                  ((event) async {
                                                                setState(() =>
                                                                    _model.mouseRegionHovered5 =
                                                                        true);
                                                                setState(() {
                                                                  _model.onHover1 =
                                                                      false;
                                                                  _model.onHover2 =
                                                                      false;
                                                                  _model.onHover3 =
                                                                      false;
                                                                  _model.onHover4 =
                                                                      false;
                                                                  _model.onHover5 =
                                                                      true;
                                                                });
                                                              }),
                                                              onExit:
                                                                  ((event) async {
                                                                setState(() =>
                                                                    _model.mouseRegionHovered5 =
                                                                        false);
                                                              }),
                                                            ),
                                                      ][index]();
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      30.0, 0.0, 30.0, 0.0),
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFF2F2F2),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 90.0, 0.0, 65.0),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0xFFF2F2F2),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceEvenly,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Insights and ',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: Color(
                                                                    0xFF1C1C1C),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 42.0,
                                                              ),
                                                            ),
                                                            Text(
                                                              'Performance',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: Color(
                                                                    0xFF1C1C1C),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 42.0,
                                                              ),
                                                            ),
                                                            Text(
                                                              'Metrics',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 42.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 300.0,
                                                        height: 201.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              '50k+',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 40.0,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          10.0),
                                                              child: Text(
                                                                'Delighted Customers',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 300.0,
                                                        height: 201.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              '1000+',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 40.0,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          10.0),
                                                              child: Text(
                                                                'Active Listings',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      18.0,
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        width: 300.0,
                                                        height: 201.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors.black,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      16.0),
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              '30+',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 40.0,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          10.0),
                                                              child: Text(
                                                                'Cities & Counting ',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryBackground,
                                                                  fontSize:
                                                                      18.0,
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
                                            Container(
                                              decoration: BoxDecoration(
                                                color: Color(0xFFF2F2F2),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 90.0, 0.0, 65.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF2F2F2),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          ClipRRect(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            child: SvgPicture
                                                                .asset(
                                                              'assets/images/sid_logo.svg',
                                                              width: 78.0,
                                                              height: 80.0,
                                                              fit: BoxFit
                                                                  .contain,
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        18.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Digital transformation company',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: Color(
                                                                    0xFF1C1C1C),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                fontSize: 16.0,
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        36.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              child: SvgPicture
                                                                  .asset(
                                                                'assets/images/Group_637.svg',
                                                                width: 172.0,
                                                                height: 26.0,
                                                                fit: BoxFit
                                                                    .contain,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Navigation',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: Color(
                                                                      0xFFE93740),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            21.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'About Us',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Color(
                                                                        0xFF1C1C1C),
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            21.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Blog',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Color(
                                                                        0xFF1C1C1C),
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            21.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Terms of Use',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Color(
                                                                        0xFF1C1C1C),
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            21.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Privacy Policy',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Color(
                                                                        0xFF1C1C1C),
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Help',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: Color(
                                                                      0xFFE93740),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      16.0,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            21.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'FAQ',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Color(
                                                                        0xFF1C1C1C),
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            21.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  'Contact Us',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Color(
                                                                        0xFF1C1C1C),
                                                                    fontSize:
                                                                        14.0,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
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
                                  ],
                                ),
                              ),
                              Container(
                                width: 78.0,
                                decoration: BoxDecoration(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                wrapWithModel(
                  model: _model.webCopyWriteModel,
                  updateCallback: () => setState(() {}),
                  child: WebCopyWriteWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
