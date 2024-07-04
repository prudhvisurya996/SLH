import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_review_card/new_review_card_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_review_booking_copy_model.dart';
export 'new_review_booking_copy_model.dart';

class NewReviewBookingCopyWidget extends StatefulWidget {
  const NewReviewBookingCopyWidget({super.key});

  @override
  State<NewReviewBookingCopyWidget> createState() =>
      _NewReviewBookingCopyWidgetState();
}

class _NewReviewBookingCopyWidgetState
    extends State<NewReviewBookingCopyWidget> {
  late NewReviewBookingCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewReviewBookingCopyModel());

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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              if (responsiveVisibility(
                context: context,
                phone: false,
                tablet: false,
                tabletLandscape: false,
              ))
                Flexible(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Stack(
                            children: [
                              wrapWithModel(
                                model: _model.newTopBarModel,
                                updateCallback: () => setState(() {}),
                                child: NewTopBarWidget(
                                  showSearchFilter: false,
                                ),
                              ),
                            ],
                          ),
                          if (FFAppState().accessToken == null ||
                              FFAppState().accessToken == '')
                            Align(
                              alignment: AlignmentDirectional(0.98, 0.84),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 22.0, 20.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    scaffoldKey.currentState!.openEndDrawer();
                                  },
                                  child: RichText(
                                    textScaler:
                                        MediaQuery.of(context).textScaler,
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'LOGIN',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Work Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primary,
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        TextSpan(
                                          text: ' / ',
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18.0,
                                          ),
                                        ),
                                        TextSpan(
                                          text: 'SIGNUP',
                                          style: GoogleFonts.getFont(
                                            'Work Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18.0,
                                          ),
                                        )
                                      ],
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 18.0,
                                            letterSpacing: 0.0,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: () {
                                if (MediaQuery.sizeOf(context).width >=
                                    1580.0) {
                                  return 150.0;
                                } else if (MediaQuery.sizeOf(context).width >=
                                    1280.0) {
                                  return 100.0;
                                } else if (MediaQuery.sizeOf(context).width ==
                                    991.0) {
                                  return 80.0;
                                } else {
                                  return 100.0;
                                }
                              }(),
                              decoration: BoxDecoration(),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 10.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryBackground,
                                          borderRadius: 30.0,
                                          borderWidth: 1.0,
                                          fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                          icon: Icon(
                                            Icons.chevron_left,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                          onPressed: () async {
                                            context.safePop();
                                          },
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  16.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            'Review booking',
                                            style: GoogleFonts.getFont(
                                              'Work Sans',
                                              color: Colors.black,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 20.0,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Flexible(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 12.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 24.0, 0.0),
                                              child: Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        0.65,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        0.8,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(25.0, 12.0,
                                                          15.0, 12.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      -1.0),
                                                              child: Text(
                                                                'Property Details',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: Colors
                                                                      .black,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      20.0,
                                                                ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          16.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Flexible(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.min,
                                                                          children: [
                                                                            Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 16.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    'Property Type',
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Work Sans',
                                                                                      color: Color(0xFFB6BFE0),
                                                                                      fontWeight: FontWeight.w500,
                                                                                      fontSize: 16.0,
                                                                                    ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                    child: RichText(
                                                                                      textScaler: MediaQuery.of(context).textScaler,
                                                                                      text: TextSpan(
                                                                                        children: [
                                                                                          TextSpan(
                                                                                            text: 'House',
                                                                                            style: GoogleFonts.getFont(
                                                                                              'Work Sans',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              fontWeight: FontWeight.w600,
                                                                                              fontSize: 16.0,
                                                                                            ),
                                                                                          ),
                                                                                          TextSpan(
                                                                                            text: '    ',
                                                                                            style: TextStyle(),
                                                                                          ),
                                                                                          TextSpan(
                                                                                            text: '2 BHK',
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
                                                                                          fontSize: 16.0,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 25.0,
                                                                              child: VerticalDivider(
                                                                                width: 1.43,
                                                                                thickness: 1.0,
                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              24.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Wrap(
                                                                            spacing:
                                                                                5.0,
                                                                            runSpacing:
                                                                                8.0,
                                                                            alignment:
                                                                                WrapAlignment.start,
                                                                            crossAxisAlignment:
                                                                                WrapCrossAlignment.start,
                                                                            direction:
                                                                                Axis.horizontal,
                                                                            runAlignment:
                                                                                WrapAlignment.start,
                                                                            verticalDirection:
                                                                                VerticalDirection.down,
                                                                            clipBehavior:
                                                                                Clip.none,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  children: [
                                                                                    ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                      child: SvgPicture.asset(
                                                                                        'assets/images/house_chimney_blank.svg',
                                                                                        width: 18.0,
                                                                                        height: 16.0,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                    Text(
                                                                                      '8 Guests',
                                                                                      style: GoogleFonts.getFont(
                                                                                        'Work Sans',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontWeight: FontWeight.w600,
                                                                                        fontSize: 16.0,
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(SizedBox(width: 5.0)),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 10.0,
                                                                                      height: 10.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        shape: BoxShape.circle,
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                      child: Container(
                                                                                        decoration: BoxDecoration(
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(8.0),
                                                                                            bottomRight: Radius.circular(8.0),
                                                                                            topLeft: Radius.circular(8.0),
                                                                                            topRight: Radius.circular(8.0),
                                                                                          ),
                                                                                        ),
                                                                                        child: Text(
                                                                                          '4 bedroom',
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Work Sans',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontWeight: FontWeight.w600,
                                                                                            fontSize: 16.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 10.0,
                                                                                      height: 10.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        shape: BoxShape.circle,
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                      child: Container(
                                                                                        decoration: BoxDecoration(
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(8.0),
                                                                                            bottomRight: Radius.circular(8.0),
                                                                                            topLeft: Radius.circular(8.0),
                                                                                            topRight: Radius.circular(8.0),
                                                                                          ),
                                                                                        ),
                                                                                        child: Text(
                                                                                          '12 beds',
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Work Sans',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontWeight: FontWeight.w600,
                                                                                            fontSize: 16.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  children: [
                                                                                    Container(
                                                                                      width: 10.0,
                                                                                      height: 10.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        shape: BoxShape.circle,
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                      child: Container(
                                                                                        decoration: BoxDecoration(
                                                                                          borderRadius: BorderRadius.only(
                                                                                            bottomLeft: Radius.circular(8.0),
                                                                                            bottomRight: Radius.circular(8.0),
                                                                                            topLeft: Radius.circular(8.0),
                                                                                            topRight: Radius.circular(8.0),
                                                                                          ),
                                                                                        ),
                                                                                        child: Text(
                                                                                          '3 bathrooms',
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Work Sans',
                                                                                            color: FlutterFlowTheme.of(context).primaryText,
                                                                                            fontWeight: FontWeight.w600,
                                                                                            fontSize: 16.0,
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
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Text(
                                                                          'Property address',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                Color(0xFFB6BFE0),
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontSize:
                                                                                16.0,
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              10.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              RichText(
                                                                            textScaler:
                                                                                MediaQuery.of(context).textScaler,
                                                                            text:
                                                                                TextSpan(
                                                                              children: [
                                                                                TextSpan(
                                                                                  text: 'Falt no:-',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: ' 201',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: ', ',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: 'Sundarban road',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: ', ',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: 'Katedan',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: ', ',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: 'Secunderabad',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: ', ',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: 'Telangana',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: ', ',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: '500077',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: ', ',
                                                                                  style: TextStyle(),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: 'India',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                                TextSpan(
                                                                                  text: '.',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    fontWeight: FontWeight.w600,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                )
                                                                              ],
                                                                              style: GoogleFonts.getFont(
                                                                                'Work Sans',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 16.0,
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
                                                          ],
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, -1.0),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Guest Details',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: Colors
                                                                    .black,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 18.0,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      20.0,
                                                                      0.0,
                                                                      20.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Flexible(
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          35.0,
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
                                                                        'Name',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.w300,
                                                                          fontSize:
                                                                              14.0,
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
                                                                          'John Doe',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                Colors.black,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                            fontSize:
                                                                                16.0,
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
                                                                            35.0,
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
                                                                      'Email',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                        fontSize:
                                                                            14.0,
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
                                                                        'test@gmail.com',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            35.0,
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
                                                                      'Mobile Number',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w300,
                                                                        fontSize:
                                                                            14.0,
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
                                                                        '+91 00000 00000',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Work Sans',
                                                                          color:
                                                                              Colors.black,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          fontSize:
                                                                              16.0,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
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
                                                                    'Address',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: Colors
                                                                          .black,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
                                                                      fontSize:
                                                                          14.0,
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
                                                                      'XYZ street , Manhattan , New York',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: Colors
                                                                            .black,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      30.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .stretch,
                                                            children: [
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  RichText(
                                                                    textScaler:
                                                                        MediaQuery.of(context)
                                                                            .textScaler,
                                                                    text:
                                                                        TextSpan(
                                                                      children: [
                                                                        TextSpan(
                                                                          text:
                                                                              '*',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                Color(0xFFD70000),
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontSize:
                                                                                20.0,
                                                                          ),
                                                                        ),
                                                                        TextSpan(
                                                                          text:
                                                                              ' Important information for check-in',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                Colors.black,
                                                                            fontWeight:
                                                                                FontWeight.bold,
                                                                            fontSize:
                                                                                18.0,
                                                                          ),
                                                                        )
                                                                      ],
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            12.0,
                                                                            0.0,
                                                                            6.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          4.0,
                                                                      height:
                                                                          4.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Colors
                                                                            .black,
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Passport, Aadhaar & Govt Id are accepted as ID Proofs.',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                14.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Container(
                                                                      width:
                                                                          4.0,
                                                                      height:
                                                                          4.0,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Colors
                                                                            .black,
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          'Local Id proofs are Not allowed.',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                14.0,
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
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      40.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .stretch,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            0.0,
                                                                            15.0),
                                                                child: Text(
                                                                  'Cancellation Policy',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        20.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            50.0,
                                                                            0.0),
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Flexible(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Before check-in Date, 11:59 AM',
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                              color: Color(0xFF80BB01),
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 16.0,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                18.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Full refundable',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: Color(0xFF80BB01),
                                                                                    fontWeight: FontWeight.bold,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Full Refundable (You will get 100% Refund).',
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Work Sans',
                                                                                      color: Colors.black,
                                                                                      fontSize: 14.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Flexible(
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'After check-in Date, 12:00 PM',
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                              color: Color(0xFFD70000),
                                                                              fontWeight: FontWeight.bold,
                                                                              fontSize: 16.0,
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                18.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  'Cancellation not possible ',
                                                                                  style: GoogleFonts.getFont(
                                                                                    'Work Sans',
                                                                                    color: Color(0xFFD70000),
                                                                                    fontWeight: FontWeight.bold,
                                                                                    fontSize: 16.0,
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Non cancellable, no Refunding.',
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Work Sans',
                                                                                      color: Colors.black,
                                                                                      fontSize: 14.0,
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
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      30.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: RichText(
                                                            textScaler:
                                                                MediaQuery.of(
                                                                        context)
                                                                    .textScaler,
                                                            text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                  text:
                                                                      'By Proceeding, I agree to ',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      'SLH Agreement',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                                TextSpan(
                                                                  text: ', ',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      'Terms of Services',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                                TextSpan(
                                                                  text: ' and ',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                                TextSpan(
                                                                  text:
                                                                      'Cancellation & Hotel Booking Policies',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                ),
                                                                TextSpan(
                                                                  text: '.',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: Colors
                                                                        .black,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    fontSize:
                                                                        16.0,
                                                                  ),
                                                                )
                                                              ],
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.28,
                                              decoration: BoxDecoration(),
                                              child: wrapWithModel(
                                                model:
                                                    _model.newReviewCardModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: NewReviewCardWidget(
                                                  isPropertyDetailView: false,
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
                            Container(
                              width: () {
                                if (MediaQuery.sizeOf(context).width >=
                                    1580.0) {
                                  return 150.0;
                                } else if (MediaQuery.sizeOf(context).width >=
                                    1280.0) {
                                  return 100.0;
                                } else if (MediaQuery.sizeOf(context).width ==
                                    991.0) {
                                  return 80.0;
                                } else {
                                  return 100.0;
                                }
                              }(),
                              decoration: BoxDecoration(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
