import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/luxary_homes/homepage_new_web_screens/new_explore_property_card/new_explore_property_card_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_top_bar/new_top_bar_widget.dart';
import '/luxary_homes/homepage_new_web_screens/new_user_reviews/new_user_reviews_widget.dart';
import '/luxary_homes/users/house_rule_card/house_rule_card_widget.dart';
import '/luxary_homes/users/reserve_card/reserve_card_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
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
import 'new_explorepage_model.dart';
export 'new_explorepage_model.dart';

class NewExplorepageWidget extends StatefulWidget {
  const NewExplorepageWidget({super.key});

  @override
  State<NewExplorepageWidget> createState() => _NewExplorepageWidgetState();
}

class _NewExplorepageWidgetState extends State<NewExplorepageWidget> {
  late NewExplorepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewExplorepageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().searchDates.length > 0) {
        setState(() {
          _model.selectedFromToDates =
              FFAppState().searchDates.toList().cast<DateTime>();
        });
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
                wrapWithModel(
                  model: _model.newTopBarModel,
                  updateCallback: () => setState(() {}),
                  child: NewTopBarWidget(
                    showSearchFilter: false,
                  ),
                ),
                Flexible(
                  child: SingleChildScrollView(
                    primary: false,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  24.0, 0.0, 0.0, 0.0),
                                          child: Container(
                                            width: MediaQuery.sizeOf(context)
                                                    .width *
                                                0.25,
                                            decoration: BoxDecoration(),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    FlutterFlowIconButton(
                                                      borderColor:
                                                          Colors.transparent,
                                                      borderRadius: 36.0,
                                                      buttonSize: 36.0,
                                                      fillColor:
                                                          Color(0x4DBBD1EA),
                                                      icon: Icon(
                                                        Icons.chevron_left,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        size: 20.0,
                                                      ),
                                                      onPressed: () async {
                                                        context.safePop();
                                                      },
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'HOME',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Work Sans',
                                                          color:
                                                              Color(0xFF000D3E),
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 14.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 18.0, 0.0, 0.0),
                                                  child: Container(
                                                    height: MediaQuery.sizeOf(
                                                                context)
                                                            .height *
                                                        1.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .primaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsets.all(8.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            height: 40.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: Color(
                                                                  0xFFF6F7FA),
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .all(7.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  ClipRRect(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                    child: SvgPicture
                                                                        .asset(
                                                                      'assets/images/uil_search.svg',
                                                                      width:
                                                                          23.0,
                                                                      height:
                                                                          23.0,
                                                                      fit: BoxFit
                                                                          .contain,
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          6.0),
                                                                      child:
                                                                          TextFormField(
                                                                        controller:
                                                                            _model.textController,
                                                                        focusNode:
                                                                            _model.textFieldFocusNode,
                                                                        autofocus:
                                                                            false,
                                                                        obscureText:
                                                                            false,
                                                                        decoration:
                                                                            InputDecoration(
                                                                          hintText:
                                                                              'Search by property',
                                                                          hintStyle:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                Color(0xFFA0A7AF),
                                                                            fontSize:
                                                                                14.0,
                                                                          ),
                                                                          enabledBorder:
                                                                              InputBorder.none,
                                                                          focusedBorder:
                                                                              InputBorder.none,
                                                                          errorBorder:
                                                                              InputBorder.none,
                                                                          focusedErrorBorder:
                                                                              InputBorder.none,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                        textAlign:
                                                                            TextAlign.start,
                                                                        maxLines:
                                                                            null,
                                                                        maxLength:
                                                                            50,
                                                                        maxLengthEnforcement:
                                                                            MaxLengthEnforcement.enforced,
                                                                        buildCounter: (context,
                                                                                {required currentLength,
                                                                                required isFocused,
                                                                                maxLength}) =>
                                                                            null,
                                                                        validator: _model
                                                                            .textControllerValidator
                                                                            .asValidator(context),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryBackground,
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              4.0),
                                                                      border:
                                                                          Border
                                                                              .all(
                                                                        color: Color(
                                                                            0xFFA0A7AF),
                                                                      ),
                                                                    ),
                                                                    child:
                                                                        Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          20.0,
                                                                          5.0,
                                                                          20.0,
                                                                          5.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceEvenly,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                8.0,
                                                                                0.0),
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: SvgPicture.asset(
                                                                                'assets/images/icon.svg',
                                                                                width: 12.0,
                                                                                height: 12.0,
                                                                                fit: BoxFit.contain,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Filter',
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              fontWeight: FontWeight.w500,
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
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
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
                                                                    text: '132',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: Color(
                                                                          0xFF475569),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          16.0,
                                                                    ),
                                                                  ),
                                                                  TextSpan(
                                                                    text:
                                                                        '  SID Luxury Homes Stays',
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: Color(
                                                                          0xFF475569),
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          16.0,
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
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Color(
                                                                    0xFFF2F2F2),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            5.0,
                                                                            5.0,
                                                                            5.0),
                                                                child:
                                                                    RefreshIndicator(
                                                                  onRefresh:
                                                                      () async {
                                                                    setState(() => _model
                                                                        .listViewPagingController
                                                                        ?.refresh());
                                                                    await _model
                                                                        .waitForOnePageForListView();
                                                                  },
                                                                  child: PagedListView<
                                                                      ApiPagingParams,
                                                                      dynamic>.separated(
                                                                    pagingController:
                                                                        _model
                                                                            .setListViewController(
                                                                      (nextPageMarker) => MicroserviceAvailabilityAPIsGroup
                                                                          .propertyListingsCall
                                                                          .call(
                                                                        pageLoadItemsCount:
                                                                            8,
                                                                        pageNoCount: functions.incrementOne(nextPageMarker.nextPageNumber) >=
                                                                                0
                                                                            ? (nextPageMarker.nextPageNumber +
                                                                                1)
                                                                            : -1,
                                                                      ),
                                                                    ),
                                                                    padding:
                                                                        EdgeInsets
                                                                            .zero,
                                                                    shrinkWrap:
                                                                        true,
                                                                    reverse:
                                                                        false,
                                                                    scrollDirection:
                                                                        Axis.vertical,
                                                                    separatorBuilder: (_,
                                                                            __) =>
                                                                        SizedBox(
                                                                            height:
                                                                                12.0),
                                                                    builderDelegate:
                                                                        PagedChildBuilderDelegate<
                                                                            dynamic>(
                                                                      // Customize what your widget looks like when it's loading the first page.
                                                                      firstPageProgressIndicatorBuilder:
                                                                          (_) =>
                                                                              Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              40.0,
                                                                          height:
                                                                              40.0,
                                                                          child:
                                                                              SpinKitPulse(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                40.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      // Customize what your widget looks like when it's loading another page.
                                                                      newPageProgressIndicatorBuilder:
                                                                          (_) =>
                                                                              Center(
                                                                        child:
                                                                            SizedBox(
                                                                          width:
                                                                              40.0,
                                                                          height:
                                                                              40.0,
                                                                          child:
                                                                              SpinKitPulse(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            size:
                                                                                40.0,
                                                                          ),
                                                                        ),
                                                                      ),

                                                                      itemBuilder:
                                                                          (context,
                                                                              _,
                                                                              listingsIndex) {
                                                                        final listingsItem = _model
                                                                            .listViewPagingController!
                                                                            .itemList![listingsIndex];
                                                                        return InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            setState(() {
                                                                              _model.articleId = getJsonField(
                                                                                listingsItem,
                                                                                r'''$.articleId''',
                                                                              ).toString();
                                                                            });
                                                                          },
                                                                          child:
                                                                              NewExplorePropertyCardWidget(
                                                                            key:
                                                                                Key('Keyc4a_${listingsIndex}_of_${_model.listViewPagingController!.itemList!.length}'),
                                                                            price:
                                                                                getJsonField(
                                                                              listingsItem,
                                                                              r'''$.basePrice''',
                                                                            ),
                                                                            propertyType:
                                                                                getJsonField(
                                                                              listingsItem,
                                                                              r'''$.propertyType''',
                                                                            ).toString(),
                                                                            locality:
                                                                                getJsonField(
                                                                              listingsItem,
                                                                              r'''$.locality''',
                                                                            ).toString(),
                                                                            city:
                                                                                getJsonField(
                                                                              listingsItem,
                                                                              r'''$.city''',
                                                                            ).toString(),
                                                                            averageRating:
                                                                                getJsonField(
                                                                              listingsItem,
                                                                              r'''$.averageRating''',
                                                                            ),
                                                                            articleId:
                                                                                getJsonField(
                                                                              listingsItem,
                                                                              r'''$.articleId''',
                                                                            ).toString(),
                                                                            imageList:
                                                                                functions.listDataConversion(getJsonField(
                                                                              listingsItem,
                                                                              r'''$.imageURLs''',
                                                                            ).toString()),
                                                                          ),
                                                                        );
                                                                      },
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
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 24.0, 0.0),
                                            child: Container(
                                              decoration: BoxDecoration(),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 0.0, 0.0),
                                                child: FutureBuilder<
                                                    ApiCallResponse>(
                                                  future:
                                                      MicroserviceAvailabilityAPIsGroup
                                                          .propertyDetailsCall
                                                          .call(
                                                    articleID: _model.articleId,
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
                                                    final columnPropertyDetailsResponse =
                                                        snapshot.data!;
                                                    return SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        24.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Material(
                                                                    color: Colors
                                                                        .transparent,
                                                                    elevation:
                                                                        0.5,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.0),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      width: MediaQuery.sizeOf(context)
                                                                              .width *
                                                                          0.3,
                                                                      height: MediaQuery.sizeOf(context)
                                                                              .height *
                                                                          0.38,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryBackground,
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      child:
                                                                          ClipRRect(
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                        child: Image
                                                                            .network(
                                                                          functions
                                                                              .initImg(
                                                                                  functions
                                                                                      .listDataConversion(MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.imgesUrls(
                                                                                        columnPropertyDetailsResponse.jsonBody,
                                                                                      ))
                                                                                      ?.toList(),
                                                                                  FFAppState().BaseUrl)!
                                                                              .first,
                                                                          width:
                                                                              MediaQuery.sizeOf(context).width * 0.3,
                                                                          height:
                                                                              MediaQuery.sizeOf(context).height * 0.38,
                                                                          fit: BoxFit
                                                                              .cover,
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
                                                                              .listDataConversion(MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.imgesUrls(
                                                                                columnPropertyDetailsResponse.jsonBody,
                                                                              ))
                                                                              ?.toList(),
                                                                          FFAppState().BaseUrl)
                                                                      ?.toList() ??
                                                                  [];
                                                              return SingleChildScrollView(
                                                                scrollDirection:
                                                                    Axis.horizontal,
                                                                child: Row(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: List.generate(
                                                                      imagesList
                                                                          .length,
                                                                      (imagesListIndex) {
                                                                    final imagesListItem =
                                                                        imagesList[
                                                                            imagesListIndex];
                                                                    return Material(
                                                                      color: Colors
                                                                          .transparent,
                                                                      elevation:
                                                                          0.5,
                                                                      shape:
                                                                          RoundedRectangleBorder(
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      child:
                                                                          Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryBackground,
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                        ),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(12.0),
                                                                          child:
                                                                              Image.network(
                                                                            imagesListItem,
                                                                            width:
                                                                                100.0,
                                                                            height:
                                                                                100.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    );
                                                                  }).divide(
                                                                      SizedBox(
                                                                          width:
                                                                              15.0)),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              decoration:
                                                                  BoxDecoration(),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            16.0,
                                                                            8.0,
                                                                            16.0),
                                                                        child:
                                                                            Text(
                                                                          'Property Information',
                                                                          style:
                                                                              GoogleFonts.getFont(
                                                                            'Work Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                            fontSize:
                                                                                14.0,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      if (_model
                                                                              .tabs ==
                                                                          'PropertyInformation')
                                                                        Container(
                                                                          width:
                                                                              155.0,
                                                                          height:
                                                                              3.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primary,
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            24.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding:
                                                                              EdgeInsets.all(16.0),
                                                                          child:
                                                                              Text(
                                                                            'Reviews',
                                                                            style:
                                                                                GoogleFonts.getFont(
                                                                              'Work Sans',
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                              fontWeight: FontWeight.w500,
                                                                              fontSize: 14.0,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        if (_model.tabs ==
                                                                            'Reviews')
                                                                          Container(
                                                                            width:
                                                                                70.0,
                                                                            height:
                                                                                3.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                          ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Divider(
                                                            height: 1.0,
                                                            thickness: 2.0,
                                                            color: Color(
                                                                0xFFE2E8F0),
                                                          ),
                                                          if (_model.tabs ==
                                                              'PropertyInformation')
                                                            Wrap(
                                                              spacing: 0.0,
                                                              runSpacing: 0.0,
                                                              alignment:
                                                                  WrapAlignment
                                                                      .end,
                                                              crossAxisAlignment:
                                                                  WrapCrossAlignment
                                                                      .end,
                                                              direction: Axis
                                                                  .horizontal,
                                                              runAlignment:
                                                                  WrapAlignment
                                                                      .end,
                                                              verticalDirection:
                                                                  VerticalDirection
                                                                      .up,
                                                              clipBehavior:
                                                                  Clip.none,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          0.0,
                                                                          0.0,
                                                                          40.0),
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
                                                                            Container(
                                                                          decoration:
                                                                              BoxDecoration(),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.start,
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.start,
                                                                            children: [
                                                                              Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  width: double.infinity,
                                                                                  decoration: BoxDecoration(),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
                                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                                      children: [
                                                                                        Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          children: [
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(-1.0, -1.0),
                                                                                              child: Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 10.0, 0.0),
                                                                                                child: Text(
                                                                                                  'SID Luxury Homes',
                                                                                                  style: GoogleFonts.getFont(
                                                                                                    'Work Sans',
                                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                                    fontSize: 24.0,
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            SizedBox(
                                                                                              height: 20.0,
                                                                                              child: VerticalDivider(
                                                                                                width: 1.43,
                                                                                                thickness: 1.0,
                                                                                                color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                              ),
                                                                                            ),
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
                                                                                                      columnPropertyDetailsResponse.jsonBody,
                                                                                                      r'''$.averageRatings''',
                                                                                                    ),
                                                                                                    unratedColor: FlutterFlowTheme.of(context).accent3,
                                                                                                    itemCount: 5,
                                                                                                    itemSize: 20.0,
                                                                                                    glowColor: FlutterFlowTheme.of(context).tertiary,
                                                                                                  ),
                                                                                                  Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(6.0, 0.0, 0.0, 0.0),
                                                                                                    child: Text(
                                                                                                      '(${getJsonField(
                                                                                                        columnPropertyDetailsResponse.jsonBody,
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
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
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
                                                                                                height: 20.0,
                                                                                                child: VerticalDivider(
                                                                                                  width: 1.43,
                                                                                                  thickness: 1.0,
                                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                                ),
                                                                                              ),
                                                                                              Flexible(
                                                                                                child: Padding(
                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
                                                                                                  child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    children: [
                                                                                                      Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.min,
                                                                                                          children: [
                                                                                                            ClipRRect(
                                                                                                              borderRadius: BorderRadius.circular(0.0),
                                                                                                              child: SvgPicture.asset(
                                                                                                                'assets/images/map_location_dot.svg',
                                                                                                                width: 18.0,
                                                                                                                height: 16.0,
                                                                                                                fit: BoxFit.contain,
                                                                                                              ),
                                                                                                            ),
                                                                                                            Text(
                                                                                                              'Secundrebad',
                                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                    fontFamily: 'Poppins',
                                                                                                                    fontSize: 14.0,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FontWeight.w500,
                                                                                                                  ),
                                                                                                            ),
                                                                                                          ].divide(SizedBox(width: 5.0)),
                                                                                                        ),
                                                                                                      ),
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
                                                                                                              style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                                    fontFamily: 'Poppins',
                                                                                                                    fontSize: 14.0,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                    fontWeight: FontWeight.w500,
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
                                                                                                          children: [
                                                                                                            Container(
                                                                                                              width: 10.0,
                                                                                                              height: 10.0,
                                                                                                              decoration: BoxDecoration(
                                                                                                                color: FlutterFlowTheme.of(context).primaryText,
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
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                                                                                                                  child: Text(
                                                                                                                    '4 bedroom',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Poppins',
                                                                                                                          fontSize: 16.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                        ),
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
                                                                                                                color: FlutterFlowTheme.of(context).primaryText,
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
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                                                                                                                  child: Text(
                                                                                                                    '12 beds',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Poppins',
                                                                                                                          fontSize: 16.0,
                                                                                                                          letterSpacing: 0.0,
                                                                                                                        ),
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
                                                                                                                color: FlutterFlowTheme.of(context).primaryText,
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
                                                                                                                child: Padding(
                                                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
                                                                                                                  child: Text(
                                                                                                                    '3bathrooms',
                                                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                          fontFamily: 'Poppins',
                                                                                                                          fontSize: 16.0,
                                                                                                                          letterSpacing: 0.0,
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
                                                                                                        text: 'Sundarban road',
                                                                                                        style: TextStyle(),
                                                                                                      ),
                                                                                                      TextSpan(
                                                                                                        text: ', ',
                                                                                                        style: TextStyle(),
                                                                                                      ),
                                                                                                      TextSpan(
                                                                                                        text: 'Katedan',
                                                                                                        style: TextStyle(),
                                                                                                      ),
                                                                                                      TextSpan(
                                                                                                        text: ', ',
                                                                                                        style: TextStyle(),
                                                                                                      ),
                                                                                                      TextSpan(
                                                                                                        text: 'Secundrebad',
                                                                                                        style: TextStyle(),
                                                                                                      ),
                                                                                                      TextSpan(
                                                                                                        text: ', ',
                                                                                                        style: TextStyle(),
                                                                                                      ),
                                                                                                      TextSpan(
                                                                                                        text: 'Telangana',
                                                                                                        style: TextStyle(),
                                                                                                      ),
                                                                                                      TextSpan(
                                                                                                        text: ', ',
                                                                                                        style: TextStyle(),
                                                                                                      ),
                                                                                                      TextSpan(
                                                                                                        text: '500077',
                                                                                                        style: TextStyle(),
                                                                                                      ),
                                                                                                      TextSpan(
                                                                                                        text: ', ',
                                                                                                        style: TextStyle(),
                                                                                                      ),
                                                                                                      TextSpan(
                                                                                                        text: 'India',
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
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 18.0, 0.0, 0.0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Text(
                                                                                                'Near by Locations',
                                                                                                style: GoogleFonts.getFont(
                                                                                                  'Work Sans',
                                                                                                  color: Color(0xFFB6BFE0),
                                                                                                  fontWeight: FontWeight.w500,
                                                                                                  fontSize: 16.0,
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                          child: Row(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                  children: [
                                                                                                    ClipRRect(
                                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                                      child: Image.asset(
                                                                                                        'assets/images/airport.png',
                                                                                                        width: 30.0,
                                                                                                        height: 30.0,
                                                                                                        fit: BoxFit.contain,
                                                                                                      ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      'Airport (6km)',
                                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                            fontFamily: 'Poppins',
                                                                                                            fontSize: 14.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.w500,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ].divide(SizedBox(width: 5.0)),
                                                                                                ),
                                                                                              ),
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(18.0, 0.0, 8.0, 0.0),
                                                                                                child: Row(
                                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                                  children: [
                                                                                                    ClipRRect(
                                                                                                      borderRadius: BorderRadius.circular(0.0),
                                                                                                      child: SvgPicture.asset(
                                                                                                        'assets/images/bus.svg',
                                                                                                        width: 30.0,
                                                                                                        height: 30.0,
                                                                                                        fit: BoxFit.contain,
                                                                                                      ),
                                                                                                    ),
                                                                                                    Text(
                                                                                                      'Public Transport (0.5km)',
                                                                                                      style: FlutterFlowTheme.of(context).bodyLarge.override(
                                                                                                            fontFamily: 'Poppins',
                                                                                                            fontSize: 14.0,
                                                                                                            letterSpacing: 0.0,
                                                                                                            fontWeight: FontWeight.w500,
                                                                                                          ),
                                                                                                    ),
                                                                                                  ].divide(SizedBox(width: 5.0)),
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
                                                                              if (responsiveVisibility(
                                                                                context: context,
                                                                                phone: false,
                                                                                tablet: false,
                                                                                tabletLandscape: false,
                                                                              ))
                                                                                Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                  child: Container(
                                                                                    decoration: BoxDecoration(),
                                                                                    child: Padding(
                                                                                      padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
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
                                                                                                fontSize: 20.0,
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
                                                                                                    columnPropertyDetailsResponse.jsonBody,
                                                                                                    r'''$.availableFrom''',
                                                                                                  ).toString(),
                                                                                                  propBookedDates: getJsonField(
                                                                                                    columnPropertyDetailsResponse.jsonBody,
                                                                                                    r'''$.bookedDates''',
                                                                                                  ).toString(),
                                                                                                  onChangeAction: () async {
                                                                                                    setState(() {
                                                                                                      _model.selectedFromToDates = FFAppState().selectedDateRange.toList().cast<DateTime>();
                                                                                                    });
                                                                                                    setState(() {
                                                                                                      FFAppState().bookingDetails = BookingDetailsStruct(
                                                                                                        propTitle: MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.title(
                                                                                                          columnPropertyDetailsResponse.jsonBody,
                                                                                                        ),
                                                                                                        propLocality: MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.locality(
                                                                                                          columnPropertyDetailsResponse.jsonBody,
                                                                                                        ),
                                                                                                        propCity: MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.city(
                                                                                                          columnPropertyDetailsResponse.jsonBody,
                                                                                                        ),
                                                                                                        propBasePrice: MicroserviceAvailabilityAPIsGroup.propertyDetailsCall
                                                                                                            .basePrice(
                                                                                                              columnPropertyDetailsResponse.jsonBody,
                                                                                                            )
                                                                                                            ?.toDouble(),
                                                                                                        guestsCount: _model.reserveCardModel.guestsCount,
                                                                                                        taxPercentage: getJsonField(
                                                                                                          columnPropertyDetailsResponse.jsonBody,
                                                                                                          r'''$.taxPercent''',
                                                                                                        ),
                                                                                                        checkInDate: _model.selectedFromToDates.first,
                                                                                                        checkOutDate: _model.selectedFromToDates.last,
                                                                                                        noOfBedrooms: MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bedrooms(
                                                                                                          columnPropertyDetailsResponse.jsonBody,
                                                                                                        ),
                                                                                                        noOfBeds: MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.beds(
                                                                                                          columnPropertyDetailsResponse.jsonBody,
                                                                                                        ),
                                                                                                        noOfBathrooms: MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.bathRooms(
                                                                                                          columnPropertyDetailsResponse.jsonBody,
                                                                                                        ),
                                                                                                        nightPrice: functions.getPrice(
                                                                                                            functions.daysCalculation(_model.selectedFromToDates.toList()) > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 1,
                                                                                                            MicroserviceAvailabilityAPIsGroup.propertyDetailsCall
                                                                                                                .basePrice(
                                                                                                                  columnPropertyDetailsResponse.jsonBody,
                                                                                                                )!
                                                                                                                .toDouble()),
                                                                                                        taxPrice: functions.getPricePercentage(
                                                                                                            functions.getPrice(
                                                                                                                functions.daysCalculation(_model.selectedFromToDates.toList()) > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 1,
                                                                                                                MicroserviceAvailabilityAPIsGroup.propertyDetailsCall
                                                                                                                    .basePrice(
                                                                                                                      columnPropertyDetailsResponse.jsonBody,
                                                                                                                    )!
                                                                                                                    .toDouble()),
                                                                                                            getJsonField(
                                                                                                              columnPropertyDetailsResponse.jsonBody,
                                                                                                              r'''$.taxPercent''',
                                                                                                            )),
                                                                                                        totalPrice: functions.getPriceTotal(
                                                                                                            functions.getPrice(
                                                                                                                functions.daysCalculation(_model.selectedFromToDates.toList()) > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 1,
                                                                                                                MicroserviceAvailabilityAPIsGroup.propertyDetailsCall
                                                                                                                    .basePrice(
                                                                                                                      columnPropertyDetailsResponse.jsonBody,
                                                                                                                    )!
                                                                                                                    .toDouble()),
                                                                                                            functions.getPricePercentage(
                                                                                                                functions.getPrice(
                                                                                                                    functions.daysCalculation(_model.selectedFromToDates.toList()) > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 1,
                                                                                                                    MicroserviceAvailabilityAPIsGroup.propertyDetailsCall
                                                                                                                        .basePrice(
                                                                                                                          columnPropertyDetailsResponse.jsonBody,
                                                                                                                        )!
                                                                                                                        .toDouble()),
                                                                                                                getJsonField(
                                                                                                                  columnPropertyDetailsResponse.jsonBody,
                                                                                                                  r'''$.taxPercent''',
                                                                                                                ))),
                                                                                                        noOfStayingDaysCount: functions.daysCalculation(_model.selectedFromToDates.toList()) > 0 ? functions.daysCalculation(_model.selectedFromToDates.toList()) : 1,
                                                                                                      );
                                                                                                    });
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
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12.0, 24.0, 12.0, 0.0),
                                                                                    child: Column(
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
                                                                                              fontSize: 20.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                          child: Builder(
                                                                                            builder: (context) {
                                                                                              final amenitiess = functions
                                                                                                      .listMapConversion(getJsonField(
                                                                                                        columnPropertyDetailsResponse.jsonBody,
                                                                                                        r'''$.amenities''',
                                                                                                      ).toString())
                                                                                                      ?.toList() ??
                                                                                                  [];
                                                                                              return GridView.builder(
                                                                                                padding: EdgeInsets.zero,
                                                                                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                                                                  crossAxisCount: 3,
                                                                                                  childAspectRatio: 6.0,
                                                                                                ),
                                                                                                shrinkWrap: true,
                                                                                                scrollDirection: Axis.vertical,
                                                                                                itemCount: amenitiess.length,
                                                                                                itemBuilder: (context, amenitiessIndex) {
                                                                                                  final amenitiessItem = amenitiess[amenitiessIndex];
                                                                                                  return Row(
                                                                                                    mainAxisSize: MainAxisSize.min,
                                                                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                                                                    children: [
                                                                                                      Container(
                                                                                                        width: 8.0,
                                                                                                        height: 8.0,
                                                                                                        decoration: BoxDecoration(
                                                                                                          color: FlutterFlowTheme.of(context).primaryText,
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
                                                                                                          child: Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 10.0, 4.0),
                                                                                                            child: Text(
                                                                                                              getJsonField(
                                                                                                                amenitiessItem,
                                                                                                                r'''$.name''',
                                                                                                              ).toString(),
                                                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                                    fontFamily: 'Poppins',
                                                                                                                    fontSize: 16.0,
                                                                                                                    letterSpacing: 0.0,
                                                                                                                  ),
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
                                                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                                                                                child: Container(
                                                                                  decoration: BoxDecoration(),
                                                                                  child: Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
                                                                                    child: Column(
                                                                                      mainAxisSize: MainAxisSize.max,
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
                                                                                              fontSize: 20.0,
                                                                                            ),
                                                                                          ),
                                                                                        ),
                                                                                        if (responsiveVisibility(
                                                                                          context: context,
                                                                                          desktop: false,
                                                                                        ))
                                                                                          Align(
                                                                                            alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                            child: Container(
                                                                                              width: double.infinity,
                                                                                              constraints: BoxConstraints(
                                                                                                maxWidth: 800.0,
                                                                                              ),
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Wrap(
                                                                                                spacing: 20.0,
                                                                                                runSpacing: 30.0,
                                                                                                alignment: WrapAlignment.start,
                                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                                direction: Axis.horizontal,
                                                                                                runAlignment: WrapAlignment.start,
                                                                                                verticalDirection: VerticalDirection.down,
                                                                                                clipBehavior: Clip.antiAlias,
                                                                                                children: [
                                                                                                  wrapWithModel(
                                                                                                    model: _model.houseRuleCardModel1,
                                                                                                    updateCallback: () => setState(() {}),
                                                                                                    child: HouseRuleCardWidget(
                                                                                                      ruleNumber: '01',
                                                                                                      ruleHeading: 'Check In',
                                                                                                      ruleDescription: 'From 12:00 PM',
                                                                                                    ),
                                                                                                  ),
                                                                                                  wrapWithModel(
                                                                                                    model: _model.houseRuleCardModel2,
                                                                                                    updateCallback: () => setState(() {}),
                                                                                                    child: HouseRuleCardWidget(
                                                                                                      ruleNumber: '02',
                                                                                                      ruleHeading: 'Check Out',
                                                                                                      ruleDescription: 'From 11:00 AM',
                                                                                                    ),
                                                                                                  ),
                                                                                                  wrapWithModel(
                                                                                                    model: _model.houseRuleCardModel3,
                                                                                                    updateCallback: () => setState(() {}),
                                                                                                    child: HouseRuleCardWidget(
                                                                                                      ruleNumber: '03',
                                                                                                      ruleHeading: 'Smoking',
                                                                                                      ruleDescription: 'Smoking is not allowed.',
                                                                                                    ),
                                                                                                  ),
                                                                                                  wrapWithModel(
                                                                                                    model: _model.houseRuleCardModel4,
                                                                                                    updateCallback: () => setState(() {}),
                                                                                                    child: HouseRuleCardWidget(
                                                                                                      ruleNumber: '04',
                                                                                                      ruleHeading: 'Parties',
                                                                                                      ruleDescription: 'Parties/events are not allowed.',
                                                                                                    ),
                                                                                                  ),
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(-1.0, 0.0),
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
                                                                                                ],
                                                                                              ),
                                                                                            ),
                                                                                          ),
                                                                                        if (responsiveVisibility(
                                                                                          context: context,
                                                                                          phone: false,
                                                                                          tablet: false,
                                                                                          tabletLandscape: false,
                                                                                        ))
                                                                                          Align(
                                                                                            alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                            child: Container(
                                                                                              width: double.infinity,
                                                                                              constraints: BoxConstraints(
                                                                                                maxWidth: 800.0,
                                                                                              ),
                                                                                              decoration: BoxDecoration(),
                                                                                              child: Wrap(
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
                                                                                                      Flexible(
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            wrapWithModel(
                                                                                                              model: _model.houseRuleCardModel6,
                                                                                                              updateCallback: () => setState(() {}),
                                                                                                              child: HouseRuleCardWidget(
                                                                                                                ruleNumber: '01',
                                                                                                                ruleHeading: 'Check In',
                                                                                                                ruleDescription: 'From 12:00 PM',
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Flexible(
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            wrapWithModel(
                                                                                                              model: _model.houseRuleCardModel7,
                                                                                                              updateCallback: () => setState(() {}),
                                                                                                              child: HouseRuleCardWidget(
                                                                                                                ruleNumber: '02',
                                                                                                                ruleHeading: 'Check Out',
                                                                                                                ruleDescription: 'From 11:00 AM',
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                    children: [
                                                                                                      Flexible(
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            wrapWithModel(
                                                                                                              model: _model.houseRuleCardModel8,
                                                                                                              updateCallback: () => setState(() {}),
                                                                                                              child: HouseRuleCardWidget(
                                                                                                                ruleNumber: '03',
                                                                                                                ruleHeading: 'Smoking',
                                                                                                                ruleDescription: 'Smoking is not allowed.',
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                      Flexible(
                                                                                                        child: Row(
                                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                                          children: [
                                                                                                            wrapWithModel(
                                                                                                              model: _model.houseRuleCardModel9,
                                                                                                              updateCallback: () => setState(() {}),
                                                                                                              child: HouseRuleCardWidget(
                                                                                                                ruleNumber: '04',
                                                                                                                ruleHeading: 'Parties',
                                                                                                                ruleDescription: 'Parties/events are not allowed.',
                                                                                                              ),
                                                                                                            ),
                                                                                                          ],
                                                                                                        ),
                                                                                                      ),
                                                                                                    ],
                                                                                                  ),
                                                                                                  Align(
                                                                                                    alignment: AlignmentDirectional(-1.0, 0.0),
                                                                                                    child: wrapWithModel(
                                                                                                      model: _model.houseRuleCardModel10,
                                                                                                      updateCallback: () => setState(() {}),
                                                                                                      child: HouseRuleCardWidget(
                                                                                                        ruleNumber: '05',
                                                                                                        ruleHeading: 'Cancellation/prepayment',
                                                                                                        ruleDescription: 'Cancellation and prepayment policies vary according to apartment type. Please check the apartment conditions when selecting your apartment above.',
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ],
                                                                                              ),
                                                                                            ),
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
                                                                        wrapWithModel(
                                                                          model:
                                                                              _model.reserveCardModel,
                                                                          updateCallback: () =>
                                                                              setState(() {}),
                                                                          child:
                                                                              ReserveCardWidget(
                                                                            priceValue: MicroserviceAvailabilityAPIsGroup.propertyDetailsCall
                                                                                .basePrice(
                                                                                  columnPropertyDetailsResponse.jsonBody,
                                                                                )!
                                                                                .toDouble(),
                                                                            noOfGuests:
                                                                                MicroserviceAvailabilityAPIsGroup.propertyDetailsCall.totalGuests(
                                                                              columnPropertyDetailsResponse.jsonBody,
                                                                            )!,
                                                                            selectedFromToDates:
                                                                                _model.selectedFromToDates,
                                                                            taxPercent:
                                                                                getJsonField(
                                                                              columnPropertyDetailsResponse.jsonBody,
                                                                              r'''$.taxPercent''',
                                                                            ),
                                                                            bedsCount:
                                                                                getJsonField(
                                                                              columnPropertyDetailsResponse.jsonBody,
                                                                              r'''$.beds''',
                                                                            ),
                                                                            bathroomsCount:
                                                                                getJsonField(
                                                                              columnPropertyDetailsResponse.jsonBody,
                                                                              r'''$.bathrooms''',
                                                                            ),
                                                                            bedroomsCount:
                                                                                getJsonField(
                                                                              columnPropertyDetailsResponse.jsonBody,
                                                                              r'''$.bedrooms''',
                                                                            ),
                                                                            locality:
                                                                                getJsonField(
                                                                              columnPropertyDetailsResponse.jsonBody,
                                                                              r'''$.locality''',
                                                                            ).toString(),
                                                                            city:
                                                                                getJsonField(
                                                                              columnPropertyDetailsResponse.jsonBody,
                                                                              r'''$.city''',
                                                                            ).toString(),
                                                                            title:
                                                                                getJsonField(
                                                                              columnPropertyDetailsResponse.jsonBody,
                                                                              r'''$.title''',
                                                                            ).toString(),
                                                                            articleid:
                                                                                _model.articleId!,
                                                                            propertyId:
                                                                                getJsonField(
                                                                              columnPropertyDetailsResponse.jsonBody,
                                                                              r'''$.propertyId''',
                                                                            ),
                                                                            propertyType:
                                                                                getJsonField(
                                                                              columnPropertyDetailsResponse.jsonBody,
                                                                              r'''$.propertyType''',
                                                                            ).toString(),
                                                                            isModifyBooking:
                                                                                false,
                                                                          ),
                                                                        ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          if (_model.tabs ==
                                                              'Reviews')
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
                                                                    style: GoogleFonts
                                                                        .getFont(
                                                                      'Work Sans',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          20.0,
                                                                    ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            8.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      '${getJsonField(
                                                                        columnPropertyDetailsResponse
                                                                            .jsonBody,
                                                                        r'''$.totalReviews''',
                                                                      ).toString()} reviews',
                                                                      style: GoogleFonts
                                                                          .getFont(
                                                                        'Work Sans',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontWeight:
                                                                            FontWeight.w600,
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
                                                                              (nextPageMarker) => MicroserviceRatingReviewAPIsGroup.reviewsRatingsCall.call(
                                                                                articleId: _model.articleId,
                                                                                pageNo: functions.incrementOne(nextPageMarker.nextPageNumber) >= 0 ? (nextPageMarker.nextPageNumber + 1) : -1,
                                                                                pageSize: 8,
                                                                              ),
                                                                            ),
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            gridDelegate:
                                                                                SliverGridDelegateWithFixedCrossAxisCount(
                                                                              crossAxisCount: 2,
                                                                              crossAxisSpacing: 24.0,
                                                                              mainAxisSpacing: 24.0,
                                                                              childAspectRatio: 2.0,
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
                                                                              firstPageProgressIndicatorBuilder: (_) => Center(
                                                                                child: SizedBox(
                                                                                  width: 40.0,
                                                                                  height: 40.0,
                                                                                  child: SpinKitPulse(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    size: 40.0,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              // Customize what your widget looks like when it's loading another page.
                                                                              newPageProgressIndicatorBuilder: (_) => Center(
                                                                                child: SizedBox(
                                                                                  width: 40.0,
                                                                                  height: 40.0,
                                                                                  child: SpinKitPulse(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    size: 40.0,
                                                                                  ),
                                                                                ),
                                                                              ),

                                                                              itemBuilder: (context, _, ratingReviewDataIndex) {
                                                                                final ratingReviewDataItem = _model.gridViewPagingController2!.itemList![ratingReviewDataIndex];
                                                                                return NewUserReviewsWidget(
                                                                                  key: Key('Keydqh_${ratingReviewDataIndex}_of_${_model.gridViewPagingController2!.itemList!.length}'),
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
                                                    );
                                                  },
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
      ),
    );
  }
}
