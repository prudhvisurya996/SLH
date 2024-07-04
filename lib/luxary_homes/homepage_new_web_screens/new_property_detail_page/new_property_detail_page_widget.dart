import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/common_components/login_form/login_form_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_review_card/new_review_card_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_user_reviews/new_user_reviews_widget.dart';
import '/luxary_homes/users/house_rule_card/house_rule_card_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:provider/provider.dart';
import 'new_property_detail_page_model.dart';
export 'new_property_detail_page_model.dart';

class NewPropertyDetailPageWidget extends StatefulWidget {
  const NewPropertyDetailPageWidget({
    super.key,
    required this.id,
    required this.index,
  });

  final dynamic id;
  final int? index;

  @override
  State<NewPropertyDetailPageWidget> createState() =>
      _NewPropertyDetailPageWidgetState();
}

class _NewPropertyDetailPageWidgetState
    extends State<NewPropertyDetailPageWidget> {
  late NewPropertyDetailPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewPropertyDetailPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().searchDates.length > 0) {
        _model.selectedFromToDates =
            FFAppState().searchDates.toList().cast<DateTime>();
        setState(() {});
        return;
      } else {
        return;
      }
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

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
              child: wrapWithModel(
                model: _model.loginFormModel,
                updateCallback: () => setState(() {}),
                child: LoginFormWidget(),
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
                  children: [
                    wrapWithModel(
                      model: _model.newTopBarModel,
                      updateCallback: () => setState(() {}),
                      child: NewTopBarWidget(
                        showSearchFilter: false,
                      ),
                    ),
                    if (FFAppState().accessToken == null ||
                        FFAppState().accessToken == '')
                      Align(
                        alignment: AlignmentDirectional(0.97, -0.65),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 25.0, 20.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              scaffoldKey.currentState!.openEndDrawer();
                            },
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'LOGIN',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Work Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          fontSize: 18.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  TextSpan(
                                    text: ' / ',
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'SIGNUP',
                                    style: GoogleFonts.getFont(
                                      'Work Sans',
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18.0,
                                    ),
                                  )
                                ],
                                style: GoogleFonts.getFont(
                                  'Work Sans',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 1.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                Flexible(
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.sizeOf(context).width * 0.28,
                          height: double.infinity,
                          decoration: BoxDecoration(),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: 30.0,
                                    borderWidth: 1.0,
                                    buttonSize: 46.0,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    icon: Icon(
                                      Icons.chevron_left,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 24.0,
                                    ),
                                    onPressed: () async {
                                      context.safePop();
                                    },
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'HOME',
                                      style: GoogleFonts.getFont(
                                        'Work Sans',
                                        color: Color(0xFF000D3E),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 18.0, 0.0, 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(8.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Container(
                                              height: 40.0,
                                              decoration: BoxDecoration(
                                                color: Color(0xFFF6F7FA),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(5.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Icon(
                                                      Icons.search_rounded,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      size: 23.0,
                                                    ),
                                                    Flexible(
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    8.0,
                                                                    0.0,
                                                                    8.0,
                                                                    0.0),
                                                        child: TextFormField(
                                                          controller: _model
                                                              .textController,
                                                          focusNode: _model
                                                              .textFieldFocusNode,
                                                          autofocus: false,
                                                          obscureText: false,
                                                          decoration:
                                                              InputDecoration(
                                                            hintText:
                                                                'Search by property',
                                                            hintStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                            enabledBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            errorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                            focusedErrorBorder:
                                                                OutlineInputBorder(
                                                              borderSide:
                                                                  BorderSide(
                                                                color: Color(
                                                                    0x00000000),
                                                                width: 1.0,
                                                              ),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                            ),
                                                          ),
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                          maxLength: 50,
                                                          maxLengthEnforcement:
                                                              MaxLengthEnforcement
                                                                  .none,
                                                          buildCounter: (context,
                                                                  {required currentLength,
                                                                  required isFocused,
                                                                  maxLength}) =>
                                                              null,
                                                          validator: _model
                                                              .textControllerValidator
                                                              .asValidator(
                                                                  context),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4.0),
                                                        border: Border.all(
                                                          color:
                                                              Color(0xFFA0A7AF),
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    20.0,
                                                                    5.0,
                                                                    20.0,
                                                                    5.0),
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
                                                                          0.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: ClipRRect(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                child:
                                                                    SvgPicture
                                                                        .asset(
                                                                  'assets/images/icon.svg',
                                                                  width: 12.0,
                                                                  height: 12.0,
                                                                  fit: BoxFit
                                                                      .contain,
                                                                ),
                                                              ),
                                                            ),
                                                            Text(
                                                              'Filter',
                                                              style: GoogleFonts
                                                                  .getFont(
                                                                'Work Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 14.0,
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
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      5.0, 16.0, 0.0, 0.0),
                                              child: RichText(
                                                textScaler:
                                                    MediaQuery.of(context)
                                                        .textScaler,
                                                text: TextSpan(
                                                  children: [
                                                    TextSpan(
                                                      text: '132',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Work Sans',
                                                        color:
                                                            Color(0xFF475569),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16.0,
                                                      ),
                                                    ),
                                                    TextSpan(
                                                      text:
                                                          ' SID Luxury Homes Stays',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Work Sans',
                                                        color:
                                                            Color(0xFF475569),
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16.0,
                                                      ),
                                                    )
                                                  ],
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 16.0, 0.0, 0.0),
                                              child: Container(
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFF2F2F2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          5.0, 5.0, 5.0, 5.0),
                                                  child: FutureBuilder<
                                                      ApiCallResponse>(
                                                    future: (_model
                                                                .apiRequestCompleter ??=
                                                            Completer<
                                                                ApiCallResponse>()
                                                              ..complete(
                                                                  MicroserviceAvailabilityAPIsGroup
                                                                      .propertyListingsCall
                                                                      .call(
                                                                pageLoadItemsCount:
                                                                    8,
                                                                pageNoCount: 1,
                                                              )))
                                                        .future,
                                                    builder:
                                                        (context, snapshot) {
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
                                                      final listViewPropertyListingsResponse =
                                                          snapshot.data!;
                                                      return Builder(
                                                        builder: (context) {
                                                          final listings =
                                                              getJsonField(
                                                            listViewPropertyListingsResponse
                                                                .jsonBody,
                                                            r'''$.propertyBriefs''',
                                                          ).toList();
                                                          return RefreshIndicator(
                                                            onRefresh:
                                                                () async {
                                                              setState(() =>
                                                                  _model.apiRequestCompleter =
                                                                      null);
                                                              await _model
                                                                  .waitForApiRequestCompleted();
                                                            },
                                                            child: ListView
                                                                .separated(
                                                              padding:
                                                                  EdgeInsets
                                                                      .zero,
                                                              shrinkWrap: true,
                                                              scrollDirection:
                                                                  Axis.vertical,
                                                              itemCount:
                                                                  listings
                                                                      .length,
                                                              separatorBuilder: (_,
                                                                      __) =>
                                                                  SizedBox(
                                                                      height:
                                                                          8.0),
                                                              itemBuilder: (context,
                                                                  listingsIndex) {
                                                                final listingsItem =
                                                                    listings[
                                                                        listingsIndex];
                                                                return InkWell(
                                                                  splashColor:
                                                                      Colors
                                                                          .transparent,
                                                                  focusColor: Colors
                                                                      .transparent,
                                                                  hoverColor: Colors
                                                                      .transparent,
                                                                  highlightColor:
                                                                      Colors
                                                                          .transparent,
                                                                  onTap:
                                                                      () async {
                                                                    _model.propertyId =
                                                                        getJsonField(
                                                                      listingsItem,
                                                                      r'''$.propertyId''',
                                                                    );
                                                                    setState(
                                                                        () {});
                                                                  },
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color:
                                                                          () {
                                                                        if (_model
                                                                                .propertyId ==
                                                                            getJsonField(
                                                                              listingsItem,
                                                                              r'''$.propertyId''',
                                                                            )) {
                                                                          return Color(
                                                                              0xFFE8E7FF);
                                                                        } else if ((widget.index ==
                                                                                listingsIndex) &&
                                                                            (_model.propertyId ==
                                                                                null)) {
                                                                          return Color(
                                                                              0xFFE8E7FF);
                                                                        } else {
                                                                          return FlutterFlowTheme.of(context)
                                                                              .primaryBackground;
                                                                        }
                                                                      }(),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              8.0),
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.only(
                                                                                bottomLeft: Radius.circular(8.0),
                                                                                bottomRight: Radius.circular(0.0),
                                                                                topLeft: Radius.circular(8.0),
                                                                                topRight: Radius.circular(0.0),
                                                                              ),
                                                                              child: CachedNetworkImage(
                                                                                fadeInDuration: Duration(milliseconds: 500),
                                                                                fadeOutDuration: Duration(milliseconds: 500),
                                                                                imageUrl: functions
                                                                                    .listDataConversion(getJsonField(
                                                                                      listingsItem,
                                                                                      r'''$.imageURLs''',
                                                                                    ).toString())!
                                                                                    .first,
                                                                                width: 110.0,
                                                                                height: 105.0,
                                                                                fit: BoxFit.contain,
                                                                              ),
                                                                            ),
                                                                            Flexible(
                                                                              child: Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                          Text(
                                                                                            'INR. ${getJsonField(
                                                                                              listingsItem,
                                                                                              r'''$.totalPrice''',
                                                                                            ).toString()}',
                                                                                            style: GoogleFonts.getFont(
                                                                                              'Work Sans',
                                                                                              color: Color(0xFFD70000),
                                                                                              fontWeight: FontWeight.w600,
                                                                                              fontSize: 16.0,
                                                                                            ),
                                                                                          ),
                                                                                          Text(
                                                                                            ' /night',
                                                                                            style: GoogleFonts.getFont(
                                                                                              'Work Sans',
                                                                                              color: Colors.black,
                                                                                              fontWeight: FontWeight.w500,
                                                                                              fontSize: 16.0,
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 10.0),
                                                                                      child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                          Align(
                                                                                            alignment: AlignmentDirectional(-1.0, 1.0),
                                                                                            child: ClipRRect(
                                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                                              child: SvgPicture.asset(
                                                                                                'assets/images/location-pin.svg',
                                                                                                width: 15.0,
                                                                                                height: 15.0,
                                                                                                fit: BoxFit.contain,
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                          Flexible(
                                                                                            child: Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                '${getJsonField(
                                                                                                  listingsItem,
                                                                                                  r'''$.locality''',
                                                                                                ).toString()} - ${getJsonField(
                                                                                                  listingsItem,
                                                                                                  r'''$.city''',
                                                                                                ).toString()}',
                                                                                                style: GoogleFonts.getFont(
                                                                                                  'Work Sans',
                                                                                                  color: Color(0xFF878787),
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                  fontSize: 14.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        if (functions.toDouble(getJsonField(
                                                                                              listingsItem,
                                                                                              r'''$.averageRating''',
                                                                                            ).toString())! >
                                                                                            0.00)
                                                                                          Padding(
                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                            child: Row(
                                                                                              mainAxisSize: MainAxisSize.max,
                                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                                                              children: [
                                                                                                Icon(
                                                                                                  Icons.star,
                                                                                                  color: Color(0xFFFFCC6A),
                                                                                                  size: 24.0,
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      listingsItem,
                                                                                                      r'''$.averageRating''',
                                                                                                    ).toString(),
                                                                                                    style: GoogleFonts.getFont(
                                                                                                      'Work Sans',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontWeight: FontWeight.w500,
                                                                                                      fontSize: 14.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        Flexible(
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              ClipRRect(
                                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                                child: SvgPicture.asset(
                                                                                                  'assets/images/house_(1).svg',
                                                                                                  width: 15.0,
                                                                                                  height: 15.0,
                                                                                                  fit: BoxFit.contain,
                                                                                                ),
                                                                                              ),
                                                                                              Flexible(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      listingsItem,
                                                                                                      r'''$.propertyType''',
                                                                                                    ).toString(),
                                                                                                    style: GoogleFonts.getFont(
                                                                                                      'Work Sans',
                                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                                      fontWeight: FontWeight.normal,
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
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
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
                              ),
                            ],
                          ),
                        ),
                        Flexible(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 0.0, 0.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: MicroserviceAvailabilityAPIsGroup
                                  .propertyDetailsCall
                                  .call(
                                propertyId: () {
                                  if (_model.propertyId != null) {
                                    return _model.propertyId;
                                  } else if (widget.id != null) {
                                    return widget.id;
                                  } else if (widget.id == null) {
                                    return 8;
                                  } else {
                                    return 8;
                                  }
                                }(),
                              ),
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
                                final containerPropertyDetailsResponse =
                                    snapshot.data!;
                                return Container(
                                  decoration: BoxDecoration(),
                                  child: SingleChildScrollView(
                                    primary: false,
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 20.0, 24.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Material(
                                                  color: Colors.transparent,
                                                  elevation: 0.5,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Container(
                                                    width: MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.3,
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        0.38,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      child: Image.network(
                                                        functions
                                                            .initImg(
                                                                functions
                                                                    .listDataConversion(
                                                                        getJsonField(
                                                                      containerPropertyDetailsResponse
                                                                          .jsonBody,
                                                                      r'''$.imageURLs''',
                                                                    ).toString())
                                                                    ?.toList(),
                                                                FFAppState().BaseUrl)!
                                                            .first,
                                                        width:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .width *
                                                                0.3,
                                                        height:
                                                            MediaQuery.sizeOf(
                                                                        context)
                                                                    .height *
                                                                0.38,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Builder(
                                          builder: (context) {
                                            final imagesList = functions
                                                    .initImg(
                                                        functions
                                                            .listDataConversion(
                                                                getJsonField(
                                                              containerPropertyDetailsResponse
                                                                  .jsonBody,
                                                              r'''$.imageURLs''',
                                                            ).toString())
                                                            ?.toList(),
                                                        FFAppState().BaseUrl)
                                                    ?.toList() ??
                                                [];
                                            return SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: List.generate(
                                                    imagesList.length,
                                                    (imagesListIndex) {
                                                  final imagesListItem =
                                                      imagesList[
                                                          imagesListIndex];
                                                  return Material(
                                                    color: Colors.transparent,
                                                    elevation: 0.5,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .primaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                      ),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(12.0),
                                                        child: Image.network(
                                                          imagesListItem,
                                                          width: 100.0,
                                                          height: 100.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }).divide(
                                                    SizedBox(width: 15.0)),
                                              ),
                                            );
                                          },
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                _model.tabs =
                                                    'PropertyInformation';
                                                setState(() {});
                                              },
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(8.0, 16.0,
                                                                8.0, 16.0),
                                                    child: Text(
                                                      'Property Information',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Work Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                  ),
                                                  if (_model.tabs ==
                                                      'PropertyInformation')
                                                    Container(
                                                      width: 155.0,
                                                      height: 3.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 0.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  _model.tabs = 'Reviews';
                                                  setState(() {});
                                                },
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.all(16.0),
                                                      child: Text(
                                                        'Reviews',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 14.0,
                                                        ),
                                                      ),
                                                    ),
                                                    if (_model.tabs ==
                                                        'Reviews')
                                                      Container(
                                                        width: 70.0,
                                                        height: 3.0,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        ),
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Divider(
                                          height: 1.0,
                                          thickness: 2.0,
                                          endIndent: 20.0,
                                          color: Color(0xFFE2E8F0),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 16.0, 0.0, 0.0),
                                          child: Container(
                                            height: MediaQuery.sizeOf(context)
                                                    .height *
                                                0.81,
                                            decoration: BoxDecoration(),
                                            child: Stack(
                                              children: [
                                                SingleChildScrollView(
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      if (_model.tabs ==
                                                          'PropertyInformation')
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  -1.0, -1.0),
                                                          child: Stack(
                                                            children: [
                                                              if (responsiveVisibility(
                                                                context:
                                                                    context,
                                                                phone: false,
                                                                tablet: false,
                                                                tabletLandscape:
                                                                    false,
                                                                desktop: false,
                                                              ))
                                                                Align(
                                                                  alignment:
                                                                      AlignmentDirectional(
                                                                          1.0,
                                                                          -1.0),
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            15.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.25,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0x4CE8E7FF),
                                                                        borderRadius:
                                                                            BorderRadius.circular(16.0),
                                                                        border:
                                                                            Border.all(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryBackground,
                                                                        ),
                                                                      ),
                                                                      child:
                                                                          wrapWithModel(
                                                                        model: _model
                                                                            .newReviewCardModel1,
                                                                        updateCallback:
                                                                            () =>
                                                                                setState(() {}),
                                                                        child:
                                                                            NewReviewCardWidget(
                                                                          isPropertyDetailView:
                                                                              true,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              Container(
                                                                width: MediaQuery.sizeOf(
                                                                            context)
                                                                        .width *
                                                                    0.4,
                                                                decoration:
                                                                    BoxDecoration(),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          30.0,
                                                                          0.0),
                                                                  child: Column(
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
                                                                      Container(
                                                                        width: double
                                                                            .infinity,
                                                                        decoration:
                                                                            BoxDecoration(),
                                                                        child:
                                                                            Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              12.0,
                                                                              0.0,
                                                                              50.0,
                                                                              0.0),
                                                                          child:
                                                                              SingleChildScrollView(
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                                                  children: [
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                        child: Text(
                                                                                          valueOrDefault<String>(
                                                                                            MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.title(
                                                                                              containerPropertyDetailsResponse.jsonBody,
                                                                                            ),
                                                                                            'NA',
                                                                                          ),
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Work Sans',
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            fontWeight: FontWeight.w600,
                                                                                            fontSize: 22.0,
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    if (functions.toDouble(getJsonField(
                                                                                          containerPropertyDetailsResponse.jsonBody,
                                                                                          r'''$.averageRatings''',
                                                                                        ).toString())! >
                                                                                        0.0)
                                                                                      SizedBox(
                                                                                        height: 20.0,
                                                                                        child: VerticalDivider(
                                                                                          width: 1.43,
                                                                                          thickness: 1.0,
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                      ),
                                                                                    if (functions.toDouble(getJsonField(
                                                                                          containerPropertyDetailsResponse.jsonBody,
                                                                                          r'''$.averageRatings''',
                                                                                        ).toString())! >
                                                                                        0.0)
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            RatingBar.builder(
                                                                                              onRatingUpdate: (newValue) => setState(() => _model.ratingBarValue = newValue),
                                                                                              itemBuilder: (context, index) => Icon(
                                                                                                Icons.star_rounded,
                                                                                                color: FlutterFlowTheme.of(context).tertiary,
                                                                                              ),
                                                                                              direction: Axis.horizontal,
                                                                                              initialRating: _model.ratingBarValue ??= getJsonField(
                                                                                                containerPropertyDetailsResponse.jsonBody,
                                                                                                r'''$.averageRatings''',
                                                                                              ),
                                                                                              unratedColor: FlutterFlowTheme.of(context).accent3,
                                                                                              itemCount: 5,
                                                                                              itemSize: 18.0,
                                                                                              glowColor: FlutterFlowTheme.of(context).tertiary,
                                                                                            ),
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                                              child: Text(
                                                                                                '(${getJsonField(
                                                                                                  containerPropertyDetailsResponse.jsonBody,
                                                                                                  r'''$.totalReviews''',
                                                                                                ).toString()})',
                                                                                                style: GoogleFonts.getFont(
                                                                                                  'Poppins',
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                  fontSize: 10.0,
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                          ],
                                                                                        ),
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
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
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                              child: RichText(
                                                                                                textScaler: MediaQuery.of(context).textScaler,
                                                                                                text: TextSpan(
                                                                                                  children: [
                                                                                                    TextSpan(
                                                                                                      text: getJsonField(
                                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                                        r'''$.propertyType''',
                                                                                                      ).toString(),
                                                                                                      style: GoogleFonts.getFont(
                                                                                                        'Work Sans',
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontWeight: FontWeight.w500,
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
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                                                                                        child: Wrap(
                                                                                          spacing: 8.0,
                                                                                          runSpacing: 15.0,
                                                                                          alignment: WrapAlignment.start,
                                                                                          crossAxisAlignment: WrapCrossAlignment.start,
                                                                                          direction: Axis.horizontal,
                                                                                          runAlignment: WrapAlignment.start,
                                                                                          verticalDirection: VerticalDirection.down,
                                                                                          clipBehavior: Clip.none,
                                                                                          children: [
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.min,
                                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                children: [
                                                                                                  ClipRRect(
                                                                                                    borderRadius: BorderRadius.circular(0.0),
                                                                                                    child: SvgPicture.asset(
                                                                                                      'assets/images/house_chimney_blank.svg',
                                                                                                      width: 18.0,
                                                                                                      height: 18.0,
                                                                                                      fit: BoxFit.cover,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      '${getJsonField(
                                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                                        r'''$.totalGuests''',
                                                                                                      ).toString()} Guests',
                                                                                                      style: GoogleFonts.getFont(
                                                                                                        'Work Sans',
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontWeight: FontWeight.normal,
                                                                                                        fontSize: 16.0,
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
                                                                                                    width: 8.0,
                                                                                                    height: 8.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                                    child: Container(
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: Color(0xFFF5F5F5),
                                                                                                        borderRadius: BorderRadius.only(
                                                                                                          bottomLeft: Radius.circular(8.0),
                                                                                                          bottomRight: Radius.circular(8.0),
                                                                                                          topLeft: Radius.circular(8.0),
                                                                                                          topRight: Radius.circular(8.0),
                                                                                                        ),
                                                                                                      ),
                                                                                                      child: Text(
                                                                                                        '${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bedrooms(
                                                                                                              containerPropertyDetailsResponse.jsonBody,
                                                                                                            )?.toString()} bedroom',
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
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.min,
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 8.0,
                                                                                                    height: 8.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                                    child: Container(
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: Color(0xFFF5F5F5),
                                                                                                        borderRadius: BorderRadius.only(
                                                                                                          bottomLeft: Radius.circular(8.0),
                                                                                                          bottomRight: Radius.circular(8.0),
                                                                                                          topLeft: Radius.circular(8.0),
                                                                                                          topRight: Radius.circular(8.0),
                                                                                                        ),
                                                                                                      ),
                                                                                                      child: Text(
                                                                                                        '${MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.beds(
                                                                                                              containerPropertyDetailsResponse.jsonBody,
                                                                                                            )?.toString()} beds',
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
                                                                                            Padding(
                                                                                              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                              child: Row(
                                                                                                mainAxisSize: MainAxisSize.min,
                                                                                                mainAxisAlignment: MainAxisAlignment.start,
                                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                                children: [
                                                                                                  Container(
                                                                                                    width: 8.0,
                                                                                                    height: 8.0,
                                                                                                    decoration: BoxDecoration(
                                                                                                      color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                      shape: BoxShape.circle,
                                                                                                    ),
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                                    child: Container(
                                                                                                      decoration: BoxDecoration(
                                                                                                        color: Color(0xFFF5F5F5),
                                                                                                        borderRadius: BorderRadius.only(
                                                                                                          bottomLeft: Radius.circular(8.0),
                                                                                                          bottomRight: Radius.circular(8.0),
                                                                                                          topLeft: Radius.circular(8.0),
                                                                                                          topRight: Radius.circular(8.0),
                                                                                                        ),
                                                                                                      ),
                                                                                                      child: Text(
                                                                                                        '${getJsonField(
                                                                                                          containerPropertyDetailsResponse.jsonBody,
                                                                                                          r'''$.totalWashrooms''',
                                                                                                        ).toString()} bathrooms',
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
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 8.0,
                                                                                                  height: 8.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    shape: BoxShape.circle,
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 8.0, 0.0),
                                                                                                  child: Text(
                                                                                                    '${getJsonField(
                                                                                                      containerPropertyDetailsResponse.jsonBody,
                                                                                                      r'''$.sharedWashrooms''',
                                                                                                    ).toString()} SharedBathrooms',
                                                                                                    style: GoogleFonts.getFont(
                                                                                                      'Work Sans',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontSize: 16.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 8.0,
                                                                                                  height: 8.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    shape: BoxShape.circle,
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    '${getJsonField(
                                                                                                      containerPropertyDetailsResponse.jsonBody,
                                                                                                      r'''$.guestsPerRoom''',
                                                                                                    ).toString()} GuestsPerRoom',
                                                                                                    style: GoogleFonts.getFont(
                                                                                                      'Work Sans',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontSize: 16.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                            Row(
                                                                                              mainAxisSize: MainAxisSize.min,
                                                                                              children: [
                                                                                                Container(
                                                                                                  width: 8.0,
                                                                                                  height: 8.0,
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                    shape: BoxShape.circle,
                                                                                                  ),
                                                                                                ),
                                                                                                Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                                  child: Text(
                                                                                                    'INR. ${getJsonField(
                                                                                                      containerPropertyDetailsResponse.jsonBody,
                                                                                                      r'''$.pricePerRoom''',
                                                                                                    ).toString()} PricePerRoom',
                                                                                                    style: GoogleFonts.getFont(
                                                                                                      'Work Sans',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontSize: 16.0,
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
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                                                                                  child: Column(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      Text(
                                                                                        'Property address',
                                                                                        style: GoogleFonts.getFont(
                                                                                          'Work Sans',
                                                                                          color: Color(0xFFB6BFE0),
                                                                                          fontWeight: FontWeight.w500,
                                                                                          fontSize: 16.0,
                                                                                        ),
                                                                                      ),
                                                                                      Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                                                                                        child: RichText(
                                                                                          textScaler: MediaQuery.of(context).textScaler,
                                                                                          text: TextSpan(
                                                                                            children: [
                                                                                              TextSpan(
                                                                                                text: valueOrDefault<String>(
                                                                                                  MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.plotNo(
                                                                                                    containerPropertyDetailsResponse.jsonBody,
                                                                                                  ),
                                                                                                  'NA',
                                                                                                ),
                                                                                                style: TextStyle(),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: ', ',
                                                                                                style: GoogleFonts.getFont(
                                                                                                  'Work Sans',
                                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                  fontSize: 18.0,
                                                                                                ),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: valueOrDefault<String>(
                                                                                                  MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.street(
                                                                                                    containerPropertyDetailsResponse.jsonBody,
                                                                                                  ),
                                                                                                  'NA',
                                                                                                ),
                                                                                                style: TextStyle(),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: ', ',
                                                                                                style: TextStyle(),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: valueOrDefault<String>(
                                                                                                  MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.locality(
                                                                                                    containerPropertyDetailsResponse.jsonBody,
                                                                                                  ),
                                                                                                  'NA',
                                                                                                ),
                                                                                                style: TextStyle(),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: ', ',
                                                                                                style: TextStyle(),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: valueOrDefault<String>(
                                                                                                  MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.city(
                                                                                                    containerPropertyDetailsResponse.jsonBody,
                                                                                                  ),
                                                                                                  'NA',
                                                                                                ),
                                                                                                style: TextStyle(),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: ', ',
                                                                                                style: TextStyle(),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: valueOrDefault<String>(
                                                                                                  MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.state(
                                                                                                    containerPropertyDetailsResponse.jsonBody,
                                                                                                  ),
                                                                                                  'NA',
                                                                                                ),
                                                                                                style: TextStyle(),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: ', ',
                                                                                                style: TextStyle(),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: valueOrDefault<String>(
                                                                                                  MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.zipcode(
                                                                                                    containerPropertyDetailsResponse.jsonBody,
                                                                                                  ),
                                                                                                  'NA',
                                                                                                ),
                                                                                                style: TextStyle(),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: ', ',
                                                                                                style: TextStyle(),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: valueOrDefault<String>(
                                                                                                  MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.country(
                                                                                                    containerPropertyDetailsResponse.jsonBody,
                                                                                                  ),
                                                                                                  'NA',
                                                                                                ),
                                                                                                style: TextStyle(),
                                                                                              ),
                                                                                              TextSpan(
                                                                                                text: '.',
                                                                                                style: TextStyle(),
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
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                                                                                  child: RichText(
                                                                                    textScaler: MediaQuery.of(context).textScaler,
                                                                                    text: TextSpan(
                                                                                      children: [
                                                                                        TextSpan(
                                                                                          text: 'Individual Room Or Entire property booking available ',
                                                                                          style: GoogleFonts.getFont(
                                                                                            'Work Sans',
                                                                                            color: Color(0xFFF9AE39),
                                                                                            fontWeight: FontWeight.w500,
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
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                                                                                    child: Text(
                                                                                      'Description',
                                                                                      style: GoogleFonts.getFont(
                                                                                        'Work Sans',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        fontSize: 18.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    valueOrDefault<String>(
                                                                                      MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.desc(
                                                                                        containerPropertyDetailsResponse.jsonBody,
                                                                                      ),
                                                                                      'NA',
                                                                                    ),
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Work Sans',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontWeight: FontWeight.normal,
                                                                                      fontSize: 16.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      if (responsiveVisibility(
                                                                        context:
                                                                            context,
                                                                        phone:
                                                                            false,
                                                                        tablet:
                                                                            false,
                                                                        tabletLandscape:
                                                                            false,
                                                                      ))
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              20.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Container(
                                                                            decoration:
                                                                                BoxDecoration(),
                                                                            child:
                                                                                Padding(
                                                                              padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 55.0, 0.0),
                                                                              child: Column(
                                                                                mainAxisSize: MainAxisSize.min,
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                    child: Text(
                                                                                      'Property Availability Details',
                                                                                      style: GoogleFonts.getFont(
                                                                                        'Work Sans',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontWeight: FontWeight.bold,
                                                                                        fontSize: 18.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                    child: Text(
                                                                                      '${_model.selectedFromToDates.length > 0 ? dateTimeFormat('dd MMM yyyy', _model.selectedFromToDates.first) : 'Check-In Date'} - ${_model.selectedFromToDates.length > 0 ? dateTimeFormat('dd MMM yyyy', _model.selectedFromToDates.last) : 'Check-Out Date'}',
                                                                                      style: GoogleFonts.getFont(
                                                                                        'Work Sans',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontWeight: FontWeight.w500,
                                                                                        fontSize: 14.0,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  if (responsiveVisibility(
                                                                                    context: context,
                                                                                    desktop: false,
                                                                                  ))
                                                                                    Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                      child: Container(
                                                                                        decoration: BoxDecoration(),
                                                                                        child: Container(
                                                                                          width: MediaQuery.sizeOf(context).width * 0.5,
                                                                                          height: 280.0,
                                                                                          child: custom_widgets.SyncDatePicker(
                                                                                            width: MediaQuery.sizeOf(context).width * 0.5,
                                                                                            height: 280.0,
                                                                                            isMultiView: MediaQuery.sizeOf(context).width > 799.0 ? true : false,
                                                                                            initialSelectedDates: _model.selectedFromToDates,
                                                                                            propAvailableFromDate: getJsonField(
                                                                                              containerPropertyDetailsResponse.jsonBody,
                                                                                              r'''$.availableFrom''',
                                                                                            ).toString(),
                                                                                            propBookedDates: 'heloo',
                                                                                            isModifyAllowed: false,
                                                                                            onChangeAction: () async {
                                                                                              _model.selectedFromToDates = FFAppState().selectedDateRange.toList().cast<DateTime>();
                                                                                              setState(() {});
                                                                                              FFAppState().bookingDetails = BookingDetailsStruct(
                                                                                                propTitle: MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.title(
                                                                                                  containerPropertyDetailsResponse.jsonBody,
                                                                                                ),
                                                                                                propLocality: MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.locality(
                                                                                                  containerPropertyDetailsResponse.jsonBody,
                                                                                                ),
                                                                                                propCity: MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.city(
                                                                                                  containerPropertyDetailsResponse.jsonBody,
                                                                                                ),
                                                                                                propBasePrice: getJsonField(
                                                                                                  containerPropertyDetailsResponse.jsonBody,
                                                                                                  r'''$.totalPrice''',
                                                                                                ),
                                                                                                taxPercentage: getJsonField(
                                                                                                  containerPropertyDetailsResponse.jsonBody,
                                                                                                  r'''$.taxPercent''',
                                                                                                ),
                                                                                                checkInDate: _model.selectedFromToDates.first,
                                                                                                checkOutDate: _model.selectedFromToDates.last,
                                                                                                noOfBedrooms: MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bedrooms(
                                                                                                  containerPropertyDetailsResponse.jsonBody,
                                                                                                ),
                                                                                                noOfBeds: MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.beds(
                                                                                                  containerPropertyDetailsResponse.jsonBody,
                                                                                                ),
                                                                                                noOfBathrooms: MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bathRooms(
                                                                                                  containerPropertyDetailsResponse.jsonBody,
                                                                                                ),
                                                                                                nightPrice: functions.getPrice(
                                                                                                    functions.daysCalculation(_model.selectedFromToDates.toList()) > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 1,
                                                                                                    getJsonField(
                                                                                                      containerPropertyDetailsResponse.jsonBody,
                                                                                                      r'''$.totalPrice''',
                                                                                                    )),
                                                                                                taxPrice: functions.getPricePercentage(
                                                                                                    functions.getPrice(
                                                                                                        functions.daysCalculation(_model.selectedFromToDates.toList()) > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 1,
                                                                                                        getJsonField(
                                                                                                          containerPropertyDetailsResponse.jsonBody,
                                                                                                          r'''$.totalPrice''',
                                                                                                        )),
                                                                                                    getJsonField(
                                                                                                      containerPropertyDetailsResponse.jsonBody,
                                                                                                      r'''$.taxPercent''',
                                                                                                    )),
                                                                                                totalPrice: functions.getPriceTotal(
                                                                                                    functions.getPrice(
                                                                                                        functions.daysCalculation(_model.selectedFromToDates.toList()) > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 1,
                                                                                                        getJsonField(
                                                                                                          containerPropertyDetailsResponse.jsonBody,
                                                                                                          r'''$.totalPrice''',
                                                                                                        )),
                                                                                                    functions.getPricePercentage(
                                                                                                        functions.getPrice(
                                                                                                            functions.daysCalculation(_model.selectedFromToDates.toList()) > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 1,
                                                                                                            getJsonField(
                                                                                                              containerPropertyDetailsResponse.jsonBody,
                                                                                                              r'''$.totalPrice''',
                                                                                                            )),
                                                                                                        getJsonField(
                                                                                                          containerPropertyDetailsResponse.jsonBody,
                                                                                                          r'''$.taxPercent''',
                                                                                                        ))),
                                                                                                noOfStayingDaysCount: functions.daysCalculation(_model.selectedFromToDates.toList()) > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 1,
                                                                                              );
                                                                                              setState(() {});
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                ].divide(SizedBox(height: 10.0)),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            10.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                12.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                  child: Text(
                                                                                    'Amenities',
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Work Sans',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      fontSize: 18.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 14.0, 55.0, 0.0),
                                                                                  child: Builder(
                                                                                    builder: (context) {
                                                                                      final amenitiess = functions
                                                                                              .listMapConversion(getJsonField(
                                                                                                containerPropertyDetailsResponse.jsonBody,
                                                                                                r'''$.amenities''',
                                                                                              ).toString())
                                                                                              ?.toList() ??
                                                                                          [];
                                                                                      return GridView.builder(
                                                                                        padding: EdgeInsets.zero,
                                                                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                                                          crossAxisCount: 3,
                                                                                          mainAxisSpacing: 10.0,
                                                                                          childAspectRatio: 6.0,
                                                                                        ),
                                                                                        shrinkWrap: true,
                                                                                        scrollDirection: Axis.vertical,
                                                                                        itemCount: amenitiess.length,
                                                                                        itemBuilder: (context, amenitiessIndex) {
                                                                                          final amenitiessItem = amenitiess[amenitiessIndex];
                                                                                          return Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                                            children: [
                                                                                              Container(
                                                                                                width: 8.0,
                                                                                                height: 8.0,
                                                                                                decoration: BoxDecoration(
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                  shape: BoxShape.circle,
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(7.0, 0.0, 0.0, 0.0),
                                                                                                child: Container(
                                                                                                  decoration: BoxDecoration(
                                                                                                    color: Color(0xFFF5F5F5),
                                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                                  ),
                                                                                                  child: Text(
                                                                                                    getJsonField(
                                                                                                      amenitiessItem,
                                                                                                      r'''$.name''',
                                                                                                    ).toString(),
                                                                                                    style: GoogleFonts.getFont(
                                                                                                      'Work Sans',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                      fontSize: 16.0,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          );
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            55.0,
                                                                            0.0),
                                                                        child:
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                12.0,
                                                                                0.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.min,
                                                                              children: [
                                                                                Align(
                                                                                  alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                  child: Text(
                                                                                    'House Rules',
                                                                                    textAlign: TextAlign.start,
                                                                                    style: GoogleFonts.getFont(
                                                                                      'Work Sans',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      fontWeight: FontWeight.bold,
                                                                                      fontSize: 18.0,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Wrap(
                                                                                  spacing: 20.0,
                                                                                  runSpacing: 30.0,
                                                                                  alignment: WrapAlignment.start,
                                                                                  crossAxisAlignment: WrapCrossAlignment.start,
                                                                                  direction: Axis.horizontal,
                                                                                  runAlignment: WrapAlignment.start,
                                                                                  verticalDirection: VerticalDirection.down,
                                                                                  clipBehavior: Clip.antiAlias,
                                                                                  children: [
                                                                                    Row(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                      children: [
                                                                                        Expanded(
                                                                                          child: wrapWithModel(
                                                                                            model: _model.houseRuleCardModel1,
                                                                                            updateCallback: () => setState(() {}),
                                                                                            child: HouseRuleCardWidget(
                                                                                              ruleNumber: '01',
                                                                                              ruleHeading: 'Check In',
                                                                                              ruleDescription: 'From 12:00 PM',
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Expanded(
                                                                                          child: wrapWithModel(
                                                                                            model: _model.houseRuleCardModel2,
                                                                                            updateCallback: () => setState(() {}),
                                                                                            child: HouseRuleCardWidget(
                                                                                              ruleNumber: '02',
                                                                                              ruleHeading: 'Check Out',
                                                                                              ruleDescription: 'From 11:00 AM',
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                    Container(
                                                                                      height: 45.0,
                                                                                      decoration: BoxDecoration(),
                                                                                      child: wrapWithModel(
                                                                                        model: _model.houseRuleCardModel3,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: HouseRuleCardWidget(
                                                                                          ruleNumber: '03',
                                                                                          ruleHeading: 'Smoking',
                                                                                          ruleDescription: 'Smoking is not allowed.',
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      height: 45.0,
                                                                                      decoration: BoxDecoration(),
                                                                                      child: wrapWithModel(
                                                                                        model: _model.houseRuleCardModel4,
                                                                                        updateCallback: () => setState(() {}),
                                                                                        child: HouseRuleCardWidget(
                                                                                          ruleNumber: '04',
                                                                                          ruleHeading: 'Parties',
                                                                                          ruleDescription: 'Parties/events are not allowed.',
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    Align(
                                                                                      alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                      child: Padding(
                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                                                                                        child: wrapWithModel(
                                                                                          model: _model.houseRuleCardModel5,
                                                                                          updateCallback: () => setState(() {}),
                                                                                          child: HouseRuleCardWidget(
                                                                                            ruleNumber: '05',
                                                                                            ruleHeading: 'Cancellation/prepayment',
                                                                                            ruleDescription: 'Cancellation and prepayment policies vary according to apartment type. Please check the apartment conditions when selecting your apartment above.',
                                                                                          ),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(height: 20.0)),
                                                                            ),
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
                                                      if ((_model.tabs ==
                                                              'Reviews') &&
                                                          responsiveVisibility(
                                                            context: context,
                                                            phone: false,
                                                          ))
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      24.0,
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
                                                                'User Reviews',
                                                                style:
                                                                    GoogleFonts
                                                                        .getFont(
                                                                  'Work Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600,
                                                                  fontSize:
                                                                      20.0,
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                child: Text(
                                                                  '${getJsonField(
                                                                    containerPropertyDetailsResponse
                                                                        .jsonBody,
                                                                    r'''$.totalReviews''',
                                                                  ).toString()} reviews',
                                                                  style: GoogleFonts
                                                                      .getFont(
                                                                    'Work Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryText,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        18.0,
                                                                  ),
                                                                ),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Flexible(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          24.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child: PagedGridView<
                                                                          ApiPagingParams,
                                                                          dynamic>(
                                                                        pagingController:
                                                                            _model.setGridViewController2(
                                                                          (nextPageMarker) => MicroserviceRatingReviewAPIsGroup
                                                                              .reviewsRatingsCall
                                                                              .call(
                                                                            articleId:
                                                                                _model.propertyId?.toString(),
                                                                            pageSize:
                                                                                8,
                                                                          ),
                                                                        ),
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        gridDelegate:
                                                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                                          crossAxisCount:
                                                                              2,
                                                                          crossAxisSpacing:
                                                                              24.0,
                                                                          mainAxisSpacing:
                                                                              24.0,
                                                                          childAspectRatio:
                                                                              2.0,
                                                                        ),
                                                                        primary:
                                                                            false,
                                                                        shrinkWrap:
                                                                            true,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        builderDelegate:
                                                                            PagedChildBuilderDelegate<dynamic>(
                                                                          // Customize what your widget looks like when it's loading the first page.
                                                                          firstPageProgressIndicatorBuilder: (_) =>
                                                                              Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 40.0,
                                                                              height: 40.0,
                                                                              child: SpinKitPulse(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 40.0,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          // Customize what your widget looks like when it's loading another page.
                                                                          newPageProgressIndicatorBuilder: (_) =>
                                                                              Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 40.0,
                                                                              height: 40.0,
                                                                              child: SpinKitPulse(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                size: 40.0,
                                                                              ),
                                                                            ),
                                                                          ),

                                                                          itemBuilder: (context,
                                                                              _,
                                                                              ratingReviewDataIndex) {
                                                                            final ratingReviewDataItem =
                                                                                _model.gridViewPagingController2!.itemList![ratingReviewDataIndex];
                                                                            return NewUserReviewsWidget(
                                                                              key: Key('Key7ox_${ratingReviewDataIndex}_of_${_model.gridViewPagingController2!.itemList!.length}'),
                                                                              userName: getJsonField(
                                                                                ratingReviewDataItem,
                                                                                r'''$.userName''',
                                                                              ).toString(),
                                                                              score: getJsonField(
                                                                                ratingReviewDataItem,
                                                                                r'''$.score''',
                                                                              ),
                                                                              comments: getJsonField(
                                                                                ratingReviewDataItem,
                                                                                r'''$.comments''',
                                                                              ).toString(),
                                                                              createdDate: getJsonField(
                                                                                ratingReviewDataItem,
                                                                                r'''$.createdDate''',
                                                                              ).toString(),
                                                                            );
                                                                          },
                                                                        ),
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
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                15.0, 0.0),
                                                    child: Container(
                                                      width: MediaQuery.sizeOf(
                                                                  context)
                                                              .width *
                                                          0.25,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0x4CE8E7FF),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(16.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                      ),
                                                      child: wrapWithModel(
                                                        model: _model
                                                            .newReviewCardModel2,
                                                        updateCallback: () =>
                                                            setState(() {}),
                                                        child:
                                                            NewReviewCardWidget(
                                                          isPropertyDetailView:
                                                              true,
                                                        ),
                                                      ),
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
                              },
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
    );
  }
}
